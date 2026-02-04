import box_runner as bxr

import sys
import pathlib as file
import os.path

def main():
    CODE = file.Path(os.path.expanduser(sys.argv[1])).resolve().read_text()
    bxr.run_boxed_code(CODE)


if __name__ == "__main__":
    main()