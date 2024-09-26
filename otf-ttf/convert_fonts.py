import os
import subprocess
import sys
import shutil

def convert_otf_to_ttf(file_path):
    try:
        # Run the otf2ttf command
        result = subprocess.run(['otf2ttf', file_path], capture_output=True, text=True)
        if result.returncode != 0:
            print(f"Error converting {file_path}: {result.stderr}")
            return False
        print(f"Successfully converted {file_path}")
        
        # Construct the expected output file path
        base_name = os.path.splitext(file_path)[0]
        output_file = f"{base_name}.ttf"
        print(f"Constructed output file path: {output_file}")
        
        # Check if the output file exists
        if os.path.exists(output_file):
            print(f"Output file exists: {output_file}")
            destination_dir = r"E:\Otaku\字体\超级字体整合包 XZ\完整包\[otf-ttf]"
            shutil.move(output_file, os.path.join(destination_dir, os.path.basename(output_file)))
            print(f"Successfully moved {output_file} to {destination_dir}")
            return True
        else:
            print(f"Error: {output_file} not found.")
            return False
    except Exception as e:
        print(f"Exception occurred: {e}")
        return False

def main():
    if len(sys.argv) < 2:
        print("No files were provided.")
        return

    for file_path in sys.argv[1:]:
        if file_path.lower().endswith('.otf'):
            convert_otf_to_ttf(file_path)
        else:
            print(f"Skipping non-OTF file: {file_path}")

if __name__ == "__main__":
    main()
