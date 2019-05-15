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

//I think there must be a more elegant way to do this, but whatever.
//I'll only name the keys of subtrees the focus is interested in.
//Anything else can just be edited as raw text.

addNodeTypeObject({
name:"anyTypeAnnotation",
keys:null
})

addNodeTypeObject({
name:"arrayExpression",
keys:["elements"]
})

addNodeTypeObject({
name:"arrayExpression",
keys:null
})

addNodeTypeObject({
name:"argumentPlaceholder",
keys:null
})

addNodeTypeObject({
name:"arrayPattern",
keys:["elements","decorators","typeAnnotation"]
})

addNodeTypeObject({
name:"arrayTypeAnnotation",
keys:null
})

addNodeTypeObject({
name:"arrowFunctionExpression",
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
name:"assignmenExpression",
keys:["left","operator","right"]
})

addNodeTypeObject({
name:"assignmentPattern",
keys:["left","right"]
})

addNodeTypeObject({
name:"awaitExpression",
keys:["argument"]
})

addNodeTypeObject({
name:"bigIntLiteral",
keys:["value"]
})

addNodeTypeObject({
name:"binaryExpression",
keys:["operator","left","right"]
})

addNodeTypeObject({
name:"bindExpression",
keys:["object","callee"]
})

addNodeTypeObject({
name:"blockStatement",
keys:["body","directives"]
})

addNodeTypeObject({
name:"booleanLiteral",
keys:null
})


addNodeTypeObject({
name:"booleanLteralTypeAnnotation",
keys:null
})


addNodeTypeObject({
name:"breakStatement",
keys:null
})


addNodeTypeObject({
name:"callExpression",
keys:["callee","arguments","optional","typeArguments","typeParameters"]
})

addNodeTypeObject({
name:"catchClause",
keys:["param","body"]
})


addNodeTypeObject({
name:"classDeclaration",
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
name:"classExpression",
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
name:"classImplements",
keys:["id","typeParameters"]
})


addNodeTypeObject({
name:"classMethod",
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
name:"classProperty",
keys:["key","value","typeAnnotation","decorators","computed"]
})


addNodeTypeObject({
name:"conditionalExpression",
keys:["test","consequent","alternate"]
})


addNodeTypeObject({
name:"continueStatement",
keys:["label"]
})


addNodeTypeObject({
name:"debuggerStatement",
keys:null
})


addNodeTypeObject({
name:"declareClass",
keys:["id","typeParameters","body"]
})


addNodeTypeObject({
name:"declareExportDeclaration",
keys:["declaration","specifiers","source"]
})


addNodeTypeObject({
name:"declareFunction",
keys:["id"]
})


addNodeTypeObject({
name:"defaultInterface",
keys:["id","typeParameters","extends","body"]
})


addNodeTypeObject({
name:"declareModule",
keys:["id","body"]
})


addNodeTypeObject({
name:"declareModuleExports",
keys:["typeAnnotation"]
})


addNodeTypeObject({
name:"declareOpaqueType",
keys:["id","typeParameters","right"]
})


addNodeTypeObject({
name:"decalreVariable",
keys:["id"]
})


addNodeTypeObject({
name:"decorator",
keys:["expression"]
})

addNodeTypeObject({
name:"directive",
keys:["value"]
})

addNodeTypeObject({
name:"directiveLiteral",
keys:["value"]
})

addNodeTypeObject({
name:"doExpression",
keys:["body"]
})

addNodeTypeObject({
name:"doWhileStatement",
keys:["test","body"]
})

addNodeTypeObject({
name:"emptyStatement",
keys:null
})

addNodeTypeObject({
name:"emptyTypeAnnotation",
keys:null
})

addNodeTypeObject({
name:"existentialTypeParam",
keys:null
})

addNodeTypeObject({
name:"exportAllDeclaration",
keys:["source"]
})

addNodeTypeObject({
name:"exportDefaultSpecifier",
keys:["exported"]
})

addNodeTypeObject({
name:"exportNamedDeclaration",
keys:["declaration","specifiers","source"]
})

addNodeTypeObject({
name:"exportNamespaceSpecifier",
keys:["exported"]
})


addNodeTypeObject({
name:"exportSpecifier",
keys:["local","exported"]
})


