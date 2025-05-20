# Number-Conversion-System

This repository contains a simple command-line utility for converting numbers between different bases, implemented in several popular programming languages. It allows you to convert a number from a given base (e.g., binary, decimal, hexadecimal) to another specified base.

## Supported Languages

* C++
* Java
* JavaScript
* PHP
* Ruby
* Python 3
* Go
* Perl

## How to Use

Each language implementation typically consists of source files (`ncs.<ext>`, `coderunner.<ext>`). For C++, a pre-compiled executable is also provided for convenience.

To run an implementation, ensure the necessary files are in the same folder as described in the instructions.

### General Steps:

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/Jai0909/Number-Conversion-System.git
    cd Number-Conversion-System
    ```

2.  **Follow the language-specific instructions below.**

---

### Language-Specific Instructions

#### C++

**Prerequisites:** gcc/g++ installed.

1.  **Navigate to the C++ files:** Ensure `ncs.h` and `coderunner.cpp` are in the same directory.
2.  **Compile:**
    ```bash
    g++ coderunner.cpp -o coderunner
    ```
3.  **Run:**
    ```bash
    ./coderunner
    ```
    
#### Java

**Prerequisites:** Java Development Kit (JDK) installed.

1.  **Navigate to the Java files:** Ensure `ncs.java` and `coderunner.java` are in the same directory.
2.  **Compile:**
    ```bash
    javac ncs.java coderunner.java
    ```
3.  **Run:**
    ```bash
    java coderunner
    ```

#### JavaScript

**Prerequisites:** Node.js installed.

1.  **Navigate to the JavaScript files:** Ensure `ncs.js` and `coderunner.js` are in the same directory.
    *Note: The `coderunner.js` assumes `ncs.js` is imported using `require('./ncs.js');`.*
2.  **Run:**
    ```bash
    node coderunner.js
    ```

#### PHP

**Prerequisites:** PHP interpreter installed.

1.  **Navigate to the PHP files:** Ensure `ncs.php` and `coderunner.php` are in the same directory.
    *Note: `coderunner.php` uses `require_once 'ncs.php';`.*
2.  **Run:**
    ```bash
    php coderunner.php
    ```

#### Ruby

**Prerequisites:** Ruby installed.

1.  **Navigate to the Ruby files:** Ensure `ncs.rb` and `coderunner.rb` are in the same directory.
    *Note: `coderunner.rb` uses `require_relative 'ncs';`.*
2.  **Run:**
    ```bash
    ruby coderunner.rb
    ```

#### Python 3

**Prerequisites:** Python 3 installed.

1.  **Navigate to the Python files:** Ensure `ncs.py` and `coderunner.py` are in the same directory.
    *Note: `coderunner.py` uses `from ncs import *`.*
2.  **Run:**
    ```bash
    python3 coderunner.py
    ```

#### Go

**Prerequisites:** Go installed.

**Important for Go:** When multiple `.go` files are in the same directory and form a single executable, they should all belong to the `main` package. Functions can then be called directly between these files without explicit `import` statements for local packages.

1.  **Ensure correct file setup in your repository's root:**
    * **`ncs.go`**: At the top, it **must** have `package main`. Its functions (e.g., `val`, `toDeci`, `reVal`, `fromDeci`, `convertBase`) should start with a lowercase letter to be "unexported" (private to the `main` package).
    * **`coderunner.go`**: At the top, it **must** have `package main`. It **must NOT** have an `import` statement for `ncs` or any local package path (e.g., `import "your_module_name/ncs"`). It should call functions from `ncs.go` directly (e.g., `convertBase(s, a, b)`).
    * **`go.mod`**: This file defines your Go module. If it's not already present, create it in the same directory by running `go mod init your_module_name` (e.g., `go mod init coderunner`).
2.  **Run:**
    * Ensure your terminal is in the directory containing `ncs.go`, `coderunner.go`, and `go.mod`.
    * Execute:
        ```bash
        go run.
        ```
    This command will compile and run all `.go` files in the current directory that are part of the `main` package.
    
#### Perl

**Prerequisites:** Perl interpreter installed.

1.  **Navigate to the Perl files:** Ensure `ncs.pl` and `coderunner.pl` are in the same directory.
    *Note: `coderunner.pl` uses `require './ncs.pl';`.*
2.  **Run:**
    ```bash
    perl coderunner.pl
    ```
