
// Element Interaction Models

NumLitElementMethods = {

	set: function(val){
		this.value = val; 
		lits[this.litIndex]; 
		this.children[0].innerHTML=val;
	},
	analogDeltas: (symbol) => {
		this.set(this.value+symbol.deltas.x);	
	}

}
