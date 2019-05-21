var typeList={};

function addNewNodeTypeObject(typename,keylist){
    typeList[typename]={name:typename,keys:keylist};
};

function addNodeTypeObject(object){
    typeList[object.name]=object;
};

/* Template:

addNodeTypeObject({
name:"",
keys:[]
})

*/


//Here, each nodes has a list of keys. 
//The children are printed in the order of the keys.
//It is the responsibility of this file to keep the syntax
//as represented in the dom unswizzled.
//
//
// strings we care about  (Where the names are)
//
// Identifier.name
// jSXIdentifier[name]
// jSXText[value]
// regExpLiteral[pattern, flags]
// program[sourceFile]
// TSTypeParameter[name]
// typeParameter[name]
//

ast_PrintableNodes={
	
	Identifier:"name",
	JSXIdentifier:"name",
	JSXText:"value",
	RegExpLiteral:["pattern,flags"],
	//program:"sourceFile",
	TSTypeParameter:"name",
	TypeParameter:"name",

	//Lits and Ops,
	BigIntLiteral:"value",
	BooleanLiteral:"value",
	DirectiveLiteral:"value",
	NullLiteral:"value",           //Special case! just print null!
	NumberLiteral:"value",
	NumericLiteral:"value",
	RegExpLiteral:"value",
	StringLiteral:"value",
	BinaryExpression:"operator",
//	BinaryExpression:["left","operator","right"],
	LogicalExpression:"operator",
	UpdateExpression:"operator",//.+ prefix?",
	UnaryExpression:"operator",//,  prefix ?",

	StringTypeAnnotation:"value",
	InterpreterDirective:"value",

	// String node types with limited valid token sets, which are good for easy multichoice traversal.

	//All the kinds, which form a limited grammar,
	ClassMethod:"kind",
	DeclareExportAllDeclaration:"exportKind",
	DeclareNModule:"kind",
	ImportSpecifier:"importKind",
	ObjectMethod:"kind",
	ObjectTypeProperty:"kind",
	TSDeclareMethod:"kind",
	VariableDeclaration:"kind",
	Variance:"kind",

	//Also, limited options for:
	ClassMethod:"access",
	ClassMethod:"accessibility",
	TSDeclareMethod:"access",
	TSDeclareMethod:"accessibility",
	TSParameterProperty:"accessibility",
	ClassProperty:"accessibility",// public private protected
	DeclareExportDeclaration:"exportKind",

	// Additionally:
	ImportSpecifier:"importKind",
	Program:"sourceType"// script|module,
	//program:"sourceFile",
};


//I think there must be a more elegant way to do this, but whatever.
//I'll only name the keys of subtrees the focus is interested in.
//Anything else can just be edited as raw text.

addNodeTypeObject({
name:"AnyTypeAnnotation",
keys:null
})

addNodeTypeObject({
name:"ArrayExpression",
keys:["elements"]
})

addNodeTypeObject({
name:"ArgumentPlaceholder",
keys:null
})

addNodeTypeObject({
name:"ArrayPattern",
keys:["elements","decorators","typeAnnotation"]
})

addNodeTypeObject({
name:"ArrayTypeAnnotation",
keys:null
})

addNodeTypeObject({
name:"ArrowFunctionExpression",
keys:[
"params",
"body",
"async",
"expression",
"generator",
"returnType",
"typeParameters"
]
})

addNodeTypeObject({
name:"AssignmenExpression",
keys:["left","operator","right"]
})

addNodeTypeObject({
name:"AssignmentPattern",
keys:["left","right"]
})

addNodeTypeObject({
name:"AwaitExpression",
keys:["argument"]
})

addNodeTypeObject({
name:"BigIntLiteral",
keys:["value"]
})

addNodeTypeObject({
name:"BinaryExpression",
keys:["left","operator","right"]
})

addNodeTypeObject({
name:"BindExpression",
keys:["object","callee"]
})

addNodeTypeObject({
name:"BlockStatement",
keys:["body","directives"]
})

addNodeTypeObject({
name:"BooleanLiteral",
keys:["true"]
})


addNodeTypeObject({
name:"BooleanLteralTypeAnnotation",
keys:null
})


