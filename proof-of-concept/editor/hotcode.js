//literal index mst be reset before running tranaform()
//
var lits = Array();

function addHotLit(lit){
  lits.push(lit);
}

var hotcode = function(babel){
  var t = babel.types;
  return {
    visitor:{
      NumericLiteral: function(path){
        var thevalue = path.node.value;
        path.replaceWith(
          t.callExpression(t.identifier("getHotLit"),[t.stringLiteral("litlength")])
        );
        addHotLit(thevalue);
      }
    }
  };
};
