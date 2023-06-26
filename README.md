# VHDL Summer 2023

Summer Practice 2023 for VHDL course

## Repository structure requirements

Here is the intended repo structure:

```bash
├── README.md
├── examples
│         └── dff
│             ├── dff.vhd
│             └── tb_dff.vhd
└── ivanov
    ├── README.md
    ├── lab1
    │         ├── logic.vhd
    │         └── tb_logic.vhd
    ├── lab2
    |         ├── ...
    │         ├── ...
    │         └── ...
    └── lab3
              ├── ...
              └── ...
```

* Every student **must** create his/her own folder
  * The name of the folder **must** match a family name
  * Folder must contain a `README.md` file with a short description of the labs
* Every lab *must* be added through a separate Pull Request (PR)
  * Use the following branch naming conventions:
    * Branch name `feature/ivanov/lab1-custom-logic-function`
    * Use only English in Commit Messages
    * Commit Message must be descriptive
* Only project related files must be added
  * In most cases `*.vhd` files only
  * Update global `.gitignore` to skip adding non-related files into the repo