addNodeTypeObject({
name:"BreakStatement",
keys:null
})


addNodeTypeObject({
name:"CallExpression",
keys:[
"callee",
"arguments",
"optional",
"typeArguments",
"typeParameters"
]
})

addNodeTypeObject({
name:"CatchClause",
keys:["param","body"]
})


addNodeTypeObject({
name:"ClassDeclaration",
keys:[
"id",
"superClass",
"body",
"decorators",
"abstract",
"declare",
"implements",
"mixins",
"superTypeParameters",
"typeParameters"
]
})


addNodeTypeObject({
name:"ClassExpression",
keys:[
"id",
"superClass",
"body",
"decorators",
"abstract",
"declare",
"implements",
"mixins",
"superTypeParameters",
"typeParameters"
]
})


addNodeTypeObject({
name:"ClassImplements",
keys:["id","typeParameters"]
})


addNodeTypeObject({
name:"ClassMethod",
keys:[
"kind",
"key",
"params",
"body",
"computed",
"static",
"async",
"decorators",
"generator",
"returntype",
"typeParameters"
]
})


addNodeTypeObject({
name:"ClassProperty",
keys:["key","value","typeAnnotation","decorators","computed"]
})


addNodeTypeObject({
name:"ConditionalExpression",
keys:["test","consequent","alternate"]
})


addNodeTypeObject({
name:"ContinueStatement",
keys:["label"]
})


addNodeTypeObject({
name:"DebuggerStatement",
keys:null
})


addNodeTypeObject({
name:"DeclareClass",
keys:["id","typeParameters","body"]
})


addNodeTypeObject({
name:"DeclareExportDeclaration",
keys:["declaration","specifiers","source"]
})


addNodeTypeObject({
name:"DeclareFunction",
keys:["id"]
})


addNodeTypeObject({
name:"DefaultInterface",
keys:["id","typeParameters","extends","body"]
})


addNodeTypeObject({
name:"DeclareModule",
keys:["id","body"]
})


addNodeTypeObject({
name:"DeclareModuleExports",
keys:["typeAnnotation"]
})


addNodeTypeObject({
name:"DeclareOpaqueType",
keys:["id","typeParameters","right"]
})


addNodeTypeObject({
name:"DecalreVariable",
keys:["id"]
})


addNodeTypeObject({
name:"Decorator",
keys:["expression"]
})

addNodeTypeObject({
name:"Directive",
keys:["value"]
})

addNodeTypeObject({
name:"DirectiveLiteral",
keys:["value"]
})

addNodeTypeObject({
name:"DoExpression",
keys:["body"]
})

addNodeTypeObject({
name:"DoWhileStatement",
keys:["test","body"]
})

addNodeTypeObject({
name:"EmptyStatement",
keys:null
})

addNodeTypeObject({
name:"EmptyTypeAnnotation",
keys:null
})

addNodeTypeObject({
name:"ExistentialTypeParam",
keys:null
})

addNodeTypeObject({
name:"ExportAllDeclaration",
keys:["source"]
})

addNodeTypeObject({
name:"ExportDefaultSpecifier",
keys:["exported"]
})

addNodeTypeObject({
name:"ExportNamedDeclaration",
keys:["declaration","specifiers","source"]
})

addNodeTypeObject({
name:"ExportNamespaceSpecifier",
keys:["exported"]
})


addNodeTypeObject({
name:"ExportSpecifier",
keys:["local","exported"]
})


addNodeTypeObject({
name:"ExpressionStatement",
keys:["expression"]
})


addNodeTypeObject({
name:"File",
keys:["program","comments","tokens"]
})


addNodeTypeObject({
name:"ForAwaitStatement",
keys:["left","right","body"]
})


addNodeTypeObject({
name:"ForInStatement",
keys:["left","right","body"]
})


addNodeTypeObject({
name:"ForOfStatement",
keys:["left","right","body"]
})


addNodeTypeObject({
name:"ForStatement",
keys:["init","test","update","body"]
})


addNodeTypeObject({
name:"FunctionDeclaration",
keys:[
"id",
"params",
"body",
"generator",
"async",
"returnType",
"typeParameters"
]
})


addNodeTypeObject({
name:"FunctionExpression",
keys:[
"id",
"params",
"body",
"generator",
"async",
"returnType",
"typeParameters"
]
})


