
// Element Interaction Models

NumLitElementMethods = {

	set: function(val,target){
		target.value = val; 
		lits[this.litIndex]; 
		//lits[0]; 
		target.children[0].innerHTML=val;
		//target.innerHTML=val;
		clog('setting' + val);
	},
	analogDeltas: (symbol,target) => {

		console.log('dragging!');
		NumLitElementMethods.set(target.value+symbol.deltas.x,target);	
	}

}