addNodeTypeObject({
name:"expressionStatement",
keys:["expression"]
})


addNodeTypeObject({
name:"file",
keys:["program","comments","tokens"]
})


addNodeTypeObject({
name:"forAwaitStatement",
keys:["left","right","body"]
})


addNodeTypeObject({
name:"forInStatement",
keys:["left","right","body"]
})


addNodeTypeObject({
name:"forOgStatement",
keys:["left","right","body"]
})


addNodeTypeObject({
name:"forStatement",
keys:["init","test","update","body"]
})


addNodeTypeObject({
name:"functionDeclaration",
keys:["id","params","body","generator","async","returnType","typeParameters"]
})


addNodeTypeObject({
name:"functionExpression",
keys:["id","params","body","generator","async","returnType","typeParameters"]
})


addNodeTypeObject({
name:"functionTypeAnnotation",
keys:["typeParameters","params","rest","returnType"]
})


addNodeTypeObject({
name:"functionTypeParam",
keys:["name","typeAnnotation"]
})


addNodeTypeObject({
name:"genericTypeAnnotation",
keys:["id","typeParameters"]
})


addNodeTypeObject({
name:"identifier",
keys:["name","decorators","typeAnnotation"]
})


addNodeTypeObject({
name:"ifStatement",
keys:["test","consequent","alternate"]
})


addNodeTypeObject({
name:"import",
keys:null
})


addNodeTypeObject({
name:"importDeclaration",
keys:["specifiers","source"]
})


addNodeTypeObject({
name:"importDefaultSpecifier",
keys:["local"]
})


addNodeTypeObject({
name:"importNamespaceSpecifier",
keys:["local"]
})


addNodeTypeObject({
name:"importSpecifier",
keys:["local","imported","importKind"]
})


addNodeTypeObject({
name:"interfaceDeclaration",
keys:["id","typeParameters","extends","body"]
})


addNodeTypeObject({
name:"interfaceExtends",
keys:["id","typeParameters"]
})


addNodeTypeObject({
name:"intersectionTypeAnnotation",
keys:["types"]
})


addNodeTypeObject({
name:"jSXAttribute",
keys:["name","value"]
})


addNodeTypeObject({
name:"jSXClosingElement",
keys:["name"]
})


addNodeTypeObject({
name:"jSXElement",
keys:["openingElement","closingElement","children","selfClosing"]
})


addNodeTypeObject({
name:"jSXEmptyExpression",
keys:null
})


addNodeTypeObject({
name:"jSXExpressionContainer",
keys:["expression"]
})


addNodeTypeObject({
name:"jSXIdentifier",
keys:["name"]
})


addNodeTypeObject({
name:"jSXMemberExpression",
keys:["object","property"]
})


addNodeTypeObject({
name:"jSXNamespacedName",
keys:["namespace","name"]
})


addNodeTypeObject({
name:"jSXOpeningElement",
keys:["namespace","name"]
})


addNodeTypeObject({
name:"jSXOpeningElement",
keys:["name","attributes","selfClosing"]
})


addNodeTypeObject({
name:"jSXSpreadAttribute",
keys:["argument"]
})


addNodeTypeObject({
name:"jSXSpreadChild",
keys:["expression"]
})


addNodeTypeObject({
name:"jSXText",
keys:["value"]
})


addNodeTypeObject({
name:"labeledStatement" ,
keys:["label","body"]
})


addNodeTypeObject({
name:"logicalExpression",
keys:["operator","left","right"]
})


addNodeTypeObject({
name:"memberExpression",
keys:["object","property","computed"]
})


addNodeTypeObject({
name:"metaProperty",
keys:["meta","property"]
})


addNodeTypeObject({
name:"mixedTypeAnnotation",
keys:null
})


addNodeTypeObject({
name:"newExpression",
keys:["callee","arguments"]
})


addNodeTypeObject({
name:"noop",
keys:null
})


addNodeTypeObject({
name:"nullLiteral",
keys:null
})


addNodeTypeObject({
name:"nullLiteralTypeAnnotation",
keys:null
})


addNodeTypeObject({
name:"objectExpression",
keys:["properties"]
})