addNodeTypeObject({
name:"FunctionTypeAnnotation",
keys:["typeParameters","params","rest","returnType"]
})


addNodeTypeObject({
name:"FunctionTypeParam",
keys:["name","typeAnnotation"]
})


addNodeTypeObject({
name:"GenericTypeAnnotation",
keys:["id","typeParameters"]
})


addNodeTypeObject({
name:"Identifier",
keys:["name","decorators","typeAnnotation"]
})


addNodeTypeObject({
name:"IfStatement",
keys:["test","consequent","alternate"]
})


addNodeTypeObject({
name:"Import",
keys:null
})


addNodeTypeObject({
name:"ImportDeclaration",
keys:["specifiers","source"]
})


addNodeTypeObject({
name:"ImportDefaultSpecifier",
keys:["local"]
})


addNodeTypeObject({
name:"ImportNamespaceSpecifier",
keys:["local"]
})


addNodeTypeObject({
name:"ImportSpecifier",
keys:["local","imported","importKind"]
})


addNodeTypeObject({
name:"InterfaceDeclaration",
keys:["id","typeParameters","extends","body"]
})


addNodeTypeObject({
name:"InterfaceExtends",
keys:["id","typeParameters"]
})


addNodeTypeObject({
name:"IntersectionTypeAnnotation",
keys:["types"]
})


addNodeTypeObject({
name:"JSXAttribute",
keys:["name","value"]
})


addNodeTypeObject({
name:"JSXClosingElement",
keys:["name"]
})


addNodeTypeObject({
name:"JSXElement",
keys:["openingElement","closingElement","children","selfClosing"]
})


addNodeTypeObject({
name:"JSXEmptyExpression",
keys:null
})


addNodeTypeObject({
name:"JSXExpressionContainer",
keys:["expression"]
})


addNodeTypeObject({
name:"JSXIdentifier",
keys:["name"]
})


addNodeTypeObject({
name:"JSXMemberExpression",
keys:["object","property"]
})


addNodeTypeObject({
name:"JSXNamespacedName",
keys:["namespace","name"]
})


addNodeTypeObject({
name:"JSXOpeningElement",
keys:["namespace","name"]
})


addNodeTypeObject({
name:"JSXOpeningElement",
keys:["name","attributes","selfClosing"]
})


addNodeTypeObject({
name:"JSXSpreadAttribute",
keys:["argument"]
})


addNodeTypeObject({
name:"JSXSpreadChild",
keys:["expression"]
})


addNodeTypeObject({
name:"JSXText",
keys:["value"]
})


addNodeTypeObject({
name:"LabeledStatement" ,
keys:["label","body"]
})


addNodeTypeObject({
name:"LogicalExpression",
keys:["left",,"operator","right"]
})


addNodeTypeObject({
name:"MemberExpression",
keys:["object","property","computed"]
})


addNodeTypeObject({
name:"MetaProperty",
keys:["meta","property"]
})


addNodeTypeObject({
name:"MixedTypeAnnotation",
keys:null
})


addNodeTypeObject({
name:"NewExpression",
keys:["callee","arguments"]
})


addNodeTypeObject({
name:"Noop",
keys:null
})


addNodeTypeObject({
name:"NullLiteral",
keys:null
})


addNodeTypeObject({
name:"NullLiteralTypeAnnotation",
keys:null
})


addNodeTypeObject({
name:"NumberLiteral",
keys:["value"]
})


addNodeTypeObject({
name:"NumericLiteral",
keys:["value"]
})


addNodeTypeObject({
name:"ObjectExpression",
keys:["properties"]
})


addNodeTypeObject({
name:"ObjectMethod",
keys:[
"kind",
"key",
"params",
"body",
"computed",
"async",
"decorators",
"generator",
"returnType",
"typeParameters"
]
})


addNodeTypeObject({
name:"ObjectPattern",
keys:["properties","typeAnnotation","decorators"]
})


addNodeTypeObject({
name:"ObjectProperty",
keys:["key","value","computed","shorthand","decorators"]
})


addNodeTypeObject({
name:"ObjectTypeAnnotation",
keys:["properties","indexers","callProperties"]
})


