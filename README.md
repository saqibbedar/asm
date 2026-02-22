# asm

A collection of programs and projects written in assembly language.

## Structure

```
asm/
├── programs/   # Standalone assembly programs
└── projects/   # Larger assembly projects
```

## Programs

| Program | Description |
|---------|-------------|
| [hello_world](programs/hello_world/hello_world.asm) | Prints "Hello, World!" to stdout |

## Getting Started

### Prerequisites

- [NASM](https://www.nasm.us/) – Netwide Assembler
- A Linux x86-64 environment (or compatible)

### Build & Run

```bash
# Navigate to the program directory
cd programs/hello_world

# Assemble
nasm -f elf64 hello_world.asm -o hello_world.o

# Link
ld hello_world.o -o hello_world

# Run
./hello_world
```

