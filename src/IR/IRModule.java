package IR;

import IR.IRType.*;
import IR.entity.Argument;
import IR.entity.GlobalVariable;

import java.util.HashMap;

/**
 * @author Jlhsmall
 * @date 2021/3/7 19:42
 */
public class IRModule {
    public HashMap<String, GlobalVariable> GlobalVariableMap;
    public HashMap<String, IRFunction> FunctionMap;
    public HashMap<String, IRStructure> StructureMap;

    public IRModule() {
        GlobalVariableMap = new HashMap<>();
        FunctionMap = new HashMap<>();
        StructureMap = new HashMap<>();

        IRStructure StringStruct = new IRStructure(this);
        StringStruct.nameList.add("value");
        StringStruct.typeList.add(new IRPointerType(new IRI8Type()));

        IRFunction printFunc = new IRFunction(this);
        printFunc.isExternal = true;
        printFunc.name = "print";
        printFunc.retType = new IRVoidType();
        printFunc.arguments.add(new Argument(new IRStringType(this), "str"));
        FunctionMap.put("print", printFunc);

        IRFunction printlnFunc = new IRFunction(this);
        printlnFunc.isExternal = true;
        printlnFunc.name = "println";
        printlnFunc.retType = new IRVoidType();
        printlnFunc.arguments.add(new Argument(new IRStringType(this), "str"));
        FunctionMap.put("println", printlnFunc);

        IRFunction printIntFunc = new IRFunction(this);
        printIntFunc.isExternal = true;
        printIntFunc.name = "printInt";
        printIntFunc.retType = new IRVoidType();
        printIntFunc.arguments.add(new Argument(new IRI32Type(), "n"));
        FunctionMap.put("printInt", printIntFunc);

        IRFunction printlnIntFunc = new IRFunction(this);
        printlnIntFunc.isExternal = true;
        printlnIntFunc.name = "printlnInt";
        printlnIntFunc.retType = new IRVoidType();
        printlnIntFunc.arguments.add(new Argument(new IRI32Type(), "n"));
        FunctionMap.put("printlnInt", printlnIntFunc);

        IRFunction getStringFunc = new IRFunction(this);
        getStringFunc.isExternal = true;
        getStringFunc.name = "getString";
        getStringFunc.retType = new IRStringType(this);
        FunctionMap.put("getString", getStringFunc);

        IRFunction getIntFunc = new IRFunction(this);
        getIntFunc.isExternal = true;
        getIntFunc.name = "getInt";
        getIntFunc.retType = new IRI32Type();
        FunctionMap.put("getInt", getIntFunc);

        IRFunction toStringFunc = new IRFunction(this);
        toStringFunc.isExternal = true;
        toStringFunc.name = "toString";
        toStringFunc.retType = new IRStringType(this);
        toStringFunc.arguments.add(new Argument(new IRI32Type(), "i"));
        FunctionMap.put("toString", toStringFunc);

        IRFunction mallocFunc = new IRFunction(this);
        mallocFunc.isExternal = true;
        mallocFunc.name = "malloc";
        mallocFunc.retType = new IRPointerType(new IRI8Type());
        mallocFunc.arguments.add(new Argument(new IRI32Type(), "size"));
        FunctionMap.put("malloc", mallocFunc);

        IRFunction stringAddFunc = new IRFunction(this);
        stringAddFunc.isExternal = true;
        stringAddFunc.name = "stringAdd";
        stringAddFunc.retType = new IRStringType(this);
        stringAddFunc.arguments.add(new Argument(new IRStringType(this), "str1"));
        stringAddFunc.arguments.add(new Argument(new IRStringType(this), "str2"));
        FunctionMap.put("stringAdd", stringAddFunc);

        IRFunction stringEqFunc = new IRFunction(this);
        stringEqFunc.isExternal = true;
        stringEqFunc.name = "stringEq";
        stringEqFunc.retType = new IRI1Type();
        stringEqFunc.arguments.add(new Argument(new IRStringType(this), "str1"));
        stringEqFunc.arguments.add(new Argument(new IRStringType(this), "str2"));
        FunctionMap.put("stringEq", stringEqFunc);

        IRFunction stringNeFunc = new IRFunction(this);
        stringNeFunc.isExternal = true;
        stringNeFunc.name = "stringNe";
        stringNeFunc.retType = new IRI1Type();
        stringNeFunc.arguments.add(new Argument(new IRStringType(this), "str1"));
        stringNeFunc.arguments.add(new Argument(new IRStringType(this), "str2"));
        FunctionMap.put("stringNe", stringNeFunc);

        IRFunction stringGeFunc = new IRFunction(this);
        stringGeFunc.isExternal = true;
        stringGeFunc.name = "stringGe";
        stringGeFunc.retType = new IRI1Type();
        stringGeFunc.arguments.add(new Argument(new IRStringType(this), "str1"));
        stringGeFunc.arguments.add(new Argument(new IRStringType(this), "str2"));
        FunctionMap.put("stringGe", stringGeFunc);

        IRFunction stringGtFunc = new IRFunction(this);
        stringGtFunc.isExternal = true;
        stringGtFunc.name = "stringGt";
        stringGtFunc.retType = new IRI1Type();
        stringGtFunc.arguments.add(new Argument(new IRStringType(this), "str1"));
        stringGtFunc.arguments.add(new Argument(new IRStringType(this), "str2"));
        FunctionMap.put("stringGt", stringGeFunc);

        IRFunction stringLeFunc = new IRFunction(this);
        stringLeFunc.isExternal = true;
        stringLeFunc.name = "stringLe";
        stringLeFunc.retType = new IRI1Type();
        stringLeFunc.arguments.add(new Argument(new IRStringType(this), "str1"));
        stringLeFunc.arguments.add(new Argument(new IRStringType(this), "str2"));
        FunctionMap.put("stringLe", stringLeFunc);

        IRFunction stringLtFunc = new IRFunction(this);
        stringLtFunc.isExternal = true;
        stringLtFunc.name = "stringLt";
        stringLtFunc.retType = new IRI1Type();
        stringLtFunc.arguments.add(new Argument(new IRStringType(this), "str1"));
        stringLtFunc.arguments.add(new Argument(new IRStringType(this), "str2"));
        FunctionMap.put("stringLt", stringLeFunc);

        IRFunction StringLengthFunc = new IRFunction(this);
        StringLengthFunc.isExternal = true;
        StringLengthFunc.name = "string.length";
        StringLengthFunc.retType = new IRI32Type();
        StringLengthFunc.arguments.add(new Argument(new IRStringType(this), "this"));
        FunctionMap.put("string.length", StringLengthFunc);

        IRFunction StringSubstringFunc = new IRFunction(this);
        StringSubstringFunc.isExternal = true;
        StringSubstringFunc.name = "string.substring";
        StringSubstringFunc.retType = new IRStringType(this);
        StringSubstringFunc.arguments.add(new Argument(new IRStringType(this), "this"));
        StringSubstringFunc.arguments.add(new Argument(new IRI32Type(), "left"));
        StringSubstringFunc.arguments.add(new Argument(new IRI32Type(), "right"));
        FunctionMap.put("string.length", StringSubstringFunc);

        IRFunction StringParseIntFunc = new IRFunction(this);
        StringParseIntFunc.isExternal = true;
        StringParseIntFunc.name = "string.parseInt";
        StringParseIntFunc.retType = new IRI32Type();
        StringParseIntFunc.arguments.add(new Argument(new IRStringType(this), "this"));
        FunctionMap.put("string.parseInt", StringParseIntFunc);

        IRFunction StringOrdFunc = new IRFunction(this);
        StringOrdFunc.isExternal = true;
        StringOrdFunc.name = "string.parseInt";
        StringOrdFunc.retType = new IRI32Type();
        StringOrdFunc.arguments.add(new Argument(new IRStringType(this), "this"));
        StringOrdFunc.arguments.add(new Argument(new IRI32Type(), "pos"));
        FunctionMap.put("string.parseInt", StringOrdFunc);

        IRFunction ArraySizeFunc = new IRFunction(this);
        ArraySizeFunc.isExternal = true;
        ArraySizeFunc.name = "array.size";
        ArraySizeFunc.retType = new IRI32Type();
        ArraySizeFunc.arguments.add(new Argument(new IRPointerType(new IRI8Type()), "arr"));
        FunctionMap.put("array.size", ArraySizeFunc);
    }

    public void accept(Pass pass) {
        pass.visit(this);
    }
}
