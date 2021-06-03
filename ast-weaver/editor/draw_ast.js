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

function focusToDiv(focus,thediv){
	thediv=document.createElement("DIV");

	//walk the ast
	let containingArray=focus.viewRoot;

	let addStatement=(statement)=>{}

	for (i=0; i<containingArray.length;i++){
	thediv.appendChild()
	}
}

/*
 * It seems important to minimise representation of container nodes that do not contain mappable tokens.*/

// There are two aspects of the code to monitor. The names, and the structure they sit in.
// Some nodes include syntax, others dont. The strings within the types in the list can inform spans.

//Layout Contract here is that divs will be constructed by whichever scope finds a reference to a body

function astroot2elms(wholeAst){	

	/* wholeAst: a top-level babel Ast object
	
	This func walks an ast, constructing elements.	
	at each node visitation, it iterated over the node's keys.
	a node's type is the key for the typelist. the typelist maps types to lists of their iterable keys.
	a seperate print map stores a map of printable types to their printable keys.
	some node keys will point to arrays. these will be iterated.
	It returns its DOM elements in an array. */

	litReps=[];
	if(!wholeAst.program){
		clog( "not an ast root!"); return;
	} else{
		ast2elms(wholeAst.program, document.getElementById("program"));
	}
}

var litReps = [];  // mutates lits

function ast2elms(tree,targetElm){	

	/* This is the inner recursive func for walking the ast */

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

	makechild = function(node,childkey,container){
		//Node case
		if (node && node.type){

			//TODO: put this in a proper stylesheet

			//Make a body container div;
			let newChild = container.appendChild(document.createElement("SPAN"));
			newChild.style.display = childkey === "body" ? "block" : "inline";
			newChild.style.background = childkey === "body" ? container.level > 0 ? "darkslateblue" : "black"  : "rgba(255,200,150,0.3)";
			newChild.style.color = childkey === "body" ? "white" : "black";
			newChild.style.borderRadius = childkey === "body" ? "15px" : "2px";
			
			// link the literal updates here.
			if( (node.type === "StringLiteral"  ||
				node.type === "NumericLiteral" ||
				node.type === "NumberLiteral" ||
				node.type === "BigIntLiteral" ) && (!node.ls)
			){
				//Literal Binding
					newChild.myNode = node;
					newChild.litIndex=litReps.length;
					litReps.push(newChild);

					if(node.type != 'StringLiteral'){
					
					//Interaction Model binding
					newChild.onmousedown = function(event){
							if (event.target == newChild.firstChild)
							theFocus.highlightElm(newChild);
					}
					if(node.type === "NumericLiteral" || node.type === "NumberLiteral") {
							newChild.model = NumLitElementMethods;
					}
				
				} else {
			 clog ('skipped a lit');	
			 clog(node.FOO)
			}
			}

			newChild.level = container.level ? container.level +1 : 1 ;
/*recurse*/		ast2elms( node , newChild);
				return newChild;
		}
		else
		{	
			//leaf case
			//TODO: Resolve the extra container the leafs are being put in.
			if (ast_PrintableNodes[this.type] === childkey || (Array.isArray(ast_PrintableNodes[this.type])
			&& ast_PrintableNodes[this.type].includes( childkey )))
			{
					let elm = container.appendChild(document.createElement("SPAN"));
					elm.innerText = node + " ";
					elm.value = node;
					elm.litIndex=container.litIndex;
				return elm;
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
				targetElm.style.display = "block";
				targetElm.className="codeblock";
			}

			type.keys.forEach( key => {
			//TODO; put this somewhere better.
			//Belatedly mark the childen for lit skipping
			//there has to be a nicer way of doing this.
			let ls = tree.ls
			if (tree.NOINJECT ){
				//|| tree.litskip == true ){
				console.log("STOP INJECTING")
				ls = tree.ls = true;
			}

			if (Array.isArray(tree[key])){ 
				tree[key].forEach( childnode => { 
					childnode.ls = ls;		
					mElms.push(makechild.bind(tree)(childnode,key,targetElm)) });
			}
			else
			{
				mElms.push(makechild.bind(tree)(tree[key],key,targetElm));
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

