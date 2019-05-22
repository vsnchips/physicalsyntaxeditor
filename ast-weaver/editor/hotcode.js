//literal index mst be reset before running tranaform()
//
var lits = Array();

function addHotLit(lit){
  lits.push(lit);
}

//change the literal to some other type.

var hotcode = function(babel){
  var t = babel.types;
  return {

    visitor:{

	    //skip lit collection if 'noinject' precedes the Dec, and mark it for the rep builder.
      Declaration: function(path,state){
	      if(path.node.leadingComments && path.node.leadingComments[path.node.leadingComments.length-1].value.includes("noinject")) {
		      path.node.litskip=true;
		      path.skip();
	      }
    },
      Literal: function(path,state){
        
        path.skip();

        var thevalue = path.node.value;
        path.replaceWithSourceString(`getHotLit(`+lits.length+`)`);
        addHotLit(thevalue);
      }//,

      /*CallExpression: function(path,state){
        if (path.callee == `getHotLit`) path.stop();
      }*/
    }
  };
}
/* }; */


