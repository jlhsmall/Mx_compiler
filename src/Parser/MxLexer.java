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
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, Logic=8, Integer=9, 
		StringConst=10, EscapeChar=11, LeftParen=12, RightParen=13, LeftBracket=14, 
		RightBracket=15, LeftBrace=16, RightBrace=17, Less=18, LessEqual=19, Greater=20, 
		GreaterEqual=21, LeftShift=22, RightShift=23, Plus=24, Minus=25, And=26, 
		Or=27, AndAnd=28, OrOr=29, Caret=30, Not=31, Tilde=32, Question=33, Colon=34, 
		Semi=35, Comma=36, Assign=37, Equal=38, NotEqual=39, INT=40, BOOL=41, 
		STRING=42, NULL=43, VOID=44, TRUE=45, FALSE=46, IF=47, ELSE=48, FOR=49, 
		WHILE=50, BREAK=51, CONTINUE=52, RETURN=53, NEW=54, CLASS=55, THIS=56, 
		Identifier=57, Whitespace=58, Newline=59, BlockComment=60, LineComment=61;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"T__0", "T__1", "T__2", "T__3", "T__4", "T__5", "T__6", "Logic", "Integer", 
			"StringConst", "EscapeChar", "LeftParen", "RightParen", "LeftBracket", 
			"RightBracket", "LeftBrace", "RightBrace", "Less", "LessEqual", "Greater", 
			"GreaterEqual", "LeftShift", "RightShift", "Plus", "Minus", "And", "Or", 
			"AndAnd", "OrOr", "Caret", "Not", "Tilde", "Question", "Colon", "Semi", 
			"Comma", "Assign", "Equal", "NotEqual", "INT", "BOOL", "STRING", "NULL", 
			"VOID", "TRUE", "FALSE", "IF", "ELSE", "FOR", "WHILE", "BREAK", "CONTINUE", 
			"RETURN", "NEW", "CLASS", "THIS", "Identifier", "Whitespace", "Newline", 
			"BlockComment", "LineComment"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'int main()'", "'.'", "'++'", "'--'", "'*'", "'/'", "'%'", null, 
			null, null, null, "'('", "')'", "'['", "']'", "'{'", "'}'", "'<'", "'<='", 
			"'>'", "'>='", "'<<'", "'>>'", "'+'", "'-'", "'&'", "'|'", "'&&'", "'||'", 
			"'^'", "'!'", "'~'", "'?'", "':'", "';'", "','", "'='", "'=='", "'!='", 
			"'int'", "'bool'", "'string'", "'null'", "'void'", "'true'", "'false'", 
			"'if'", "'else'", "'for'", "'while'", "'break'", "'continue'", "'return'", 
			"'new'", "'class'", "'this'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, "Logic", "Integer", "StringConst", 
			"EscapeChar", "LeftParen", "RightParen", "LeftBracket", "RightBracket", 
			"LeftBrace", "RightBrace", "Less", "LessEqual", "Greater", "GreaterEqual", 
			"LeftShift", "RightShift", "Plus", "Minus", "And", "Or", "AndAnd", "OrOr", 
			"Caret", "Not", "Tilde", "Question", "Colon", "Semi", "Comma", "Assign", 
			"Equal", "NotEqual", "INT", "BOOL", "STRING", "NULL", "VOID", "TRUE", 
			"FALSE", "IF", "ELSE", "FOR", "WHILE", "BREAK", "CONTINUE", "RETURN", 
			"NEW", "CLASS", "THIS", "Identifier", "Whitespace", "Newline", "BlockComment", 
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
		"\4>\t>\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\3\3\3\3\4\3\4\3\4"+
		"\3\5\3\5\3\5\3\6\3\6\3\7\3\7\3\b\3\b\3\t\3\t\5\t\u0099\n\t\3\n\3\n\7\n"+
		"\u009d\n\n\f\n\16\n\u00a0\13\n\3\n\5\n\u00a3\n\n\3\13\3\13\3\13\7\13\u00a8"+
		"\n\13\f\13\16\13\u00ab\13\13\3\13\3\13\3\f\3\f\3\f\3\f\3\f\3\f\5\f\u00b5"+
		"\n\f\3\r\3\r\3\16\3\16\3\17\3\17\3\20\3\20\3\21\3\21\3\22\3\22\3\23\3"+
		"\23\3\24\3\24\3\24\3\25\3\25\3\26\3\26\3\26\3\27\3\27\3\27\3\30\3\30\3"+
		"\30\3\31\3\31\3\32\3\32\3\33\3\33\3\34\3\34\3\35\3\35\3\35\3\36\3\36\3"+
		"\36\3\37\3\37\3 \3 \3!\3!\3\"\3\"\3#\3#\3$\3$\3%\3%\3&\3&\3\'\3\'\3\'"+
		"\3(\3(\3(\3)\3)\3)\3)\3*\3*\3*\3*\3*\3+\3+\3+\3+\3+\3+\3+\3,\3,\3,\3,"+
		"\3,\3-\3-\3-\3-\3-\3.\3.\3.\3.\3.\3/\3/\3/\3/\3/\3/\3\60\3\60\3\60\3\61"+
		"\3\61\3\61\3\61\3\61\3\62\3\62\3\62\3\62\3\63\3\63\3\63\3\63\3\63\3\63"+
		"\3\64\3\64\3\64\3\64\3\64\3\64\3\65\3\65\3\65\3\65\3\65\3\65\3\65\3\65"+
		"\3\65\3\66\3\66\3\66\3\66\3\66\3\66\3\66\3\67\3\67\3\67\3\67\38\38\38"+
		"\38\38\38\39\39\39\39\39\3:\3:\7:\u0155\n:\f:\16:\u0158\13:\3;\6;\u015b"+
		"\n;\r;\16;\u015c\3;\3;\3<\3<\5<\u0163\n<\3<\5<\u0166\n<\3<\3<\3=\3=\3"+
		"=\3=\7=\u016e\n=\f=\16=\u0171\13=\3=\3=\3=\3=\3=\3>\3>\3>\3>\7>\u017c"+
		"\n>\f>\16>\u017f\13>\3>\3>\4\u00a9\u016f\2?\3\3\5\4\7\5\t\6\13\7\r\b\17"+
		"\t\21\n\23\13\25\f\27\r\31\16\33\17\35\20\37\21!\22#\23%\24\'\25)\26+"+
		"\27-\30/\31\61\32\63\33\65\34\67\359\36;\37= ?!A\"C#E$G%I&K\'M(O)Q*S+"+
		"U,W-Y.[/]\60_\61a\62c\63e\64g\65i\66k\67m8o9q:s;u<w=y>{?\3\2\b\3\2\63"+
		";\3\2\62;\4\2C\\c|\6\2\62;C\\aac|\4\2\13\13\"\"\4\2\f\f\17\17\2\u018e"+
		"\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r\3\2"+
		"\2\2\2\17\3\2\2\2\2\21\3\2\2\2\2\23\3\2\2\2\2\25\3\2\2\2\2\27\3\2\2\2"+
		"\2\31\3\2\2\2\2\33\3\2\2\2\2\35\3\2\2\2\2\37\3\2\2\2\2!\3\2\2\2\2#\3\2"+
		"\2\2\2%\3\2\2\2\2\'\3\2\2\2\2)\3\2\2\2\2+\3\2\2\2\2-\3\2\2\2\2/\3\2\2"+
		"\2\2\61\3\2\2\2\2\63\3\2\2\2\2\65\3\2\2\2\2\67\3\2\2\2\29\3\2\2\2\2;\3"+
		"\2\2\2\2=\3\2\2\2\2?\3\2\2\2\2A\3\2\2\2\2C\3\2\2\2\2E\3\2\2\2\2G\3\2\2"+
		"\2\2I\3\2\2\2\2K\3\2\2\2\2M\3\2\2\2\2O\3\2\2\2\2Q\3\2\2\2\2S\3\2\2\2\2"+
		"U\3\2\2\2\2W\3\2\2\2\2Y\3\2\2\2\2[\3\2\2\2\2]\3\2\2\2\2_\3\2\2\2\2a\3"+
		"\2\2\2\2c\3\2\2\2\2e\3\2\2\2\2g\3\2\2\2\2i\3\2\2\2\2k\3\2\2\2\2m\3\2\2"+
		"\2\2o\3\2\2\2\2q\3\2\2\2\2s\3\2\2\2\2u\3\2\2\2\2w\3\2\2\2\2y\3\2\2\2\2"+
		"{\3\2\2\2\3}\3\2\2\2\5\u0088\3\2\2\2\7\u008a\3\2\2\2\t\u008d\3\2\2\2\13"+
		"\u0090\3\2\2\2\r\u0092\3\2\2\2\17\u0094\3\2\2\2\21\u0098\3\2\2\2\23\u00a2"+
		"\3\2\2\2\25\u00a4\3\2\2\2\27\u00b4\3\2\2\2\31\u00b6\3\2\2\2\33\u00b8\3"+
		"\2\2\2\35\u00ba\3\2\2\2\37\u00bc\3\2\2\2!\u00be\3\2\2\2#\u00c0\3\2\2\2"+
		"%\u00c2\3\2\2\2\'\u00c4\3\2\2\2)\u00c7\3\2\2\2+\u00c9\3\2\2\2-\u00cc\3"+
		"\2\2\2/\u00cf\3\2\2\2\61\u00d2\3\2\2\2\63\u00d4\3\2\2\2\65\u00d6\3\2\2"+
		"\2\67\u00d8\3\2\2\29\u00da\3\2\2\2;\u00dd\3\2\2\2=\u00e0\3\2\2\2?\u00e2"+
		"\3\2\2\2A\u00e4\3\2\2\2C\u00e6\3\2\2\2E\u00e8\3\2\2\2G\u00ea\3\2\2\2I"+
		"\u00ec\3\2\2\2K\u00ee\3\2\2\2M\u00f0\3\2\2\2O\u00f3\3\2\2\2Q\u00f6\3\2"+
		"\2\2S\u00fa\3\2\2\2U\u00ff\3\2\2\2W\u0106\3\2\2\2Y\u010b\3\2\2\2[\u0110"+
		"\3\2\2\2]\u0115\3\2\2\2_\u011b\3\2\2\2a\u011e\3\2\2\2c\u0123\3\2\2\2e"+
		"\u0127\3\2\2\2g\u012d\3\2\2\2i\u0133\3\2\2\2k\u013c\3\2\2\2m\u0143\3\2"+
		"\2\2o\u0147\3\2\2\2q\u014d\3\2\2\2s\u0152\3\2\2\2u\u015a\3\2\2\2w\u0165"+
		"\3\2\2\2y\u0169\3\2\2\2{\u0177\3\2\2\2}~\7k\2\2~\177\7p\2\2\177\u0080"+
		"\7v\2\2\u0080\u0081\7\"\2\2\u0081\u0082\7o\2\2\u0082\u0083\7c\2\2\u0083"+
		"\u0084\7k\2\2\u0084\u0085\7p\2\2\u0085\u0086\7*\2\2\u0086\u0087\7+\2\2"+
		"\u0087\4\3\2\2\2\u0088\u0089\7\60\2\2\u0089\6\3\2\2\2\u008a\u008b\7-\2"+
		"\2\u008b\u008c\7-\2\2\u008c\b\3\2\2\2\u008d\u008e\7/\2\2\u008e\u008f\7"+
		"/\2\2\u008f\n\3\2\2\2\u0090\u0091\7,\2\2\u0091\f\3\2\2\2\u0092\u0093\7"+
		"\61\2\2\u0093\16\3\2\2\2\u0094\u0095\7\'\2\2\u0095\20\3\2\2\2\u0096\u0099"+
		"\5[.\2\u0097\u0099\5]/\2\u0098\u0096\3\2\2\2\u0098\u0097\3\2\2\2\u0099"+
		"\22\3\2\2\2\u009a\u009e\t\2\2\2\u009b\u009d\t\3\2\2\u009c\u009b\3\2\2"+
		"\2\u009d\u00a0\3\2\2\2\u009e\u009c\3\2\2\2\u009e\u009f\3\2\2\2\u009f\u00a3"+
		"\3\2\2\2\u00a0\u009e\3\2\2\2\u00a1\u00a3\7\62\2\2\u00a2\u009a\3\2\2\2"+
		"\u00a2\u00a1\3\2\2\2\u00a3\24\3\2\2\2\u00a4\u00a9\7$\2\2\u00a5\u00a8\5"+
		"\27\f\2\u00a6\u00a8\13\2\2\2\u00a7\u00a5\3\2\2\2\u00a7\u00a6\3\2\2\2\u00a8"+
		"\u00ab\3\2\2\2\u00a9\u00aa\3\2\2\2\u00a9\u00a7\3\2\2\2\u00aa\u00ac\3\2"+
		"\2\2\u00ab\u00a9\3\2\2\2\u00ac\u00ad\7$\2\2\u00ad\26\3\2\2\2\u00ae\u00af"+
		"\7^\2\2\u00af\u00b5\7p\2\2\u00b0\u00b1\7^\2\2\u00b1\u00b5\7^\2\2\u00b2"+
		"\u00b3\7^\2\2\u00b3\u00b5\7$\2\2\u00b4\u00ae\3\2\2\2\u00b4\u00b0\3\2\2"+
		"\2\u00b4\u00b2\3\2\2\2\u00b5\30\3\2\2\2\u00b6\u00b7\7*\2\2\u00b7\32\3"+
		"\2\2\2\u00b8\u00b9\7+\2\2\u00b9\34\3\2\2\2\u00ba\u00bb\7]\2\2\u00bb\36"+
		"\3\2\2\2\u00bc\u00bd\7_\2\2\u00bd \3\2\2\2\u00be\u00bf\7}\2\2\u00bf\""+
		"\3\2\2\2\u00c0\u00c1\7\177\2\2\u00c1$\3\2\2\2\u00c2\u00c3\7>\2\2\u00c3"+
		"&\3\2\2\2\u00c4\u00c5\7>\2\2\u00c5\u00c6\7?\2\2\u00c6(\3\2\2\2\u00c7\u00c8"+
		"\7@\2\2\u00c8*\3\2\2\2\u00c9\u00ca\7@\2\2\u00ca\u00cb\7?\2\2\u00cb,\3"+
		"\2\2\2\u00cc\u00cd\7>\2\2\u00cd\u00ce\7>\2\2\u00ce.\3\2\2\2\u00cf\u00d0"+
		"\7@\2\2\u00d0\u00d1\7@\2\2\u00d1\60\3\2\2\2\u00d2\u00d3\7-\2\2\u00d3\62"+
		"\3\2\2\2\u00d4\u00d5\7/\2\2\u00d5\64\3\2\2\2\u00d6\u00d7\7(\2\2\u00d7"+
		"\66\3\2\2\2\u00d8\u00d9\7~\2\2\u00d98\3\2\2\2\u00da\u00db\7(\2\2\u00db"+
		"\u00dc\7(\2\2\u00dc:\3\2\2\2\u00dd\u00de\7~\2\2\u00de\u00df\7~\2\2\u00df"+
		"<\3\2\2\2\u00e0\u00e1\7`\2\2\u00e1>\3\2\2\2\u00e2\u00e3\7#\2\2\u00e3@"+
		"\3\2\2\2\u00e4\u00e5\7\u0080\2\2\u00e5B\3\2\2\2\u00e6\u00e7\7A\2\2\u00e7"+
		"D\3\2\2\2\u00e8\u00e9\7<\2\2\u00e9F\3\2\2\2\u00ea\u00eb\7=\2\2\u00ebH"+
		"\3\2\2\2\u00ec\u00ed\7.\2\2\u00edJ\3\2\2\2\u00ee\u00ef\7?\2\2\u00efL\3"+
		"\2\2\2\u00f0\u00f1\7?\2\2\u00f1\u00f2\7?\2\2\u00f2N\3\2\2\2\u00f3\u00f4"+
		"\7#\2\2\u00f4\u00f5\7?\2\2\u00f5P\3\2\2\2\u00f6\u00f7\7k\2\2\u00f7\u00f8"+
		"\7p\2\2\u00f8\u00f9\7v\2\2\u00f9R\3\2\2\2\u00fa\u00fb\7d\2\2\u00fb\u00fc"+
		"\7q\2\2\u00fc\u00fd\7q\2\2\u00fd\u00fe\7n\2\2\u00feT\3\2\2\2\u00ff\u0100"+
		"\7u\2\2\u0100\u0101\7v\2\2\u0101\u0102\7t\2\2\u0102\u0103\7k\2\2\u0103"+
		"\u0104\7p\2\2\u0104\u0105\7i\2\2\u0105V\3\2\2\2\u0106\u0107\7p\2\2\u0107"+
		"\u0108\7w\2\2\u0108\u0109\7n\2\2\u0109\u010a\7n\2\2\u010aX\3\2\2\2\u010b"+
		"\u010c\7x\2\2\u010c\u010d\7q\2\2\u010d\u010e\7k\2\2\u010e\u010f\7f\2\2"+
		"\u010fZ\3\2\2\2\u0110\u0111\7v\2\2\u0111\u0112\7t\2\2\u0112\u0113\7w\2"+
		"\2\u0113\u0114\7g\2\2\u0114\\\3\2\2\2\u0115\u0116\7h\2\2\u0116\u0117\7"+
		"c\2\2\u0117\u0118\7n\2\2\u0118\u0119\7u\2\2\u0119\u011a\7g\2\2\u011a^"+
		"\3\2\2\2\u011b\u011c\7k\2\2\u011c\u011d\7h\2\2\u011d`\3\2\2\2\u011e\u011f"+
		"\7g\2\2\u011f\u0120\7n\2\2\u0120\u0121\7u\2\2\u0121\u0122\7g\2\2\u0122"+
		"b\3\2\2\2\u0123\u0124\7h\2\2\u0124\u0125\7q\2\2\u0125\u0126\7t\2\2\u0126"+
		"d\3\2\2\2\u0127\u0128\7y\2\2\u0128\u0129\7j\2\2\u0129\u012a\7k\2\2\u012a"+
		"\u012b\7n\2\2\u012b\u012c\7g\2\2\u012cf\3\2\2\2\u012d\u012e\7d\2\2\u012e"+
		"\u012f\7t\2\2\u012f\u0130\7g\2\2\u0130\u0131\7c\2\2\u0131\u0132\7m\2\2"+
		"\u0132h\3\2\2\2\u0133\u0134\7e\2\2\u0134\u0135\7q\2\2\u0135\u0136\7p\2"+
		"\2\u0136\u0137\7v\2\2\u0137\u0138\7k\2\2\u0138\u0139\7p\2\2\u0139\u013a"+
		"\7w\2\2\u013a\u013b\7g\2\2\u013bj\3\2\2\2\u013c\u013d\7t\2\2\u013d\u013e"+
		"\7g\2\2\u013e\u013f\7v\2\2\u013f\u0140\7w\2\2\u0140\u0141\7t\2\2\u0141"+
		"\u0142\7p\2\2\u0142l\3\2\2\2\u0143\u0144\7p\2\2\u0144\u0145\7g\2\2\u0145"+
		"\u0146\7y\2\2\u0146n\3\2\2\2\u0147\u0148\7e\2\2\u0148\u0149\7n\2\2\u0149"+
		"\u014a\7c\2\2\u014a\u014b\7u\2\2\u014b\u014c\7u\2\2\u014cp\3\2\2\2\u014d"+
		"\u014e\7v\2\2\u014e\u014f\7j\2\2\u014f\u0150\7k\2\2\u0150\u0151\7u\2\2"+
		"\u0151r\3\2\2\2\u0152\u0156\t\4\2\2\u0153\u0155\t\5\2\2\u0154\u0153\3"+
		"\2\2\2\u0155\u0158\3\2\2\2\u0156\u0154\3\2\2\2\u0156\u0157\3\2\2\2\u0157"+
		"t\3\2\2\2\u0158\u0156\3\2\2\2\u0159\u015b\t\6\2\2\u015a\u0159\3\2\2\2"+
		"\u015b\u015c\3\2\2\2\u015c\u015a\3\2\2\2\u015c\u015d\3\2\2\2\u015d\u015e"+
		"\3\2\2\2\u015e\u015f\b;\2\2\u015fv\3\2\2\2\u0160\u0162\7\17\2\2\u0161"+
		"\u0163\7\f\2\2\u0162\u0161\3\2\2\2\u0162\u0163\3\2\2\2\u0163\u0166\3\2"+
		"\2\2\u0164\u0166\7\f\2\2\u0165\u0160\3\2\2\2\u0165\u0164\3\2\2\2\u0166"+
		"\u0167\3\2\2\2\u0167\u0168\b<\2\2\u0168x\3\2\2\2\u0169\u016a\7\61\2\2"+
		"\u016a\u016b\7,\2\2\u016b\u016f\3\2\2\2\u016c\u016e\13\2\2\2\u016d\u016c"+
		"\3\2\2\2\u016e\u0171\3\2\2\2\u016f\u0170\3\2\2\2\u016f\u016d\3\2\2\2\u0170"+
		"\u0172\3\2\2\2\u0171\u016f\3\2\2\2\u0172\u0173\7,\2\2\u0173\u0174\7\61"+
		"\2\2\u0174\u0175\3\2\2\2\u0175\u0176\b=\2\2\u0176z\3\2\2\2\u0177\u0178"+
		"\7\61\2\2\u0178\u0179\7\61\2\2\u0179\u017d\3\2\2\2\u017a\u017c\n\7\2\2"+
		"\u017b\u017a\3\2\2\2\u017c\u017f\3\2\2\2\u017d\u017b\3\2\2\2\u017d\u017e"+
		"\3\2\2\2\u017e\u0180\3\2\2\2\u017f\u017d\3\2\2\2\u0180\u0181\b>\2\2\u0181"+
		"|\3\2\2\2\17\2\u0098\u009e\u00a2\u00a7\u00a9\u00b4\u0156\u015c\u0162\u0165"+
		"\u016f\u017d\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}