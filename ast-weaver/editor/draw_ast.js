//RANT
//Where should the formatting an interactivity mappings be stored?
//The nodes are created when the parser reads raw code.

//Manual input can edit names, or create fresh code.
//Changing a name is the same as changing the 'data' field in the ast node.
//Replacing a token with more code changes the type of the node to whatever gets parsed.

//The draw stack must be updated when new things are added:
//// Point the current draw node to the new object
//// Recursively build its child nodes.
//RANT

//Contents and structure of the draw tree
//   Draw trees add STATEMENTS to BLOCKS.
//   BLOCKS present STATEMENTS in their order of execution.
//   The FOCUS tracks its position in the statement order.



var drawtree = {

	programroot:null
}

dtNode = function(astNode, par = null){
	this.par=null;
	this.myNode = astNode;
}

var drawTreePlugin = function(babel){

	var t = babel.types;
	return {
		visitor:{
			Identifier: { enter(){ function(path,state){
drawtree
			}}},
		
			Identifier: { enter(){ function(path,state){

			}}}
		}
	};
}

//Maybe dont need this?
//Maybe tranform code snippets, make sub asts, and append thecontents of the bodies to the current position in the current body.
//
//Editing operations:
//Insert mode, start typnig.
//
function makedrawstack( freshAst){	
	//this func walks an ast, constructing appropriate representations, and appends the resulting tree to the current node.

	if(!freshAst.program){
		error( not an ast root!); return;
	}
        checkNode = freshAst.program

	//as it finds types, it opens a rep resentation on a stack.

	//as it steps out of them, it pushes them to a draw list.

	//What matters most is how the object relates to the focus.

	//Representations will be arranged relative to their enclosing scope.

	//Maybe representation promotion may be negotiated through priorities?
		// Its not the node's responsibility to know its relationship to the focus.



		// how is the node traversed in printing? Depth first, or in order?
		children.forEach(child){


		}

}

function drawAst(ast,focus){

/*
	-The drawer walks from the focus, and draws the tree, recursing until functionality is blackboxed by focus rules, like running out of room.
	
	-The tree only represents the code within a line.
	Call expressions encapsulate by default.

	-Users may want to promote literals from within their enclosing scope to be interactable from the scopes of their callers as if they are arguments.

	Does it make sense to add extra arguments?
	-Not neccessary, because they are constants, they will be the same for every call of the function.

	-When you want to click through to mutate an encapsulated thing, you are changing the master copy.
	There may be an operation added to promote a literal or a variable to an adhoc parameter, with a default argument.
*/

	//draw_a_tree(tree, d_region){

	//if leaf
	//if(isLeaf(Tree)){
	drawLeaf(tree);
	 return;
	 }

	//else
	
	 for(int = 0l i < children.length() in tree.childindexmap){
		//tree.childindexmap are ordered. 
		draw_a_tree(tree,drawRegion);
		if()

	}

	}

	function isLeaf(tree){
		switch(tree.type){
		 case 'NumericLiteral':
		 	return true;
		 case 'StringLiteral':
		 	return true;
		 default:
		 	return false;
		 }
		 return false;
	}

}
