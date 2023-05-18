# This script generates asm files in MIPS 32 architecture
import os

def generate_asm_files(input_dir="examples/easy", output_dir="tests/easy"):
    # Note: This won't generate files recursively
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    
    input_dir = os.path.abspath(input_dir)
    output_dir = os.path.abspath(output_dir)
    
    for file in os.listdir(input_dir):
        input_file = os.path.join(input_dir, file)
        output_file = os.path.join(output_dir, "auto_"+file.replace(".cpp", ".asm"))
        status = os.system(f"clang++ -S -target mips -mcpu=mips32 {input_file} -o {output_file}")
        if status == 0:
            print(f"Successfully generated asm file for {input_file}")
        else:
            print(f"Error in generating asm file for {input_file}")

if __name__ == "__main__":
    # it's easy to build a recursive function too
    # but the pattern need not always be the same
    # and writing a generic function for adaptation
    generate_asm_files("examples/easy", "tests/easy")
    generate_asm_files("examples/medium", "tests/medium")
    generate_asm_files("examples/hard", "tests/hard")