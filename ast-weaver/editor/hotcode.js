//literal index mst be reset before running transform()

var lits = Array();

function addHotLit(lit){
  lits.push(lit);
}

function skipNoInject(path,state){
 
  /* appends "litskip" flag to nodes with "noinject" in leading comments */
 
  if(path.node.leadingComments && 
    path.node.leadingComments[path.node.leadingComments.length-1]
    .value.includes("noinject")) {
      path.node.NOINJECT=true
      path.node.litskip=1;
    //  console.log("Attempt skip lit")
      console.log(path.node)
      path.skip();
  }
}

 function wrapWithHotIndirection(path,state){        
    
  /* wraps a numberic literal in a call to getHotLit() */

  console.log( "path to overridden:")
  console.log(path)
  path.skip();
  var thevalue = path.node.value;
  path.replaceWithSourceString(`getHotLit(`+lits.length+`)`);


  addHotLit(thevalue);
}

//change the literal to some other type.
var hotCodeAstTransforms = function(babel){
 
  /* For the in-editor ast as represented in the dom, set "litskip" 
  to disable interaction bindings on "noinject" prefixed declaraions. */
  var t = babel.types;
  return {
    visitor:{
      Declaration:skipNoInject,
      Literal: wrapWithHotIndirection
    }
  };
}

var inEditorAstTransforms = function(babel){

  /* For the in-editor ast, do set "litskip" but dont inject code. */

  var t=babel.types;
  return {
    visitor:{
      Declaration:skipNoInject,
      Literal:(path,state)=>{}
    }
  }
}
