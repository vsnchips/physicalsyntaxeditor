//Focus

/*A FOCUS is comprised of a reference to a workNode, a key within it,
an index to the object within the key's value if its an array, and a way of relating to scope.
It also has a visual representation.

A FOCUS works with the INTERACTION SYNTAX and its associated POSTURES to facilitate both expected, and ad-hoc operations relevant to
the focus' concerns.

The discrete functional gesture principle requires that the focus cancels waiting modes eagerly.
the focus must keep up with the user's input when they skip ahead.

Predict the user's forgetfulness.

Syntactically incomplete or incorrect strings of input traversal events need not execute immediately.
*/


//Interaction Syntax
/*The input will not restrict the user to referring to things which have yet to be defined.
A loose interaction syntax will mitigate the user "falling down ladders" with invalid input events.
The interaction syntax is being designed to mitigate back-tracking, and what I call the "ladder" effect.
strings of interactions will be pushable to an execution stack to be deferred
for completion.
What this means is that,//If an event leads you to something like a menu searching for an object to operate on, then, if you realise

what you want isnt there, you can define it immediately without escaping anything, and the menu will stay open while you define it.
I dislike sequential navigation. Its too slow. All operation arguments will be editable before execution, and they will be just as editable as the code itself, so you wont end up having to scroll back or hold down arrow keys or repeat long strings of gestures when you made an early mistake.
Pushing this idea out in the macro direction, composing command histories into immediately executable scripts should be not just be trivial, but actively taught to the user early as a basic, so its not some obscure feature they would be exasperated to only discover five years from now.

//Postures
/*
I'm playing with this idea of treating the interaction syntax as a state automata, deriving the inputs it expects in each state by deducting which keys are naturally affordable given the current state. 

Basically, Im avoiding awkward chord shapes.
For example, I will avoid creating states that neccessitate pressing the bottom row keys and numbers while holding down modifiers all on one hand. 

In fact, avoiding modifier-holding hotkeys in general should help me see how much mileage I can get from the limited symbol set of single keystrokes, before leaning into expanding the symbol s//Event parsing
function parseEvent(symbol){
    currentMode.posture[symbol] ();
}et.
I think of modifier holding hotkeys as as "micro-ladders", because they require multiple steps to express something that is atomic from the program's perspective, and the modifier key must be held down first.

Anyway, postures are being identified and chained together through testing. They could be useful as templates for the various states of input expectance.

*/

var currentMode;
var mousePos={x:0,y:0};

//Focus object
theFocus = {
	focusedNode : null,
	currentMode : null,
	chordModifiers : [],
	highlightElm : function(caller) {
	//	if(!this.focusedNode || caller.level >= this.focusedNode.level){
			this.focusedNode = caller;
			clog ('reassigned focus to'+ caller.innerText);
	//	}
	},
	clearFocus : function() {focusedNode = null;},
	//Event parsing
	parseEvent : function(symbol){
		let call=this.currentMode.posture[symbol.form];
		if (call) call(symbol);
	}
};

var modeList={};

// Default Symbol Template!
defaultModeTemplate = {
	name:'default',
	posture:{
		mousedown: () => { theFocus.chord = true; theFocus.chordModifiers=['mouse']; } ,
		mouseup: () => { theFocus.chord = false; 
			if (theFocus.chordModifiers[0] && theFocus.chordModifiers[0] == 'mouse') theFocus.chordModifiers=[]
		}}	
};

restMode = makeMode("rest");
mapmode(restMode,'mousemove',(function(symbol){
	if (this.chordModifiers[0] && this.chordModifiers[0] === 'mouse'){
			if (this.focusedNode && this.focusedNode.model) {
				clog('move in rest');
				if (this.focusedNode.model.analogDeltas) this.focusedNode.model.analogDeltas(symbol,this.focusedNode);	
			}	
	}
}).bind(theFocus) ) ;

theFocus.currentMode=restMode;

function makeMode(setname,template = defaultModeTemplate){
	let newmode = {};
	Object.assign(newmode,template);
	newmode.name = setname;
	modeList[newmode.name] = newmode;
	return newmode;
}

 function mapmode(mode,form,action){
	mode.posture[form] = action;
 }

function symbol(form = "bang!", analog=false, deltas={}){ 
	return { form: form, analog: analog, deltas: deltas};
}
// atomic symbol mappings

function onMouseUp(event){
    mousePos={x:event.clientX, y:event.clientY};
				clog('up mouse');
    theFocus.parseEvent(symbol("mouseup"));
}

function onMouseDown(event){

    //TODO: Resolve concurrency with the other onclick methods. This is a hack.

    mousePos={x:event.clientX, y:event.clientY};
				clog('down mouse');
    theFocus.parseEvent(symbol("mousedown"));
}

function onMouseMove(event){
    //deltas
    let deltas={x:event.clientX-mousePos.x,y:event.clientY-mousePos.y};
    mousePos={x:event.clientX, y:event.clientY};
				clog('move mouse' + deltas );
    theFocus.parseEvent(symbol("mousemove", true, deltas ));
}

function onKey(event){
//	console.log(event);
   	theFocus.parseEvent(symbol(event.key));
}

// high level DOM mapping
document.getElementsByTagName("body")[0]
	.addEventListener("keypress",function(event){onKey(event)});
document.getElementsByTagName("body")[0]
	.addEventListener("mousemove",function(event){onMouseMove(event)});
document.getElementsByTagName("body")[0]
	.addEventListener("mousedown",function(event){onMouseDown(event)});
document.getElementsByTagName("body")[0]
	.addEventListener("mouseup",function(event){onMouseUp(event)});
//Right Click Capture
document.getElementsByTagName("body")[0]
	.addEventListener('contextmenu',function(event){event.preventDefault().alert("success!");
		return false;}, false);




