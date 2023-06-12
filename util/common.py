def parse_immediate_val(im):
    # checking 16th bit of signed im value and converting to negative
    # if the least significant bit is set
    if (im & 0x8000) > 0:
        im = im - (1 << 16)
    return im


def convert_to_unsigned(val):
    # converts to an unsigned value - 32 bit
    if val < 0:
        val += 1 << 32
    return val


def convert_to_signed(val):
    # converts to a signed value - 32 bit
    if val & 0x80000000:
        val -= 1 << 32
    return val


def get_nth_byte(val, pos):
    """
    Function to get the LSB or the 2nd or 3rd byte from left
    """
    eight_ones = (1 << 8) - 1
    ones_at_reqd_pos = eight_ones << (pos * 8)
    return (val & ones_at_reqd_pos) >> (pos * 8)


def replace_nth_byte(data, reqd_val, pos):
    """
    Function to add the reqd val at the given pos in the data
    """
    # first nullify the value at nth byte to 0
    eight_ones = (1 << 8) - 1
    ones_at_reqd_pos = eight_ones << (pos * 8)
    respective_and = (1 << 32) - ones_at_reqd_pos - 1
    data = data & respective_and
    # now adding the data at the reqd position
    respective_val = reqd_val << (pos * 8)
    ans = data | respective_val
    return ans


def get_int(memory_mapping, memory_loc):
    """
    Function to get the integer by reading up from the 4 byte addressed locations
    """
    ans = 0
    for pos in range(4):
        ans += memory_mapping[memory_loc + pos] << ((3 - pos) * 8)
    return ans
    # return memory_mapping[memory_loc]


def save_int(memory_mapping, memory_loc, value):
    """
    Function to save the integer by storing in the 4 byte addressed locations
    """
    # the value is stored in memory_loc 
    # print(f"Called to save - {value} at loc - {memory_loc}")
    for pos in range(4):
        memory_mapping[memory_loc + pos] = get_nth_byte(value, 3 - pos)
    #     print(f'Location - {memory_loc + pos}, value - {get_nth_byte(value, 3 - pos)}')
    # memory_mapping[memory_loc] = value


def get_chars_in_int(val):
    """
    Function to retrieve character conversion from a 4 byte integer
    """
    ans = []
    for pos in range(4):
        ans.append(chr(get_nth_byte(val, 3 - pos)))
    return ans
