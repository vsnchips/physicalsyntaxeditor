var codeBlockDrawable = function{
/*
	//vertically or horizontally arrange statements.
 	//render text using browser's dom methods..?
	//or write tokens to DOM objects with style sheets, and move them around.
	
	drawStyle{ texture: location: [0,0], size:[0,0] } //Draw things to canvas textures, put them in boxes

	this.updateDiv = function(){
	 	myElm.style.pos.x = location.x;
	 	myElm.style.pos.y = location.y;
	}
	
	/*
 */
}


//  user explicit dragging events are commands.
//  dragging is a discrete gesture with an eager release.
//  symbols are atomic.
//  movement symbols map to meanings depending on the interaction syntax.
//  if the interaction syntax is in a dragging state, it will dispatch a drag operation.

function dragTo(drawable,focus){

	focus.location.copyTo(drawable.location);

}

// If the parent captures a mouse click, how might a user indicate moving an element within a
// movable parent?
// If the user can see it, I want them to be able to interact with it.
// If the user dives into something, maybe the thing can be popped up to the
// juxtaposing scope.
//
// If the user discovers something during a chord, a focus marker should be set so they
// can jump to it in rest mode immediately after releasing the chord.
//
// So like, play a chord, then jump into it.
