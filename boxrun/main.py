from box_vm import BoxedVM as bxvm
import pathlib as file
import os.path
from colorama import Fore, Back, Style
import time
import sys
from box_to_json import mk, undo_mk
import argparse

vm = bxvm()

parser = argparse.ArgumentParser(description="boxedLANG interpreter")
parser.add_argument("file", help="path to the boxedLANG source file to run")
args = parser.parse_args()

def main():
    CODE = str(file.Path(os.path.expanduser(args.file)).read_text())
    vm.start(CODE, args.file)
    test = 7
    while test != {"end": "script"}:
        test = vm.recv()
        print(test)
    print("ended")

if __name__ == "__main__":
    main()