addNodeTypeObject({
name:"objectMethod",
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
name:"objectPattern",
keys:["properties","typeAnnotation","decorators"]
})


addNodeTypeObject({
name:"objectProperty",
keys:["key","value","computed","shorthand","decorators"]
})


addNodeTypeObject({
name:"objectTypeAnnotation",
keys:["properties","indexers","callProperties"]
})


addNodeTypeObject({
name:"objectTypeCallProperty",
keys:["value"]
})


addNodeTypeObject({
name:"objectTypeIndexer",
keys:["id","key","value"]
})


addNodeTypeObject({
name:"objectTypeProperty",
keys:["key","value"]
})


addNodeTypeObject({
name:"objectTypeSpreadProperty",
keys:["argument"]
})


addNodeTypeObject({
name:"opaqueType",
keys:["id","typeParameters","impltype","supertype"]
})


addNodeTypeObject({
name:"parenthesizedExpression",
keys:["expression"]
})


addNodeTypeObject({
name:"program",
keys:["body","directives"]
})


addNodeTypeObject({
name:"quantifiedTypeIdentifier",
keys:["id","quantification"]
})


addNodeTypeObject({
name:"regExpLiteral",
keys:["pattern","flags"]
})


addNodeTypeObject({
name:"restElement",
keys:["argument","typeAnnotation","decorators"]
})


addNodeTypeObject({
name:"restProperty",
keys:["argument"]
})


addNodeTypeObject({
name:"returnStatement",
keys:["argument"]
})


addNodeTypeObject({
name:"sequenceExpression",
keys:["expressions"]
})


addNodeTypeObject({
name:"spreadElement",
keys:["argument"]
})


addNodeTypeObject({
name:"spreadProperty",
keys:["argument"]
})


addNodeTypeObject({
name:"stringLiteral",
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
name:"super",
keys:null
})


addNodeTypeObject({
name:"switchCase",
keys:["test","consequent"]
})


addNodeTypeObject({
name:"switchStatement",
keys:["discriminant","cases"]
})


addNodeTypeObject({
name:"taggedTemplateExpression",
keys:["tag","quasi"]
})


addNodeTypeObject({
name:"templateElement",
keys:["value","tail"]
})


addNodeTypeObject({
name:"templateLiteral",
keys:["quasis","expressions"]
})


addNodeTypeObject({
name:"thisExpression",
keys:null
})


addNodeTypeObject({
name:"thisTypeAnnotation",
keys:null
})


addNodeTypeObject({
name:"throwStatement",
keys:["argument"]
})


addNodeTypeObject({
name:"tryStatement",
keys:["block", "handler","finalizer","body"]
})


addNodeTypeObject({
name:"tupleTypeAnnotation",
keys:["types"]
})


addNodeTypeObject({
name:"typeAlias",
keys:["id","typeParameters","right"]
})


addNodeTypeObject({
name:"typeAnnotation",
keys:["typeAnnotation"]
})


addNodeTypeObject({
name:"typeCastExpression",
keys:["expression","typeAnnotation"]
})


addNodeTypeObject({
name:"typeParameter",
keys:["bound"]
})


addNodeTypeObject({
name:"typeParameterDeclaration",
keys:["params"]
})


addNodeTypeObject({
name:"typeameterInstantiation",
keys:["params"]
})


addNodeTypeObject({
name:"typeofTypeAnnotation",
keys:["argument"]
})


addNodeTypeObject({
name:"unaryExpression",
keys:["operator","argument","prefix"]
})


addNodeTypeObject({
name:"unionTypeAnnotation",
keys:["types"]
})


addNodeTypeObject({
name:"updateExpression",
keys:["operator","argument","prefix"]
})


addNodeTypeObject({
name:"variableDeclaration",
keys:["kind","declarations"]
})


addNodeTypeObject({
name:"variableDeclarator",
keys:["id","init"]
})


addNodeTypeObject({
name:"voidTypeAnnotation",
keys:null
})


addNodeTypeObject({
name:"whileStatement",
keys:["test","body"]
})


addNodeTypeObject({
name:"withStatement",
keys:["object","body"]
})


addNodeTypeObject({
name:"yieldExpression",
keys:["argument","delegate"]
})


