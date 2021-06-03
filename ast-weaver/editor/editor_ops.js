
function toSnippet(cutting){
        let dummy=Babel.transform("",{ast:true});
	dummy.ast.body.push(epressionNode);
	return Babel.transform(dummy.ast);
}

//store-ification
function storeify(expressionNode,name){
	let t=Babel.types;
	declNode=t.variableDeclaration("let",[t.variableDeclarator(name,expressionNode)]);
	return declNode;
}
//funcification

function funcify(expression,name){
	let t=Babel.types;
        declNode=t.functionDeclaration(name,[],t.blockStatement([
	t.returnStatement(expressionNode)],[]));
	return declNode;
}
