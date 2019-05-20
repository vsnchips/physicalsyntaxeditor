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

/*
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
*/

//Maybe dont need this?
//
//Maybe tranform code snippets, make sub asts, and append the contents of the bodies to the current position in the current body.

//
//Editing operations:
//Insert mode, start typing.
//


function focusToDiv(focus,thediv){
	thediv=document.createElement("DIV");

	//walk the ast
	let containingArray=focus.viewRoot;

	let addStatement=(statement)=>{}

	for (i=0; i<containingArray.length;i++){
	thediv.appendChild()
	}
}

function blockLevelObject(node){
	newdiv = document.createElement("DIV");
	

}

//
// TODO: TSTypes? 
//  ???
/*
 * It seems important to minimise representation of container nodes that do not contain mappable tokens.*/

// There are two aspects of the code to monitor. The names, and the structure they sit in.
// Some nodes include syntax, others dont. The strings within the types in the list can inform spans.
//


//Layout Contract here is that divs will be constructed by whichever scope finds a reference to a body,
function astroot2elms(wholeAst){
	 if(!wholeAst.program){
		clog( "not an ast root!"); return;
	} else ast2elms( wholeAst.program, document.getElementById("program"));
}
 
function ast2elms(tree,targetElm){	

	//This func walks an ast, constructing elements.	
	//First, if the node's a literal, it is printed.
	
	//Then, its keys are iterated.
	//  Its keys which are arrays are iterated.
	
	//It returns its DOM elements in an array.

	targetElm.innerHTML="";   //Clear the html here.
	let mElms=[];	
	
	//null literal case
	if(!tree.type){
		clog("NO TYPE STR!" + tree); 
		return;
	}

	if (tree.type==="nullLiteral"){
		targetElm.setInnerHTML("null"); 
		
		return mElms;
	}

/*	
	//Leaf Printing - if it has a leaf, or leaves, print them.
	let printKeys=null;
	printKeys=ast_PrintableNodes[tree.type];
	if(printKeys){
		if (Array.isArray(printKeys)) printKeys.forEach( (key) =>{ 
			elm=targetElm.appendChild(document.createElement("SPAN"));
			elm.innerText=tree[key];
			mElms.push(elm);
		});
		else targetElm.innerText = tree[printKeys];
	}
*/

	//print all the nonleaf children.


	//TODO: Delete some comments, and make this cleaner ad smarter.
	
	type = typeList[tree.type];
	if(type && type.keys){
		type.keys.forEach( key => {

			// Iterating an array is different depening on whether or not its key is "body".
			// So iteration must be done at a distinguishing scope like this one.
			
			if (Array.isArray(tree[key])){ 
			
			//body div
			if (key === "body" ){
				clog("new body");
				targetElm=targetElm.appendChild(document.createElement("SPAN"));

				targetElm.style.display = "block";
				targetElm.className="codeblock";
			}

				tree[key].forEach( item => { 

					//Node case
					if (item.type){
						//Make a body container div;
						newChild = targetElm.appendChild(document.createElement("SPAN"));
						newChild.style.display = key === "body" ? "block" : "inline";
						newChild.style.background = key === "body" ? "darkslateblue" : "magenta";
						newChild.style.color = key === "body" ? "white" : "black";
						newChild.style.borderRadius = key === "body" ? "15px" : "2px";
						/*recurse*/				ast2elms( item , newChild);
						mElms.push(newChild);
					};

			});
			}
			else
			{
				newChild = targetElm.appendChild(document.createElement("SPAN"));

				if (!tree[key] || !tree[key].type){

					if (ast_PrintableNodes[tree.type]==key || (Array.isArray(ast_PrintableNodes[type])
						&& ast_PrintableNodes[type].includes(key))){
						elm=targetElm.appendChild(document.createElement("SPAN"));
						elm.innerText=tree[key];
						mElms.push(elm);

					}; }
				//Node type case
				else{ ast2elms(tree[key],newChild);
				mElms.push(newChild);}
			}
		});
	}
	return mElms;
}

function drawEdges(rootAst){

	docOffset={x:window.pageXOffset || document.documentElement.scrollLeft,
		   y:window.pageXOffset || document.documentElement.scrollLeft};

	//use a gossip chain to cast the neighbor graph from the focus's point.
        //gossip propagates to its child nodes, and upwards to its parents.
		//These reelationships are already structured by the syntax, and therefore are visually given.
	//the graph also looks up tokens within node fields which refer to things declared in an open buffer.
		
		//

	}

/*
function drawAst(ast,focus){

/*
	-The drawer walks from the focus, and draws the tree, iterating until functionality is blackboxed by focus rules, like running out of room.
	-Actually, recursion is an inappropriate principle here, because nothing is drawn without respect to its place within the user's view,
	posture, and interaction state.

	An ast gets rendered as a div.
	There must be a significance for user discrimination between different blocks of code, different views of the same code, and different views of different code.
	Its confusing to say, but it might be less confusing to see.

	In 3d modelilng packages, its apparent that there are three orthogonal views and a perspective view.
	Could a similar scheme work for code?

	Concurrent views are a prerequisite for juxtaposition.
	Things which the user may need to juxtapose:
	-Declarations of things
	-Documentation, function prototypes.
	-Search results.

	Expanded code folds are a form of juxtaposition.
	Sometimes, for loops may be nested.
	It is absolutely normal to juxtapose nested strctures against declarations several levels higher than the working block.
	It would be silly for this to open a new view. Sometimes these structures are only a few lines.
	What is the distinguishing principle?
	Avoid premature abstraction.

	Perhaps, by default, things on the ast are inlined. until a block statement begins?
	Formatting: 'newlined' blockStatements may need to be nudged over to the left. 
	Sometimes the user's sense of content chunking will differ to the ast.
	
	Can divs be on the same line? - no need. use spans.

	-The tree only represents the code within a line.
	Call expressions encapsulate by default.

	-Users may want to promote literals to parameters via code transformation.
	-The literal should be copied to every call as an argument, which can then be manipulated via hotcode injection. TODO: does this make sense?

	When you want to click through to mutate an encapsulated thing, you are changing the master copy.
	There may be an operation added to promote a literal or a variable to an adhoc parameter, with a default argument.
*/

/*
	//draw_a_tree(tree, d_region){

	//if leaf
	//if(isLeaf(Tree)){
	drawLeaf(tree);
	 return;
	 }

	//else
	
	 for(i = 0; i < children.length() in tree.childindexmap){
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

}*/
