# asm

A collection of programs and projects written in assembly language.

## Structure

```
asm/
├── programs/   # Standalone assembly programs
└── projects/   # Larger assembly projects
```

## Programs

| Program                                             | Description                      |
| --------------------------------------------------- | -------------------------------- |
| [hello_world](programs/hello_world/hello_world.asm) | Prints "Hello, World!" to stdout |

## Getting Started

### Prerequisites

- [NASM](https://www.nasm.us/) – Netwide Assembler
  - Install on Debian/Ubuntu:
    ```bash
    sudo apt-get install nasm
    ```
  - Verify installation:
    ```bash
    nasm -v
    ```
- A Linux x86-64 environment (or compatible)
  - Verify your system architecture:
    ```bash
    uname -m
    ```
    Expected output: `x86_64`

### Build & Run

```bash
# Navigate to the program directory
cd programs/src/<directory_name> 

# Assemble
nasm -f elf64 <program_name>.asm -o <program_name>.o # -f elf64 specifies the output format for 64-bit Linux

# Link
ld <program_name>.o -o <program_name> # ld is the GNU linker

# Run
./<program_name>
```
