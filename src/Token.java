public class Token {
    public TokenType type;
    public String lexema;   // The actual text found
    public int line;
    public int column;

    public Token(TokenType type, String lexema, int line, int column) {
        this.type = type;
        this.lexema = lexema;
        this.line = line;
        this.column = column;
    }

    @Override
    public String toString() {
        return String.format("Line %-3d Col %-3d | Type: %-12s | Lexeme: %s",
                line, column, type, lexema);
    }
}