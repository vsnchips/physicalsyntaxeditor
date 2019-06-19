# physicalsyntaxeditor

Livecoding has historically been divided by a dichotomy between text-based editing such as in TidalCycles, Extempore, Overtone, Fluxus Praxis LIVE, 
and visual node graph based editing such as in VVVV, Puredata, Max/MSP and TouchDesigner.

Why not have both?

This project is an experimental text editing and livecoding environment for javascript.

Broadly, the design goals are:
* To reconcile our notions of editing with our notions of play
* To integrate analog and digital interaction postures and gestures.
* To integrate directive and procedural content creation.
* Facilitate the complexity of directive analog human expression.
* Keep simple expressions simple to express.

It uses babel.js to build an abstract syntax tree with a flexible html representation.

Interaction models may be bound to html elements depending on the content of the node it represents.

Quick start:
node editor.js <target_project_directory> <working_file.js> [alternate-index.html]

## Usage 
Left-click and drag to slide the values of numeric literals.
Right click to place the cursor and write text normally.

Middle click or 'm' (model) key reassigns the element's interaction model.

'r' (reference) and drag to express a reference to a variable.
'c' (call) and drag to express a call to a function.

More code transformations will be documented here as they are implemented.

# Background
### Action Directive Proceduralism

### Node graphs vs textual languages
The problem with sketches made in graphical programming environments is the tendency for data to be wrapped in extra container objects before it can be used in a patch, and the and the verbose interaction models neccessary to construct and interact with these complex objects.
Nothing exists until it there has been some mouse clicking about it.

For example, in vvvv, expressing the sum of two integers "a+b" takes several steps which necessitate both the mouse and keyboard.

I must:
- Construct the container node for argument A at particular locations in the gui
- Construct the container node for argument B at particular locations in the gui
- Construct the container node for the operating node at a particular locations in the gui, and type or select '+' from a list.
- Use the mouse to draw two edges between each node's inputs and outputs.

In textual programming, the same expression happens in as many gestures as it takes for me to place the cursor and type a+b.

## Analog interactions
The proposal of this project is that analog interaction models support the quality of human computer interaction through embodied cognition, and therefore are an essential consideration in designing interactions, but should only be neccessary where appropriate. Simple expressions should map to simple gestures.

# How it works

## Loading
The app performs operations to code at the level of the abstract syntax tree.

The working file (the target) gets transformed by Babel.js into two ASTs, the hot code and the focus code.
One is for editing, the other is for execution.
The 'hot code' is transformed using the 'hotcode' babel plugin, which replaces all the target's Literal nodes (raw '0-9.0-9' or '"foo"' tokens with calls to getHotLit().

The focus code gets transformed into an AST, using a plugin which marks nodes to be bound to user definable interaction models.
It is then walked by a representation builder which creates html elements, which point to their nodes and are styled according to the particular node's interaction model.

# Operations
## Textual Operations
The app's overall interaction paradigm is based on composable operation expressions.
Every change to state is an operation.

Currently, there are operations which modify the contents of nodes, and operations which modify the bindings of interaction models with nodes.

Operations are executed in two ways:
-Chorded gesture events (like hotkeys)
-Pressing enter to attempt execution of the expression at the top of the operation stack.

Operations can return resulting objects which the focus will jump to. 
The focused object can be returned as the argument of and expression waiting on the stack by pressing the space bar.

In this way, arguments to operations can be constructed and returned to the waiting operation in an ad-hoc manner, and nodes can be navigated to and returned as arguments without having to start a new sequence of keystrokes, and focused objects can be returned as arguments to waiting operations without having to complete incomplete operations opened upon them.

### The Focus
The 'focus' is whichever node the cursor is visiting when there are no keys down, and the interface is at rest.

### Chorded gestures
A chorded gesture event is invoked when a combination of keys and/or buttons are being held down. It leads to execution of the operation expressed by the keys involved in the chord.

### Operation Expression Stack
When downward keystrokes do not complete chorded gestures, releasing the first key pushes entries to the expression stack in the form of a call to a function with incomplete arguments.

