import os

from vunit import VUnit
from sys import argv


USER_DIR = argv.pop(-1)

# Create VUnit instance by parsing command line arguments
vu = VUnit.from_argv()

# Optionally add VUnit's builtin HDL utilities for checking, logging, communication...
# See http://vunit.github.io/hdl_libraries.html.
vu.add_vhdl_builtins()
# or
# vu.add_verilog_builtins()

# Create library 'lib'
lib = vu.add_library("lib")

# Select all *.vhd files by recursive search
for root, dirs, files in os.walk(USER_DIR):
    for file in files:
        if file.endswith(".vhd"):
            lib.add_source_files(
                os.path.join(root, file)
            )

# Run vunit function
vu.main()