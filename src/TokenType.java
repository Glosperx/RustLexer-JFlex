//Defines all possible categories of tokens for Rust language
public enum TokenType {
    // Keywords (Reserved words)
    KEYWORD,    // let, fn, mut, if, etc.

    // Identifiers (Variable names, function names)
    IDENTIFIER, // x, my_var, calculate_sum

    // Literals
    NUMBER,     // 10, 3.14
    STRING,     // "Hello World"
    CHAR,       // 'a'

    // Operators and Punctuation
    PLUS,       // +
    MINUS,      // -
    MULTIPLY,   // *
    DIVIDE,     // /
    ASSIGN,     // =

    // Delimiters
    SEMICOLON,  // ;
    COLON,      // :
    COMMA,      // ,
    DOT,        // .

    // Brackets and Parentheses
    LPAREN,     // (
    RPAREN,     // )
    LBRACE,     // {
    RBRACE,     // }
    LBRACKET,   // [
    RBRACKET,   // ]
    LANGLE,     // <
    RANGLE,     // >

    // Special
    COMMENT,    // // comment or /* comment */
    REFERENCE,  // &

    // Control
    ERROR,      // Used when an invalid character is found
    EOF         // End Of File
}