# physicalsyntaxeditor

Livecoding has historically been divided by a dichotomy between text-based editing such as in TidalCycles, Extempore, Overtone, Fluxus Praxis LIVE, 
and visual node graph based editing such as in VVVV, Puredata, Max/MSP and TouchDesigner.

Why not have both?

This project is an experimental text editing and livecoding environment for javascript.

Broadly, the design goals are:
* To reconcile our notions of editing with our notions of play
* To integrate analog and digital interaction postures and gestures.
* To integrate directive and procedural content creation.

It uses babel.js to build an abstract syntax tree with a flexible html representation.

Interaction models may be bound to html elements depending on the content of the node it represents.

Quick start:
node editor.js <target_project_directory> <working_file.js> [alternate-index.html]

Left-click and drag to slide the values of numeric literals.
Right click to place the cursor and write text normally.

Middle click or 'm' (model) key reassigns the element's interaction model.

'r' (reference) and drag to express a reference to a variable.
'c' (call) and drag to express a call to a function.

More code transformations will be documented here as they are implemented.