addNodeTypeObject({
name:"ObjectTypeCallProperty",
keys:["value"]
})


addNodeTypeObject({
name:"ObjectTypeIndexer",
keys:["id","key","value"]
})


addNodeTypeObject({
name:"ObjectTypeProperty",
keys:["key","value"]
})


addNodeTypeObject({
name:"ObjectTypeSpreadProperty",
keys:["argument"]
})


addNodeTypeObject({
name:"OpaqueType",
keys:["id","typeParameters","impltype","supertype"]
})


addNodeTypeObject({
name:"ParenthesizedExpression",
keys:["expression"]
})


addNodeTypeObject({
name:"Program",
keys:["body","directives"]
})


addNodeTypeObject({
name:"QuantifiedTypeIdentifier",
keys:["id","quantification"]
})


addNodeTypeObject({
name:"RegExpLiteral",
keys:["pattern","flags"]
})


addNodeTypeObject({
name:"RestElement",
keys:["argument","typeAnnotation","decorators"]
})


addNodeTypeObject({
name:"RestProperty",
keys:["argument"]
})


addNodeTypeObject({
name:"ReturnStatement",
keys:["argument"]
})


addNodeTypeObject({
name:"SequenceExpression",
keys:["expressions"]
})


addNodeTypeObject({
name:"SpreadElement",
keys:["argument"]
})


addNodeTypeObject({
name:"SpreadProperty",
keys:["argument"]
})


addNodeTypeObject({
name:"StringLiteral",
keys:["value"]
})


addNodeTypeObject({
name:"StringLiteralTypeAnnotation",
keys:null
})


addNodeTypeObject({
name:"StringTypeAnnotation",
keys:null
})


addNodeTypeObject({
name:"Super",
keys:null
})


addNodeTypeObject({
name:"SwitchCase",
keys:["test","consequent"]
})


addNodeTypeObject({
name:"SwitchStatement",
keys:["discriminant","cases"]
})


addNodeTypeObject({
name:"TaggedTemplateExpression",
keys:["tag","quasi"]
})


addNodeTypeObject({
name:"TemplateElement",
keys:["value","tail"]
})


addNodeTypeObject({
name:"TemplateLiteral",
keys:["quasis","expressions"]
})


addNodeTypeObject({
name:"ThisExpression",
keys:null
})


addNodeTypeObject({
name:"ThisTypeAnnotation",
keys:null
})


addNodeTypeObject({
name:"ThrowStatement",
keys:["argument"]
})


addNodeTypeObject({
name:"TryStatement",
keys:["block", "handler","finalizer","body"]
})


addNodeTypeObject({
name:"TupleTypeAnnotation",
keys:["types"]
})


addNodeTypeObject({
name:"TypeAlias",
keys:["id","typeParameters","right"]
})


addNodeTypeObject({
name:"TypeAnnotation",
keys:["typeAnnotation"]
})


addNodeTypeObject({
name:"TypeCastExpression",
keys:["expression","typeAnnotation"]
})


addNodeTypeObject({
name:"TypeParameter",
keys:["bound"]
})


addNodeTypeObject({
name:"TypeParameterDeclaration",
keys:["params"]
})


addNodeTypeObject({
name:"TypeParameterInstantiation",
keys:["params"]
})


addNodeTypeObject({
name:"TypeofTypeAnnotation",
keys:["argument"]
})


addNodeTypeObject({
name:"UnaryExpression",
keys:["operator","argument","prefix"]
})


addNodeTypeObject({
name:"UnionTypeAnnotation",
keys:["types"]
})


addNodeTypeObject({
name:"UpdateExpression",
keys:["operator","argument","prefix"]
})


addNodeTypeObject({
name:"VariableDeclaration",
keys:["kind","declarations"]
})


addNodeTypeObject({
name:"VariableDeclarator",
keys:["id","init"]
})


addNodeTypeObject({
name:"VoidTypeAnnotation",
keys:null
})


addNodeTypeObject({
name:"WhileStatement",
keys:["test","body"]
})


addNodeTypeObject({
name:"WithStatement",
keys:["object","body"]
})


addNodeTypeObject({
name:"YieldExpression",
keys:["argument","delegate"]
})


