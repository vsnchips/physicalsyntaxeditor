
// Element Interaction Models

NumLitElementMethods = {

	set: function(val,innertarget){
		innertarget.value = val; 
		lits[this.litIndex]; 
		//lits[0]; 
		innertarget.innerHTML=val+' ';
		//target.innerHTML=val;
		clog('setting' + val);
	},
	analogDeltas: (symbol,target) => {

		console.log('dragging!');
		NumLitElementMethods.set(target.firstChild.value+symbol.deltas.x,target.firstChild);	
	}

}
