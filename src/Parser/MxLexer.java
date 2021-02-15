// Generated from D:/ideapro/Mx_compiler/src/Parser\Mx.g4 by ANTLR 4.9.1
package Parser;
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MxLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.9.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, LeftParen=8, RightParen=9, 
		LeftBracket=10, RightBracket=11, LeftBrace=12, RightBrace=13, Less=14, 
		LessEqual=15, Greater=16, GreaterEqual=17, LeftShift=18, RightShift=19, 
		Plus=20, Minus=21, And=22, Or=23, AndAnd=24, OrOr=25, Caret=26, Not=27, 
		Tilde=28, Question=29, Colon=30, Semi=31, Comma=32, Assign=33, Equal=34, 
		NotEqual=35, INT=36, BOOL=37, STRING=38, NULL=39, VOID=40, TRUE=41, FALSE=42, 
		IF=43, ELSE=44, FOR=45, WHILE=46, BREAK=47, CONTINUE=48, RETURN=49, NEW=50, 
		CLASS=51, THIS=52, Identifier=53, Logic=54, Integer=55, StringConst=56, 
		EscapeChar=57, Whitespace=58, Newline=59, BlockComment=60, LineComment=61;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"T__0", "T__1", "T__2", "T__3", "T__4", "T__5", "T__6", "LeftParen", 
			"RightParen", "LeftBracket", "RightBracket", "LeftBrace", "RightBrace", 
			"Less", "LessEqual", "Greater", "GreaterEqual", "LeftShift", "RightShift", 
			"Plus", "Minus", "And", "Or", "AndAnd", "OrOr", "Caret", "Not", "Tilde", 
			"Question", "Colon", "Semi", "Comma", "Assign", "Equal", "NotEqual", 
			"INT", "BOOL", "STRING", "NULL", "VOID", "TRUE", "FALSE", "IF", "ELSE", 
			"FOR", "WHILE", "BREAK", "CONTINUE", "RETURN", "NEW", "CLASS", "THIS", 
			"Identifier", "Logic", "Integer", "StringConst", "EscapeChar", "Whitespace", 
			"Newline", "BlockComment", "LineComment"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'int main()'", "'++'", "'--'", "'*'", "'/'", "'%'", "'.'", "'('", 
			"')'", "'['", "']'", "'{'", "'}'", "'<'", "'<='", "'>'", "'>='", "'<<'", 
			"'>>'", "'+'", "'-'", "'&'", "'|'", "'&&'", "'||'", "'^'", "'!'", "'~'", 
			"'?'", "':'", "';'", "','", "'='", "'=='", "'!='", "'int'", "'bool'", 
			"'string'", "'null'", "'void'", "'true'", "'false'", "'if'", "'else'", 
			"'for'", "'while'", "'break'", "'continue'", "'return'", "'new'", "'class'", 
			"'this'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, "LeftParen", "RightParen", 
			"LeftBracket", "RightBracket", "LeftBrace", "RightBrace", "Less", "LessEqual", 
			"Greater", "GreaterEqual", "LeftShift", "RightShift", "Plus", "Minus", 
			"And", "Or", "AndAnd", "OrOr", "Caret", "Not", "Tilde", "Question", "Colon", 
			"Semi", "Comma", "Assign", "Equal", "NotEqual", "INT", "BOOL", "STRING", 
			"NULL", "VOID", "TRUE", "FALSE", "IF", "ELSE", "FOR", "WHILE", "BREAK", 
			"CONTINUE", "RETURN", "NEW", "CLASS", "THIS", "Identifier", "Logic", 
			"Integer", "StringConst", "EscapeChar", "Whitespace", "Newline", "BlockComment", 
			"LineComment"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}


	public MxLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "Mx.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2?\u0182\b\1\4\2\t"+
		"\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t \4!"+
		"\t!\4\"\t\"\4#\t#\4$\t$\4%\t%\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4+\t+\4"+
		",\t,\4-\t-\4.\t.\4/\t/\4\60\t\60\4\61\t\61\4\62\t\62\4\63\t\63\4\64\t"+
		"\64\4\65\t\65\4\66\t\66\4\67\t\67\48\t8\49\t9\4:\t:\4;\t;\4<\t<\4=\t="+
		"\4>\t>\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\3\3\3\3\3\3\4\3\4"+
		"\3\4\3\5\3\5\3\6\3\6\3\7\3\7\3\b\3\b\3\t\3\t\3\n\3\n\3\13\3\13\3\f\3\f"+
		"\3\r\3\r\3\16\3\16\3\17\3\17\3\20\3\20\3\20\3\21\3\21\3\22\3\22\3\22\3"+
		"\23\3\23\3\23\3\24\3\24\3\24\3\25\3\25\3\26\3\26\3\27\3\27\3\30\3\30\3"+
		"\31\3\31\3\31\3\32\3\32\3\32\3\33\3\33\3\34\3\34\3\35\3\35\3\36\3\36\3"+
		"\37\3\37\3 \3 \3!\3!\3\"\3\"\3#\3#\3#\3$\3$\3$\3%\3%\3%\3%\3&\3&\3&\3"+
		"&\3&\3\'\3\'\3\'\3\'\3\'\3\'\3\'\3(\3(\3(\3(\3(\3)\3)\3)\3)\3)\3*\3*\3"+
		"*\3*\3*\3+\3+\3+\3+\3+\3+\3,\3,\3,\3-\3-\3-\3-\3-\3.\3.\3.\3.\3/\3/\3"+
		"/\3/\3/\3/\3\60\3\60\3\60\3\60\3\60\3\60\3\61\3\61\3\61\3\61\3\61\3\61"+
		"\3\61\3\61\3\61\3\62\3\62\3\62\3\62\3\62\3\62\3\62\3\63\3\63\3\63\3\63"+
		"\3\64\3\64\3\64\3\64\3\64\3\64\3\65\3\65\3\65\3\65\3\65\3\66\3\66\7\66"+
		"\u0135\n\66\f\66\16\66\u0138\13\66\3\67\3\67\5\67\u013c\n\67\38\38\78"+
		"\u0140\n8\f8\168\u0143\138\38\58\u0146\n8\39\39\39\79\u014b\n9\f9\169"+
		"\u014e\139\39\39\3:\3:\3:\3:\3:\3:\5:\u0158\n:\3;\6;\u015b\n;\r;\16;\u015c"+
		"\3;\3;\3<\3<\5<\u0163\n<\3<\5<\u0166\n<\3<\3<\3=\3=\3=\3=\7=\u016e\n="+
		"\f=\16=\u0171\13=\3=\3=\3=\3=\3=\3>\3>\3>\3>\7>\u017c\n>\f>\16>\u017f"+
		"\13>\3>\3>\4\u014c\u016f\2?\3\3\5\4\7\5\t\6\13\7\r\b\17\t\21\n\23\13\25"+
		"\f\27\r\31\16\33\17\35\20\37\21!\22#\23%\24\'\25)\26+\27-\30/\31\61\32"+
		"\63\33\65\34\67\359\36;\37= ?!A\"C#E$G%I&K\'M(O)Q*S+U,W-Y.[/]\60_\61a"+
		"\62c\63e\64g\65i\66k\67m8o9q:s;u<w=y>{?\3\2\b\4\2C\\c|\6\2\62;C\\aac|"+
		"\3\2\63;\3\2\62;\4\2\13\13\"\"\4\2\f\f\17\17\2\u018e\2\3\3\2\2\2\2\5\3"+
		"\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r\3\2\2\2\2\17\3\2\2\2\2"+
		"\21\3\2\2\2\2\23\3\2\2\2\2\25\3\2\2\2\2\27\3\2\2\2\2\31\3\2\2\2\2\33\3"+
		"\2\2\2\2\35\3\2\2\2\2\37\3\2\2\2\2!\3\2\2\2\2#\3\2\2\2\2%\3\2\2\2\2\'"+
		"\3\2\2\2\2)\3\2\2\2\2+\3\2\2\2\2-\3\2\2\2\2/\3\2\2\2\2\61\3\2\2\2\2\63"+
		"\3\2\2\2\2\65\3\2\2\2\2\67\3\2\2\2\29\3\2\2\2\2;\3\2\2\2\2=\3\2\2\2\2"+
		"?\3\2\2\2\2A\3\2\2\2\2C\3\2\2\2\2E\3\2\2\2\2G\3\2\2\2\2I\3\2\2\2\2K\3"+
		"\2\2\2\2M\3\2\2\2\2O\3\2\2\2\2Q\3\2\2\2\2S\3\2\2\2\2U\3\2\2\2\2W\3\2\2"+
		"\2\2Y\3\2\2\2\2[\3\2\2\2\2]\3\2\2\2\2_\3\2\2\2\2a\3\2\2\2\2c\3\2\2\2\2"+
		"e\3\2\2\2\2g\3\2\2\2\2i\3\2\2\2\2k\3\2\2\2\2m\3\2\2\2\2o\3\2\2\2\2q\3"+
		"\2\2\2\2s\3\2\2\2\2u\3\2\2\2\2w\3\2\2\2\2y\3\2\2\2\2{\3\2\2\2\3}\3\2\2"+
		"\2\5\u0088\3\2\2\2\7\u008b\3\2\2\2\t\u008e\3\2\2\2\13\u0090\3\2\2\2\r"+
		"\u0092\3\2\2\2\17\u0094\3\2\2\2\21\u0096\3\2\2\2\23\u0098\3\2\2\2\25\u009a"+
		"\3\2\2\2\27\u009c\3\2\2\2\31\u009e\3\2\2\2\33\u00a0\3\2\2\2\35\u00a2\3"+
		"\2\2\2\37\u00a4\3\2\2\2!\u00a7\3\2\2\2#\u00a9\3\2\2\2%\u00ac\3\2\2\2\'"+
		"\u00af\3\2\2\2)\u00b2\3\2\2\2+\u00b4\3\2\2\2-\u00b6\3\2\2\2/\u00b8\3\2"+
		"\2\2\61\u00ba\3\2\2\2\63\u00bd\3\2\2\2\65\u00c0\3\2\2\2\67\u00c2\3\2\2"+
		"\29\u00c4\3\2\2\2;\u00c6\3\2\2\2=\u00c8\3\2\2\2?\u00ca\3\2\2\2A\u00cc"+
		"\3\2\2\2C\u00ce\3\2\2\2E\u00d0\3\2\2\2G\u00d3\3\2\2\2I\u00d6\3\2\2\2K"+
		"\u00da\3\2\2\2M\u00df\3\2\2\2O\u00e6\3\2\2\2Q\u00eb\3\2\2\2S\u00f0\3\2"+
		"\2\2U\u00f5\3\2\2\2W\u00fb\3\2\2\2Y\u00fe\3\2\2\2[\u0103\3\2\2\2]\u0107"+
		"\3\2\2\2_\u010d\3\2\2\2a\u0113\3\2\2\2c\u011c\3\2\2\2e\u0123\3\2\2\2g"+
		"\u0127\3\2\2\2i\u012d\3\2\2\2k\u0132\3\2\2\2m\u013b\3\2\2\2o\u0145\3\2"+
		"\2\2q\u0147\3\2\2\2s\u0157\3\2\2\2u\u015a\3\2\2\2w\u0165\3\2\2\2y\u0169"+
		"\3\2\2\2{\u0177\3\2\2\2}~\7k\2\2~\177\7p\2\2\177\u0080\7v\2\2\u0080\u0081"+
		"\7\"\2\2\u0081\u0082\7o\2\2\u0082\u0083\7c\2\2\u0083\u0084\7k\2\2\u0084"+
		"\u0085\7p\2\2\u0085\u0086\7*\2\2\u0086\u0087\7+\2\2\u0087\4\3\2\2\2\u0088"+
		"\u0089\7-\2\2\u0089\u008a\7-\2\2\u008a\6\3\2\2\2\u008b\u008c\7/\2\2\u008c"+
		"\u008d\7/\2\2\u008d\b\3\2\2\2\u008e\u008f\7,\2\2\u008f\n\3\2\2\2\u0090"+
		"\u0091\7\61\2\2\u0091\f\3\2\2\2\u0092\u0093\7\'\2\2\u0093\16\3\2\2\2\u0094"+
		"\u0095\7\60\2\2\u0095\20\3\2\2\2\u0096\u0097\7*\2\2\u0097\22\3\2\2\2\u0098"+
		"\u0099\7+\2\2\u0099\24\3\2\2\2\u009a\u009b\7]\2\2\u009b\26\3\2\2\2\u009c"+
		"\u009d\7_\2\2\u009d\30\3\2\2\2\u009e\u009f\7}\2\2\u009f\32\3\2\2\2\u00a0"+
		"\u00a1\7\177\2\2\u00a1\34\3\2\2\2\u00a2\u00a3\7>\2\2\u00a3\36\3\2\2\2"+
		"\u00a4\u00a5\7>\2\2\u00a5\u00a6\7?\2\2\u00a6 \3\2\2\2\u00a7\u00a8\7@\2"+
		"\2\u00a8\"\3\2\2\2\u00a9\u00aa\7@\2\2\u00aa\u00ab\7?\2\2\u00ab$\3\2\2"+
		"\2\u00ac\u00ad\7>\2\2\u00ad\u00ae\7>\2\2\u00ae&\3\2\2\2\u00af\u00b0\7"+
		"@\2\2\u00b0\u00b1\7@\2\2\u00b1(\3\2\2\2\u00b2\u00b3\7-\2\2\u00b3*\3\2"+
		"\2\2\u00b4\u00b5\7/\2\2\u00b5,\3\2\2\2\u00b6\u00b7\7(\2\2\u00b7.\3\2\2"+
		"\2\u00b8\u00b9\7~\2\2\u00b9\60\3\2\2\2\u00ba\u00bb\7(\2\2\u00bb\u00bc"+
		"\7(\2\2\u00bc\62\3\2\2\2\u00bd\u00be\7~\2\2\u00be\u00bf\7~\2\2\u00bf\64"+
		"\3\2\2\2\u00c0\u00c1\7`\2\2\u00c1\66\3\2\2\2\u00c2\u00c3\7#\2\2\u00c3"+
		"8\3\2\2\2\u00c4\u00c5\7\u0080\2\2\u00c5:\3\2\2\2\u00c6\u00c7\7A\2\2\u00c7"+
		"<\3\2\2\2\u00c8\u00c9\7<\2\2\u00c9>\3\2\2\2\u00ca\u00cb\7=\2\2\u00cb@"+
		"\3\2\2\2\u00cc\u00cd\7.\2\2\u00cdB\3\2\2\2\u00ce\u00cf\7?\2\2\u00cfD\3"+
		"\2\2\2\u00d0\u00d1\7?\2\2\u00d1\u00d2\7?\2\2\u00d2F\3\2\2\2\u00d3\u00d4"+
		"\7#\2\2\u00d4\u00d5\7?\2\2\u00d5H\3\2\2\2\u00d6\u00d7\7k\2\2\u00d7\u00d8"+
		"\7p\2\2\u00d8\u00d9\7v\2\2\u00d9J\3\2\2\2\u00da\u00db\7d\2\2\u00db\u00dc"+
		"\7q\2\2\u00dc\u00dd\7q\2\2\u00dd\u00de\7n\2\2\u00deL\3\2\2\2\u00df\u00e0"+
		"\7u\2\2\u00e0\u00e1\7v\2\2\u00e1\u00e2\7t\2\2\u00e2\u00e3\7k\2\2\u00e3"+
		"\u00e4\7p\2\2\u00e4\u00e5\7i\2\2\u00e5N\3\2\2\2\u00e6\u00e7\7p\2\2\u00e7"+
		"\u00e8\7w\2\2\u00e8\u00e9\7n\2\2\u00e9\u00ea\7n\2\2\u00eaP\3\2\2\2\u00eb"+
		"\u00ec\7x\2\2\u00ec\u00ed\7q\2\2\u00ed\u00ee\7k\2\2\u00ee\u00ef\7f\2\2"+
		"\u00efR\3\2\2\2\u00f0\u00f1\7v\2\2\u00f1\u00f2\7t\2\2\u00f2\u00f3\7w\2"+
		"\2\u00f3\u00f4\7g\2\2\u00f4T\3\2\2\2\u00f5\u00f6\7h\2\2\u00f6\u00f7\7"+
		"c\2\2\u00f7\u00f8\7n\2\2\u00f8\u00f9\7u\2\2\u00f9\u00fa\7g\2\2\u00faV"+
		"\3\2\2\2\u00fb\u00fc\7k\2\2\u00fc\u00fd\7h\2\2\u00fdX\3\2\2\2\u00fe\u00ff"+
		"\7g\2\2\u00ff\u0100\7n\2\2\u0100\u0101\7u\2\2\u0101\u0102\7g\2\2\u0102"+
		"Z\3\2\2\2\u0103\u0104\7h\2\2\u0104\u0105\7q\2\2\u0105\u0106\7t\2\2\u0106"+
		"\\\3\2\2\2\u0107\u0108\7y\2\2\u0108\u0109\7j\2\2\u0109\u010a\7k\2\2\u010a"+
		"\u010b\7n\2\2\u010b\u010c\7g\2\2\u010c^\3\2\2\2\u010d\u010e\7d\2\2\u010e"+
		"\u010f\7t\2\2\u010f\u0110\7g\2\2\u0110\u0111\7c\2\2\u0111\u0112\7m\2\2"+
		"\u0112`\3\2\2\2\u0113\u0114\7e\2\2\u0114\u0115\7q\2\2\u0115\u0116\7p\2"+
		"\2\u0116\u0117\7v\2\2\u0117\u0118\7k\2\2\u0118\u0119\7p\2\2\u0119\u011a"+
		"\7w\2\2\u011a\u011b\7g\2\2\u011bb\3\2\2\2\u011c\u011d\7t\2\2\u011d\u011e"+
		"\7g\2\2\u011e\u011f\7v\2\2\u011f\u0120\7w\2\2\u0120\u0121\7t\2\2\u0121"+
		"\u0122\7p\2\2\u0122d\3\2\2\2\u0123\u0124\7p\2\2\u0124\u0125\7g\2\2\u0125"+
		"\u0126\7y\2\2\u0126f\3\2\2\2\u0127\u0128\7e\2\2\u0128\u0129\7n\2\2\u0129"+
		"\u012a\7c\2\2\u012a\u012b\7u\2\2\u012b\u012c\7u\2\2\u012ch\3\2\2\2\u012d"+
		"\u012e\7v\2\2\u012e\u012f\7j\2\2\u012f\u0130\7k\2\2\u0130\u0131\7u\2\2"+
		"\u0131j\3\2\2\2\u0132\u0136\t\2\2\2\u0133\u0135\t\3\2\2\u0134\u0133\3"+
		"\2\2\2\u0135\u0138\3\2\2\2\u0136\u0134\3\2\2\2\u0136\u0137\3\2\2\2\u0137"+
		"l\3\2\2\2\u0138\u0136\3\2\2\2\u0139\u013c\5S*\2\u013a\u013c\5U+\2\u013b"+
		"\u0139\3\2\2\2\u013b\u013a\3\2\2\2\u013cn\3\2\2\2\u013d\u0141\t\4\2\2"+
		"\u013e\u0140\t\5\2\2\u013f\u013e\3\2\2\2\u0140\u0143\3\2\2\2\u0141\u013f"+
		"\3\2\2\2\u0141\u0142\3\2\2\2\u0142\u0146\3\2\2\2\u0143\u0141\3\2\2\2\u0144"+
		"\u0146\7\62\2\2\u0145\u013d\3\2\2\2\u0145\u0144\3\2\2\2\u0146p\3\2\2\2"+
		"\u0147\u014c\7$\2\2\u0148\u014b\5s:\2\u0149\u014b\13\2\2\2\u014a\u0148"+
		"\3\2\2\2\u014a\u0149\3\2\2\2\u014b\u014e\3\2\2\2\u014c\u014d\3\2\2\2\u014c"+
		"\u014a\3\2\2\2\u014d\u014f\3\2\2\2\u014e\u014c\3\2\2\2\u014f\u0150\7$"+
		"\2\2\u0150r\3\2\2\2\u0151\u0152\7^\2\2\u0152\u0158\7p\2\2\u0153\u0154"+
		"\7^\2\2\u0154\u0158\7^\2\2\u0155\u0156\7^\2\2\u0156\u0158\7$\2\2\u0157"+
		"\u0151\3\2\2\2\u0157\u0153\3\2\2\2\u0157\u0155\3\2\2\2\u0158t\3\2\2\2"+
		"\u0159\u015b\t\6\2\2\u015a\u0159\3\2\2\2\u015b\u015c\3\2\2\2\u015c\u015a"+
		"\3\2\2\2\u015c\u015d\3\2\2\2\u015d\u015e\3\2\2\2\u015e\u015f\b;\2\2\u015f"+
		"v\3\2\2\2\u0160\u0162\7\17\2\2\u0161\u0163\7\f\2\2\u0162\u0161\3\2\2\2"+
		"\u0162\u0163\3\2\2\2\u0163\u0166\3\2\2\2\u0164\u0166\7\f\2\2\u0165\u0160"+
		"\3\2\2\2\u0165\u0164\3\2\2\2\u0166\u0167\3\2\2\2\u0167\u0168\b<\2\2\u0168"+
		"x\3\2\2\2\u0169\u016a\7\61\2\2\u016a\u016b\7,\2\2\u016b\u016f\3\2\2\2"+
		"\u016c\u016e\13\2\2\2\u016d\u016c\3\2\2\2\u016e\u0171\3\2\2\2\u016f\u0170"+
		"\3\2\2\2\u016f\u016d\3\2\2\2\u0170\u0172\3\2\2\2\u0171\u016f\3\2\2\2\u0172"+
		"\u0173\7,\2\2\u0173\u0174\7\61\2\2\u0174\u0175\3\2\2\2\u0175\u0176\b="+
		"\2\2\u0176z\3\2\2\2\u0177\u0178\7\61\2\2\u0178\u0179\7\61\2\2\u0179\u017d"+
		"\3\2\2\2\u017a\u017c\n\7\2\2\u017b\u017a\3\2\2\2\u017c\u017f\3\2\2\2\u017d"+
		"\u017b\3\2\2\2\u017d\u017e\3\2\2\2\u017e\u0180\3\2\2\2\u017f\u017d\3\2"+
		"\2\2\u0180\u0181\b>\2\2\u0181|\3\2\2\2\17\2\u0136\u013b\u0141\u0145\u014a"+
		"\u014c\u0157\u015c\u0162\u0165\u016f\u017d\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}