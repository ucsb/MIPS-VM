# This script generates asm files in MIPS 32 architecture
import os


"""
Generates .asm file represented by output_file from C++ input_file  using clang cross compiler
"""
def generate_asm_file(input_file, output_file):
    status = os.system(
        f"clang++ -S -target mips -mcpu=mips32 -Wno-writable-strings {input_file} -o {output_file}"
    )
    if status == 0:
        # print(f"Successfully generated asm file for {input_file}")
        pass
    else:
        print(f"Error in generating asm file for {input_file}")

"""
Traverses the directory input_dir and converts every C++ file to asm file under the output_dir 
"""
def generate_asm_files(input_dir="examples/easy", output_dir="tests/easy"):
    # Note: This won't generate files recursively
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    input_dir = os.path.abspath(input_dir)
    output_dir = os.path.abspath(output_dir)

    for file in os.listdir(input_dir):
        input_file = os.path.join(input_dir, file)
        output_file = os.path.join(output_dir, "auto_" + file.replace(".cpp", ".asm"))
        generate_asm_file(input_file, output_file)


if __name__ == "__main__":
    # it's easy to build a recursive function too
    # but the pattern need not always be the same
    # and writing a generic function for adaptation
    generate_asm_files("examples/easy", "tests/easy")
    generate_asm_files("examples/medium", "tests/medium")
    generate_asm_files("examples/hard", "tests/hard")
    generate_asm_files("examples/demo", "tests/demo")