For example, the 'substitute' command is invoked by the s key.
-Pressing the s key down opens the chord
- Clicking on another node will immediately call substitute(focusedNode,clickedNode).
- Releasing the s key will 'push a substitute question' to the expression stack.

By default, the current node will be pushed as the first argument to the operation.

Incomplete operations remain attached to the focus node from which they are started.

Supported operations are:
- s - Substituting tokens
- r - Renaming (replace all matching Identifier tokens in the working files)
- . - Convert to a dot expression, navigate to its definition for autocompletion.
- ( - Convert an identifier to a call expression.

Literal
- d - set default
- < - set min
- > - set max
- n - negate/flip

## Analog Interaction Models

Analog interactions are good for manipulating numeric data, especially floating point data.
Analog gestures are often multi-channeled. A mouse movement has derivatives in two dimensions. Midi events have velocities, and tablets can have instantaneous variables like pressure.
These are all variables which we feel, and therefore have visceral meaning in our mental models of the systems we are interacting with.

In the context of this project, the focused artifacts of our interactions are both the code, and the rendered results.

There needs to be interaction models defined for both.

### Literal Dragging
Where individual numbers are focused upon, dragging up/down will increment or decrement the value accordingly.

The user may assign curves and ranges to literal nodes.

When a drag gesture is focused on a literal node, its parents are looked up to retrieve default ranges and curves.

## Constraints
Constraints can have, per dimension:
- centre | float | 0      //(defaults, or homes)
- max,min | float | 0,1
- wrap | boolean |  true // (useful for cyclic things like angles and hues)
- curve | ["linear","exponential"]
- Delta Multiplier | float |

Upon forwarding of analog gesture data, the app will look for an interaction model by walking from the node back along its ancestors, using their attached identifiers to decide upon a model for constraints. Whichever model maps to an identifier token first gets used.

# Interaction model definition
  An interaction model defines how to operate upon focused objects given an input signal of symbolic or analog gesture data.

# Dimension Model Definition

Each model maps argument keys to constraint objects, like so:

example:
dimensionconstraints.hue = {
  type : "linear",
  centre: 0,
  scale: 1,
  min: 0,
  max:360,
  wrap:true
}

Dimension models are constraint presets.
bindInteractionModel( )

The mappings are saved in a json file with the following format:
{
"<identifier_a>" :{"nodeType", "modelType",
[  "model_outputa": <argument number>,
   "model_outputb": <argument number>,
   "model_outputc": <argument number>, .. ]
},
"<identifier_b>" ...
}

example:

{
"background" :{"callExpression", "colorPickerHSB",
[  "hue": 0,
   "saturation" 1,
  "brightness": 2
  ]
},
"box":{"callExpression","genericBox",
[
  "x":0,"y":1,"z":0
]}
}

### Use case scenarios
#### Live contexts
-Livecoding performances, e.g Algorave
#### Non-live contexts
-Creative Coding
-WebGL prototyping

## Roadmap

### Immediate features to complete:
-Single gesture summoning of modification widgets like color wheels.
-An element to monitor the interaction stack

### Desktop version:
- There's no 'babel.types' in the standalone babel package, so, I've taken code transformation as far as it can go in a browser.
To implement operations which construct new AST nodes, like wrapping expressions into new variable or function declarations,  I'll port it to an electron app.

Ideas to extend upon:
I intend to expand upon this idea of correspondence between observed results and their interaction models.
There's a lot of potential in the idea of generalising a means of binding the interaction models of code responsible for a result like a rendered material with gestures initiated in the space of the observed result.

For instance, say I draw a box in p5.js. The code responsible for the box has arguments of its dimensions. At the same time, the lower draw calls also refer to state which informs the draw call, like the fill and the current transform.
   It would be interesting to go from clicking on the box, to manipulating the arguments of box(), or manipulating the expressions which are responsible for current state which inform the box, without the target program needing to define a new class to replace calls to box() with.
