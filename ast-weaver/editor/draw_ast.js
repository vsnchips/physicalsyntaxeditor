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

/*
 * It seems important to minimise representation of container nodes that do not contain mappable tokens.*/

// There are two aspects of the code to monitor. The names, and the structure they sit in.
// Some nodes include syntax, others dont. The strings within the types in the list can inform spans.
//


//Layout Contract here is that divs will be constructed by whichever scope finds a reference to a body,
function astroot2elms(wholeAst){
	if(!wholeAst.program){
		clog( "not an ast root!"); return;
	} else{
		wholeAst.program.lev=0;
		ast2elms(wholeAst.program, document.getElementById("program"));
	}

	litRepCount = 0;
	litReps=[];
}



	//This func walks an ast, constructing elements.	
	
	//at each node visitation, it iterated over the node's keys.
	//a node's type is the key for the typelist. the typelist maps types to lists of their iterable keys.
	//a seperate print map stores a map of printable types to their printable keys.
	
	// some node keys will point to arrays. these will be iterated.
	//
	//
	
	//It returns its DOM elements in an array.

var litRepCount = 0;
var litReps = [];  // mutates lits



function ast2elms(tree,targetElm){	
	
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

	makechild = function(node,childkey,container,lev=0){
		//Node case
		if(node){
		if (node.type){
			//Make a body container div;
			let newChild = container.appendChild(document.createElement("SPAN"));
			newChild.style.display = childkey === "body" ? "block" : "inline";
			newChild.style.background = childkey === "body" ? lev > -1 ? "black" : "darkslateblue"  : "magenta";
			newChild.style.color = childkey === "body" ? "white" : "black";
			newChild.style.borderRadius = childkey === "body" ? "15px" : "2px";
			
			// link the literal updates here.
			if(
				node.type === "NumericLiteral" ||
				node.type === "NumberLiteral" ||
				node.type === "BigIntLiteral" 
			){
				//Literal Binding
				container.myNode = node;
				container.litIndex=litReps.length;
				litReps.push(container);

				//Method binding
				container.onclick = () => {theFocus.highlightElm(container);}
				if(node.type === "NumericLiteral" || node.type === "NumberLiteral") {
					container.model = NumLitElementMethods;
				}

			}

			newChild.level=lev;
/*recurse*/		ast2elms( node , newChild);
			mElms.push(newChild);
				return newChild;
		}
		else
		{	
			//leaf case

			if (ast_PrintableNodes[this.type] === childkey || (Array.isArray(ast_PrintableNodes[this.type])
			&& ast_PrintableNodes[this.type].includes( childkey ))){
					let elm = container.appendChild(document.createElement("SPAN"));
					elm.innerText = node;
				return elm;
				}
			}
		}
	}

	type = typeList[tree.type];	
	if(type && type.keys){

			// Iterating an array is different depening on whether or not its key is "body".
			// So iteration must be done at a distinguishing scope like this one.
			//body div
			if (tree["body"] && Array.isArray(tree["body"] ) ){
				clog("new body");
				//targetElm=targetElm.appendChild(document.createElement("SPAN"));
				targetElm.style.display = "block";
				//targetElm.style.background='darkslateblue';
				targetElm.className="codeblock";
			}
		type.keys.forEach( key => {

			if (Array.isArray(tree[key])){ 
			
				tree[key].forEach( childnode => { mElms.push(makechild.bind(tree)(childnode,key,targetElm,targetElm.level+1)) });
			}
			else
			{
				mElms.push(makechild.bind(tree)(tree[key],key,targetElm,targetElm.level+1));
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

