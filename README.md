# RustLexer-JFlex

A lexical analyzer for a subset of **Rust**, implemented in **Java** using **JFlex**. It automates recognition and tokenization of Rust code.

## Features

- **Keywords:** fn, let, mut, if, else, match, return, struct, impl
- **Macros:** println!, vec!
- **Literals:** integers, floats, strings, chars
- **Operators & punctuation:** +, -, *, /, =, ->, ::, &
- **Comments:** single-line (//) and multi-line (/* ... */)
- **Error handling:** reports invalid characters with line and column

## Build and Run

### Generate the Lexer
```bash
jflex src/Flex_Rust.flex
```

## Demo

### Input code
```
fn main() {
    // Print a message
    println!("Hello, World!");

    // Variables and operations
    let a = 5;
    let b = 10;
    let sum = a + b;

    println!("The sum of {} and {} is {}", a, b, sum);
}

```

### Output
```
Line 1   Col 1   | Type: KEYWORD      | Lexeme: fn
Line 1   Col 4   | Type: KEYWORD      | Lexeme: main
Line 1   Col 8   | Type: LPAREN       | Lexeme: (
Line 1   Col 9   | Type: RPAREN       | Lexeme: )
Line 1   Col 11  | Type: LBRACE       | Lexeme: {
Line 2   Col 5   | Type: COMMENT      | Lexeme: // Print a message
Line 3   Col 5   | Type: KEYWORD      | Lexeme: println!
Line 3   Col 13  | Type: LPAREN       | Lexeme: (
Line 3   Col 14  | Type: STRING       | Lexeme: "Hello, World!"
Line 3   Col 29  | Type: RPAREN       | Lexeme: )
Line 3   Col 30  | Type: SEMICOLON    | Lexeme: ;
Line 5   Col 5   | Type: COMMENT      | Lexeme: // Variables and operations
Line 6   Col 5   | Type: KEYWORD      | Lexeme: let
Line 6   Col 9   | Type: IDENTIFIER   | Lexeme: a
Line 6   Col 11  | Type: ASSIGN       | Lexeme: =
Line 6   Col 13  | Type: NUMBER       | Lexeme: 5
Line 6   Col 14  | Type: SEMICOLON    | Lexeme: ;
Line 7   Col 5   | Type: KEYWORD      | Lexeme: let
Line 7   Col 9   | Type: IDENTIFIER   | Lexeme: b
Line 7   Col 11  | Type: ASSIGN       | Lexeme: =
Line 7   Col 13  | Type: NUMBER       | Lexeme: 10
Line 7   Col 15  | Type: SEMICOLON    | Lexeme: ;
Line 8   Col 5   | Type: KEYWORD      | Lexeme: let
Line 8   Col 9   | Type: IDENTIFIER   | Lexeme: sum
Line 8   Col 13  | Type: ASSIGN       | Lexeme: =
Line 8   Col 15  | Type: IDENTIFIER   | Lexeme: a
Line 8   Col 17  | Type: PLUS         | Lexeme: +
Line 8   Col 19  | Type: IDENTIFIER   | Lexeme: b
Line 8   Col 20  | Type: SEMICOLON    | Lexeme: ;
Line 10  Col 5   | Type: KEYWORD      | Lexeme: println!
Line 10  Col 13  | Type: LPAREN       | Lexeme: (
Line 10  Col 14  | Type: STRING       | Lexeme: "The sum of {} and {} is {}"
Line 10  Col 42  | Type: COMMA        | Lexeme: ,
Line 10  Col 44  | Type: IDENTIFIER   | Lexeme: a
Line 10  Col 45  | Type: COMMA        | Lexeme: ,
Line 10  Col 47  | Type: IDENTIFIER   | Lexeme: b
Line 10  Col 48  | Type: COMMA        | Lexeme: ,
Line 10  Col 50  | Type: IDENTIFIER   | Lexeme: sum
Line 10  Col 53  | Type: RPAREN       | Lexeme: )
Line 10  Col 54  | Type: SEMICOLON    | Lexeme: ;
Line 11  Col 1   | Type: RBRACE       | Lexeme: }

 END 

```
