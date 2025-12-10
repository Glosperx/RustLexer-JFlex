import java.io.*;

%%

// Config
%class Flex_Rust
%public
%unicode
%line
%column
%type Token

%{
    // Helper function
    private Token token(TokenType type) {
        return new Token(type, yytext(), yyline + 1, yycolumn + 1);
    }
%}

// Regex

// A number consists of digits, optionally followed by a dot and more digits
Number    = [0-9]+ ("." [0-9]+)?

// A word starts with a letter or _, followed by letters/digits/_. We also accept ! at the end
Word      = [a-zA-Z_][a-zA-Z0-9_]* "!"?

// Content inside double quotes (simple string literal)
Text      = \" [^\"]* \"

// Ignore spaces, tabs, and newlines
Whitespace = [ \t\r\n\f]

// Comments starting with //
Comment    = "//" .*

%%

// Keywords (must be placed BEFORE the general "Word" rule)
"let"      { return token(TokenType.KEYWORD); }
"fn"       { return token(TokenType.KEYWORD); }
"if"       { return token(TokenType.KEYWORD); }
"else"     { return token(TokenType.KEYWORD); }
"mut"      { return token(TokenType.KEYWORD); }
"main"     { return token(TokenType.KEYWORD); }
"vec!"     { return token(TokenType.KEYWORD); }
"println!" { return token(TokenType.KEYWORD); }

// Symbols and Operators
"+" { return token(TokenType.PLUS); }
"-" { return token(TokenType.MINUS); }
"*" { return token(TokenType.MULTIPLY); }
"/" { return token(TokenType.DIVIDE); }
"=" { return token(TokenType.ASSIGN); }
";" { return token(TokenType.SEMICOLON); }
":" { return token(TokenType.COLON); }
"," { return token(TokenType.COMMA); }
"." { return token(TokenType.DOT); }
"(" { return token(TokenType.LPAREN); }
")" { return token(TokenType.RPAREN); }
"{" { return token(TokenType.LBRACE); }
"}" { return token(TokenType.RBRACE); }
"[" { return token(TokenType.LBRACKET); }
"]" { return token(TokenType.RBRACKET); }
"<" { return token(TokenType.LANGLE); }
">" { return token(TokenType.RANGLE); }
"&" { return token(TokenType.REFERENCE); }

{Number}     { return token(TokenType.NUMBER); }
{Text}       { return token(TokenType.STRING); }
{Comment}    { return token(TokenType.COMMENT); }
{Whitespace} { }

// Catches everything that is not a keyword above
{Word}       { return token(TokenType.IDENTIFIER); }

//Any other remaining character is an error
. { return token(TokenType.ERROR); }