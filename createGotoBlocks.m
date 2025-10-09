function createGotoBlocks(inArgs)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%       CREATE GOTO BLOCKS according to the selected block:
%
%       When a Subsystem block is selected:
%       -> Create a new GOTO block for each outport inside the subsystem
%       -> Tag = Outports name
%
%       When an Inport block is selected:
%       -> Create a new GOTO block for each selected inport
%       -> Tag = Inport name
%
%       When a Bus Selector block is selected:
%       -> Create a new GOTO block for each selected signal
%       -> Tag = Bus selector output signals
%
%
% Developed by MSD SISTEMAS
% daniel.damasceno@msdconsult.com.br
% revision 1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
createGotoBlocksFunction(inArgs);
end