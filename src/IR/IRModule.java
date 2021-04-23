package IR;

import Backend.Pass;
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
    public IRFunction mainFunc;
    public IRModule() {
        IRStructureType.mod = this;
        GlobalVariableMap = new HashMap<>();
        FunctionMap = new HashMap<>();
        StructureMap = new HashMap<>();

        IRStructure StringStruct = new IRStructure(this);
        StringStruct.name = "string";
        StringStruct.nameList.add("value");
        StringStruct.typeList.add(new IRPointerType(new IRI8Type()));
        StructureMap.put("string",StringStruct);

        IRStructure ArrayStruct = new IRStructure(this);
        ArrayStruct.name = "array";
        StructureMap.put("array",ArrayStruct);

        IRFunction printFunc = new IRFunction(this);
        printFunc.isExternal = true;
        printFunc.name = "print";
        printFunc.retType = new IRVoidType();
        printFunc.arguments.add(new Argument(new IRStringType(), "str"));
        FunctionMap.put("print", printFunc);

        IRFunction printlnFunc = new IRFunction(this);
        printlnFunc.isExternal = true;
        printlnFunc.name = "println";
        printlnFunc.retType = new IRVoidType();
        printlnFunc.arguments.add(new Argument(new IRStringType(), "str"));
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
        getStringFunc.retType = new IRStringType();
        FunctionMap.put("getString", getStringFunc);

        IRFunction getIntFunc = new IRFunction(this);
        getIntFunc.isExternal = true;
        getIntFunc.name = "getInt";
        getIntFunc.retType = new IRI32Type();
        FunctionMap.put("getInt", getIntFunc);

        IRFunction toStringFunc = new IRFunction(this);
        toStringFunc.isExternal = true;
        toStringFunc.name = "toString";
        toStringFunc.retType = new IRStringType();
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
        stringAddFunc.retType = new IRStringType();
        stringAddFunc.arguments.add(new Argument(new IRStringType(), "str1"));
        stringAddFunc.arguments.add(new Argument(new IRStringType(), "str2"));
        FunctionMap.put("stringAdd", stringAddFunc);

        IRFunction stringEqFunc = new IRFunction(this);
        stringEqFunc.isExternal = true;
        stringEqFunc.name = "stringEq";
        stringEqFunc.retType = new IRI1Type();
        stringEqFunc.arguments.add(new Argument(new IRStringType(), "str1"));
        stringEqFunc.arguments.add(new Argument(new IRStringType(), "str2"));
        FunctionMap.put("stringEq", stringEqFunc);

        IRFunction stringNeFunc = new IRFunction(this);
        stringNeFunc.isExternal = true;
        stringNeFunc.name = "stringNe";
        stringNeFunc.retType = new IRI1Type();
        stringNeFunc.arguments.add(new Argument(new IRStringType(), "str1"));
        stringNeFunc.arguments.add(new Argument(new IRStringType(), "str2"));
        FunctionMap.put("stringNe", stringNeFunc);

        IRFunction stringGeFunc = new IRFunction(this);
        stringGeFunc.isExternal = true;
        stringGeFunc.name = "stringGe";
        stringGeFunc.retType = new IRI1Type();
        stringGeFunc.arguments.add(new Argument(new IRStringType(), "str1"));
        stringGeFunc.arguments.add(new Argument(new IRStringType(), "str2"));
        FunctionMap.put("stringGe", stringGeFunc);

        IRFunction stringGtFunc = new IRFunction(this);
        stringGtFunc.isExternal = true;
        stringGtFunc.name = "stringGt";
        stringGtFunc.retType = new IRI1Type();
        stringGtFunc.arguments.add(new Argument(new IRStringType(), "str1"));
        stringGtFunc.arguments.add(new Argument(new IRStringType(), "str2"));
        FunctionMap.put("stringGt", stringGeFunc);

        IRFunction stringLeFunc = new IRFunction(this);
        stringLeFunc.isExternal = true;
        stringLeFunc.name = "stringLe";
        stringLeFunc.retType = new IRI1Type();
        stringLeFunc.arguments.add(new Argument(new IRStringType(), "str1"));
        stringLeFunc.arguments.add(new Argument(new IRStringType(), "str2"));
        FunctionMap.put("stringLe", stringLeFunc);

        IRFunction stringLtFunc = new IRFunction(this);
        stringLtFunc.isExternal = true;
        stringLtFunc.name = "stringLt";
        stringLtFunc.retType = new IRI1Type();
        stringLtFunc.arguments.add(new Argument(new IRStringType(), "str1"));
        stringLtFunc.arguments.add(new Argument(new IRStringType(), "str2"));
        FunctionMap.put("stringLt", stringLeFunc);

        IRFunction StringLengthFunc = new IRFunction(this);
        StringLengthFunc.isExternal = true;
        StringLengthFunc.name = "string__length";
        StringLengthFunc.retType = new IRI32Type();
        StringLengthFunc.arguments.add(new Argument(new IRStringType(), "str"));
        FunctionMap.put("string__length", StringLengthFunc);

        IRFunction StringSubstringFunc = new IRFunction(this);
        StringSubstringFunc.isExternal = true;
        StringSubstringFunc.name = "string__substring";
        StringSubstringFunc.retType = new IRStringType();
        StringSubstringFunc.arguments.add(new Argument(new IRStringType(), "str"));
        StringSubstringFunc.arguments.add(new Argument(new IRI32Type(), "left"));
        StringSubstringFunc.arguments.add(new Argument(new IRI32Type(), "right"));
        FunctionMap.put("string__length", StringSubstringFunc);

        IRFunction StringParseIntFunc = new IRFunction(this);
        StringParseIntFunc.isExternal = true;
        StringParseIntFunc.name = "string__parseInt";
        StringParseIntFunc.retType = new IRI32Type();
        StringParseIntFunc.arguments.add(new Argument(new IRStringType(), "str"));
        FunctionMap.put("string__parseInt", StringParseIntFunc);

        IRFunction StringOrdFunc = new IRFunction(this);
        StringOrdFunc.isExternal = true;
        StringOrdFunc.name = "string__ord";
        StringOrdFunc.retType = new IRI32Type();
        StringOrdFunc.arguments.add(new Argument(new IRStringType(), "str"));
        StringOrdFunc.arguments.add(new Argument(new IRI32Type(), "pos"));
        FunctionMap.put("string__ord", StringOrdFunc);

        IRFunction ArraySizeFunc = new IRFunction(this);
        ArraySizeFunc.isExternal = true;
        ArraySizeFunc.name = "array__size";
        ArraySizeFunc.retType = new IRI32Type();
        ArraySizeFunc.arguments.add(new Argument(new IRPointerType(new IRI8Type()), "arr"));
        FunctionMap.put("array__size", ArraySizeFunc);
    }

    public void accept(Pass pass) {
        pass.visit(this);
    }
}
