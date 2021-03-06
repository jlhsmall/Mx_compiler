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
			null, "'main'", "'.'", "'++'", "'--'", "'*'", "'/'", "'%'", null, null, 
			null, null, "'('", "')'", "'['", "']'", "'{'", "'}'", "'<'", "'<='", 
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
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2?\u017c\b\1\4\2\t"+
		"\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t \4!"+
		"\t!\4\"\t\"\4#\t#\4$\t$\4%\t%\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4+\t+\4"+
		",\t,\4-\t-\4.\t.\4/\t/\4\60\t\60\4\61\t\61\4\62\t\62\4\63\t\63\4\64\t"+
		"\64\4\65\t\65\4\66\t\66\4\67\t\67\48\t8\49\t9\4:\t:\4;\t;\4<\t<\4=\t="+
		"\4>\t>\3\2\3\2\3\2\3\2\3\2\3\3\3\3\3\4\3\4\3\4\3\5\3\5\3\5\3\6\3\6\3\7"+
		"\3\7\3\b\3\b\3\t\3\t\5\t\u0093\n\t\3\n\3\n\7\n\u0097\n\n\f\n\16\n\u009a"+
		"\13\n\3\n\5\n\u009d\n\n\3\13\3\13\3\13\7\13\u00a2\n\13\f\13\16\13\u00a5"+
		"\13\13\3\13\3\13\3\f\3\f\3\f\3\f\3\f\3\f\5\f\u00af\n\f\3\r\3\r\3\16\3"+
		"\16\3\17\3\17\3\20\3\20\3\21\3\21\3\22\3\22\3\23\3\23\3\24\3\24\3\24\3"+
		"\25\3\25\3\26\3\26\3\26\3\27\3\27\3\27\3\30\3\30\3\30\3\31\3\31\3\32\3"+
		"\32\3\33\3\33\3\34\3\34\3\35\3\35\3\35\3\36\3\36\3\36\3\37\3\37\3 \3 "+
		"\3!\3!\3\"\3\"\3#\3#\3$\3$\3%\3%\3&\3&\3\'\3\'\3\'\3(\3(\3(\3)\3)\3)\3"+
		")\3*\3*\3*\3*\3*\3+\3+\3+\3+\3+\3+\3+\3,\3,\3,\3,\3,\3-\3-\3-\3-\3-\3"+
		".\3.\3.\3.\3.\3/\3/\3/\3/\3/\3/\3\60\3\60\3\60\3\61\3\61\3\61\3\61\3\61"+
		"\3\62\3\62\3\62\3\62\3\63\3\63\3\63\3\63\3\63\3\63\3\64\3\64\3\64\3\64"+
		"\3\64\3\64\3\65\3\65\3\65\3\65\3\65\3\65\3\65\3\65\3\65\3\66\3\66\3\66"+
		"\3\66\3\66\3\66\3\66\3\67\3\67\3\67\3\67\38\38\38\38\38\38\39\39\39\3"+
		"9\39\3:\3:\7:\u014f\n:\f:\16:\u0152\13:\3;\6;\u0155\n;\r;\16;\u0156\3"+
		";\3;\3<\3<\5<\u015d\n<\3<\5<\u0160\n<\3<\3<\3=\3=\3=\3=\7=\u0168\n=\f"+
		"=\16=\u016b\13=\3=\3=\3=\3=\3=\3>\3>\3>\3>\7>\u0176\n>\f>\16>\u0179\13"+
		">\3>\3>\4\u00a3\u0169\2?\3\3\5\4\7\5\t\6\13\7\r\b\17\t\21\n\23\13\25\f"+
		"\27\r\31\16\33\17\35\20\37\21!\22#\23%\24\'\25)\26+\27-\30/\31\61\32\63"+
		"\33\65\34\67\359\36;\37= ?!A\"C#E$G%I&K\'M(O)Q*S+U,W-Y.[/]\60_\61a\62"+
		"c\63e\64g\65i\66k\67m8o9q:s;u<w=y>{?\3\2\b\3\2\63;\3\2\62;\4\2C\\c|\6"+
		"\2\62;C\\aac|\4\2\13\13\"\"\4\2\f\f\17\17\2\u0188\2\3\3\2\2\2\2\5\3\2"+
		"\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r\3\2\2\2\2\17\3\2\2\2\2\21"+
		"\3\2\2\2\2\23\3\2\2\2\2\25\3\2\2\2\2\27\3\2\2\2\2\31\3\2\2\2\2\33\3\2"+
		"\2\2\2\35\3\2\2\2\2\37\3\2\2\2\2!\3\2\2\2\2#\3\2\2\2\2%\3\2\2\2\2\'\3"+
		"\2\2\2\2)\3\2\2\2\2+\3\2\2\2\2-\3\2\2\2\2/\3\2\2\2\2\61\3\2\2\2\2\63\3"+
		"\2\2\2\2\65\3\2\2\2\2\67\3\2\2\2\29\3\2\2\2\2;\3\2\2\2\2=\3\2\2\2\2?\3"+
		"\2\2\2\2A\3\2\2\2\2C\3\2\2\2\2E\3\2\2\2\2G\3\2\2\2\2I\3\2\2\2\2K\3\2\2"+
		"\2\2M\3\2\2\2\2O\3\2\2\2\2Q\3\2\2\2\2S\3\2\2\2\2U\3\2\2\2\2W\3\2\2\2\2"+
		"Y\3\2\2\2\2[\3\2\2\2\2]\3\2\2\2\2_\3\2\2\2\2a\3\2\2\2\2c\3\2\2\2\2e\3"+
		"\2\2\2\2g\3\2\2\2\2i\3\2\2\2\2k\3\2\2\2\2m\3\2\2\2\2o\3\2\2\2\2q\3\2\2"+
		"\2\2s\3\2\2\2\2u\3\2\2\2\2w\3\2\2\2\2y\3\2\2\2\2{\3\2\2\2\3}\3\2\2\2\5"+
		"\u0082\3\2\2\2\7\u0084\3\2\2\2\t\u0087\3\2\2\2\13\u008a\3\2\2\2\r\u008c"+
		"\3\2\2\2\17\u008e\3\2\2\2\21\u0092\3\2\2\2\23\u009c\3\2\2\2\25\u009e\3"+
		"\2\2\2\27\u00ae\3\2\2\2\31\u00b0\3\2\2\2\33\u00b2\3\2\2\2\35\u00b4\3\2"+
		"\2\2\37\u00b6\3\2\2\2!\u00b8\3\2\2\2#\u00ba\3\2\2\2%\u00bc\3\2\2\2\'\u00be"+
		"\3\2\2\2)\u00c1\3\2\2\2+\u00c3\3\2\2\2-\u00c6\3\2\2\2/\u00c9\3\2\2\2\61"+
		"\u00cc\3\2\2\2\63\u00ce\3\2\2\2\65\u00d0\3\2\2\2\67\u00d2\3\2\2\29\u00d4"+
		"\3\2\2\2;\u00d7\3\2\2\2=\u00da\3\2\2\2?\u00dc\3\2\2\2A\u00de\3\2\2\2C"+
		"\u00e0\3\2\2\2E\u00e2\3\2\2\2G\u00e4\3\2\2\2I\u00e6\3\2\2\2K\u00e8\3\2"+
		"\2\2M\u00ea\3\2\2\2O\u00ed\3\2\2\2Q\u00f0\3\2\2\2S\u00f4\3\2\2\2U\u00f9"+
		"\3\2\2\2W\u0100\3\2\2\2Y\u0105\3\2\2\2[\u010a\3\2\2\2]\u010f\3\2\2\2_"+
		"\u0115\3\2\2\2a\u0118\3\2\2\2c\u011d\3\2\2\2e\u0121\3\2\2\2g\u0127\3\2"+
		"\2\2i\u012d\3\2\2\2k\u0136\3\2\2\2m\u013d\3\2\2\2o\u0141\3\2\2\2q\u0147"+
		"\3\2\2\2s\u014c\3\2\2\2u\u0154\3\2\2\2w\u015f\3\2\2\2y\u0163\3\2\2\2{"+
		"\u0171\3\2\2\2}~\7o\2\2~\177\7c\2\2\177\u0080\7k\2\2\u0080\u0081\7p\2"+
		"\2\u0081\4\3\2\2\2\u0082\u0083\7\60\2\2\u0083\6\3\2\2\2\u0084\u0085\7"+
		"-\2\2\u0085\u0086\7-\2\2\u0086\b\3\2\2\2\u0087\u0088\7/\2\2\u0088\u0089"+
		"\7/\2\2\u0089\n\3\2\2\2\u008a\u008b\7,\2\2\u008b\f\3\2\2\2\u008c\u008d"+
		"\7\61\2\2\u008d\16\3\2\2\2\u008e\u008f\7\'\2\2\u008f\20\3\2\2\2\u0090"+
		"\u0093\5[.\2\u0091\u0093\5]/\2\u0092\u0090\3\2\2\2\u0092\u0091\3\2\2\2"+
		"\u0093\22\3\2\2\2\u0094\u0098\t\2\2\2\u0095\u0097\t\3\2\2\u0096\u0095"+
		"\3\2\2\2\u0097\u009a\3\2\2\2\u0098\u0096\3\2\2\2\u0098\u0099\3\2\2\2\u0099"+
		"\u009d\3\2\2\2\u009a\u0098\3\2\2\2\u009b\u009d\7\62\2\2\u009c\u0094\3"+
		"\2\2\2\u009c\u009b\3\2\2\2\u009d\24\3\2\2\2\u009e\u00a3\7$\2\2\u009f\u00a2"+
		"\5\27\f\2\u00a0\u00a2\13\2\2\2\u00a1\u009f\3\2\2\2\u00a1\u00a0\3\2\2\2"+
		"\u00a2\u00a5\3\2\2\2\u00a3\u00a4\3\2\2\2\u00a3\u00a1\3\2\2\2\u00a4\u00a6"+
		"\3\2\2\2\u00a5\u00a3\3\2\2\2\u00a6\u00a7\7$\2\2\u00a7\26\3\2\2\2\u00a8"+
		"\u00a9\7^\2\2\u00a9\u00af\7p\2\2\u00aa\u00ab\7^\2\2\u00ab\u00af\7^\2\2"+
		"\u00ac\u00ad\7^\2\2\u00ad\u00af\7$\2\2\u00ae\u00a8\3\2\2\2\u00ae\u00aa"+
		"\3\2\2\2\u00ae\u00ac\3\2\2\2\u00af\30\3\2\2\2\u00b0\u00b1\7*\2\2\u00b1"+
		"\32\3\2\2\2\u00b2\u00b3\7+\2\2\u00b3\34\3\2\2\2\u00b4\u00b5\7]\2\2\u00b5"+
		"\36\3\2\2\2\u00b6\u00b7\7_\2\2\u00b7 \3\2\2\2\u00b8\u00b9\7}\2\2\u00b9"+
		"\"\3\2\2\2\u00ba\u00bb\7\177\2\2\u00bb$\3\2\2\2\u00bc\u00bd\7>\2\2\u00bd"+
		"&\3\2\2\2\u00be\u00bf\7>\2\2\u00bf\u00c0\7?\2\2\u00c0(\3\2\2\2\u00c1\u00c2"+
		"\7@\2\2\u00c2*\3\2\2\2\u00c3\u00c4\7@\2\2\u00c4\u00c5\7?\2\2\u00c5,\3"+
		"\2\2\2\u00c6\u00c7\7>\2\2\u00c7\u00c8\7>\2\2\u00c8.\3\2\2\2\u00c9\u00ca"+
		"\7@\2\2\u00ca\u00cb\7@\2\2\u00cb\60\3\2\2\2\u00cc\u00cd\7-\2\2\u00cd\62"+
		"\3\2\2\2\u00ce\u00cf\7/\2\2\u00cf\64\3\2\2\2\u00d0\u00d1\7(\2\2\u00d1"+
		"\66\3\2\2\2\u00d2\u00d3\7~\2\2\u00d38\3\2\2\2\u00d4\u00d5\7(\2\2\u00d5"+
		"\u00d6\7(\2\2\u00d6:\3\2\2\2\u00d7\u00d8\7~\2\2\u00d8\u00d9\7~\2\2\u00d9"+
		"<\3\2\2\2\u00da\u00db\7`\2\2\u00db>\3\2\2\2\u00dc\u00dd\7#\2\2\u00dd@"+
		"\3\2\2\2\u00de\u00df\7\u0080\2\2\u00dfB\3\2\2\2\u00e0\u00e1\7A\2\2\u00e1"+
		"D\3\2\2\2\u00e2\u00e3\7<\2\2\u00e3F\3\2\2\2\u00e4\u00e5\7=\2\2\u00e5H"+
		"\3\2\2\2\u00e6\u00e7\7.\2\2\u00e7J\3\2\2\2\u00e8\u00e9\7?\2\2\u00e9L\3"+
		"\2\2\2\u00ea\u00eb\7?\2\2\u00eb\u00ec\7?\2\2\u00ecN\3\2\2\2\u00ed\u00ee"+
		"\7#\2\2\u00ee\u00ef\7?\2\2\u00efP\3\2\2\2\u00f0\u00f1\7k\2\2\u00f1\u00f2"+
		"\7p\2\2\u00f2\u00f3\7v\2\2\u00f3R\3\2\2\2\u00f4\u00f5\7d\2\2\u00f5\u00f6"+
		"\7q\2\2\u00f6\u00f7\7q\2\2\u00f7\u00f8\7n\2\2\u00f8T\3\2\2\2\u00f9\u00fa"+
		"\7u\2\2\u00fa\u00fb\7v\2\2\u00fb\u00fc\7t\2\2\u00fc\u00fd\7k\2\2\u00fd"+
		"\u00fe\7p\2\2\u00fe\u00ff\7i\2\2\u00ffV\3\2\2\2\u0100\u0101\7p\2\2\u0101"+
		"\u0102\7w\2\2\u0102\u0103\7n\2\2\u0103\u0104\7n\2\2\u0104X\3\2\2\2\u0105"+
		"\u0106\7x\2\2\u0106\u0107\7q\2\2\u0107\u0108\7k\2\2\u0108\u0109\7f\2\2"+
		"\u0109Z\3\2\2\2\u010a\u010b\7v\2\2\u010b\u010c\7t\2\2\u010c\u010d\7w\2"+
		"\2\u010d\u010e\7g\2\2\u010e\\\3\2\2\2\u010f\u0110\7h\2\2\u0110\u0111\7"+
		"c\2\2\u0111\u0112\7n\2\2\u0112\u0113\7u\2\2\u0113\u0114\7g\2\2\u0114^"+
		"\3\2\2\2\u0115\u0116\7k\2\2\u0116\u0117\7h\2\2\u0117`\3\2\2\2\u0118\u0119"+
		"\7g\2\2\u0119\u011a\7n\2\2\u011a\u011b\7u\2\2\u011b\u011c\7g\2\2\u011c"+
		"b\3\2\2\2\u011d\u011e\7h\2\2\u011e\u011f\7q\2\2\u011f\u0120\7t\2\2\u0120"+
		"d\3\2\2\2\u0121\u0122\7y\2\2\u0122\u0123\7j\2\2\u0123\u0124\7k\2\2\u0124"+
		"\u0125\7n\2\2\u0125\u0126\7g\2\2\u0126f\3\2\2\2\u0127\u0128\7d\2\2\u0128"+
		"\u0129\7t\2\2\u0129\u012a\7g\2\2\u012a\u012b\7c\2\2\u012b\u012c\7m\2\2"+
		"\u012ch\3\2\2\2\u012d\u012e\7e\2\2\u012e\u012f\7q\2\2\u012f\u0130\7p\2"+
		"\2\u0130\u0131\7v\2\2\u0131\u0132\7k\2\2\u0132\u0133\7p\2\2\u0133\u0134"+
		"\7w\2\2\u0134\u0135\7g\2\2\u0135j\3\2\2\2\u0136\u0137\7t\2\2\u0137\u0138"+
		"\7g\2\2\u0138\u0139\7v\2\2\u0139\u013a\7w\2\2\u013a\u013b\7t\2\2\u013b"+
		"\u013c\7p\2\2\u013cl\3\2\2\2\u013d\u013e\7p\2\2\u013e\u013f\7g\2\2\u013f"+
		"\u0140\7y\2\2\u0140n\3\2\2\2\u0141\u0142\7e\2\2\u0142\u0143\7n\2\2\u0143"+
		"\u0144\7c\2\2\u0144\u0145\7u\2\2\u0145\u0146\7u\2\2\u0146p\3\2\2\2\u0147"+
		"\u0148\7v\2\2\u0148\u0149\7j\2\2\u0149\u014a\7k\2\2\u014a\u014b\7u\2\2"+
		"\u014br\3\2\2\2\u014c\u0150\t\4\2\2\u014d\u014f\t\5\2\2\u014e\u014d\3"+
		"\2\2\2\u014f\u0152\3\2\2\2\u0150\u014e\3\2\2\2\u0150\u0151\3\2\2\2\u0151"+
		"t\3\2\2\2\u0152\u0150\3\2\2\2\u0153\u0155\t\6\2\2\u0154\u0153\3\2\2\2"+
		"\u0155\u0156\3\2\2\2\u0156\u0154\3\2\2\2\u0156\u0157\3\2\2\2\u0157\u0158"+
		"\3\2\2\2\u0158\u0159\b;\2\2\u0159v\3\2\2\2\u015a\u015c\7\17\2\2\u015b"+
		"\u015d\7\f\2\2\u015c\u015b\3\2\2\2\u015c\u015d\3\2\2\2\u015d\u0160\3\2"+
		"\2\2\u015e\u0160\7\f\2\2\u015f\u015a\3\2\2\2\u015f\u015e\3\2\2\2\u0160"+
		"\u0161\3\2\2\2\u0161\u0162\b<\2\2\u0162x\3\2\2\2\u0163\u0164\7\61\2\2"+
		"\u0164\u0165\7,\2\2\u0165\u0169\3\2\2\2\u0166\u0168\13\2\2\2\u0167\u0166"+
		"\3\2\2\2\u0168\u016b\3\2\2\2\u0169\u016a\3\2\2\2\u0169\u0167\3\2\2\2\u016a"+
		"\u016c\3\2\2\2\u016b\u0169\3\2\2\2\u016c\u016d\7,\2\2\u016d\u016e\7\61"+
		"\2\2\u016e\u016f\3\2\2\2\u016f\u0170\b=\2\2\u0170z\3\2\2\2\u0171\u0172"+
		"\7\61\2\2\u0172\u0173\7\61\2\2\u0173\u0177\3\2\2\2\u0174\u0176\n\7\2\2"+
		"\u0175\u0174\3\2\2\2\u0176\u0179\3\2\2\2\u0177\u0175\3\2\2\2\u0177\u0178"+
		"\3\2\2\2\u0178\u017a\3\2\2\2\u0179\u0177\3\2\2\2\u017a\u017b\b>\2\2\u017b"+
		"|\3\2\2\2\17\2\u0092\u0098\u009c\u00a1\u00a3\u00ae\u0150\u0156\u015c\u015f"+
		"\u0169\u0177\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}