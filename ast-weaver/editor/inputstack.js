
/* The discrete functional gesture principle requires that the focus cancels waiting modes eagerly.
the focus must keep up with the user's input when they skip ahead.

Predict the user's forgetfulness.

Syntactically incomplete or incorrect strings of input traversal events need not execute immediately.
*/

var currentMode;
var modeList={};
var mousePos=[0,0];

function addmode(mode){
    modeList[mode.name]=mode;
}

function mode(setname,template = {}){

    template.copyTo(this);
    name = thename;
    
    map(character,action){
        symbol = character;
	meaning = action;
	
        posture[symbol] = meaning;
    }

}



//Event parsing
function parseEvent(symbol){
    currentMode.posture[symbol] ();
}

function symbol(form = "bang!", analog=false, deltas={}){ 

}

function onMouseUp(event){
    mousePos=[e.clientX,e.clientY];
    parseEvent(symbol("mouseup"));
}

function onMouseDown(event){
    mousePos=[e.clientX,e.clientY];
    parseEvent(symbol("mousedown"));
}

function onMouseMove(e){
    //deltas
    deltas={x:e.clientX-mousePos.x,y:e.clientY-mousePos.y};
    mousePos=[e.clientX,e.clientY];
    parseEvent(symbol("mousemove", true, deltas ));
}

function onKey(event){
   parseEvent(symbol("mouseup"));
}
