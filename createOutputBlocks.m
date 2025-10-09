function createOutputBlocks(inArgs)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%       CREATE OUTPUT BLOCKS according to the selected block:
%
%       When a Subsystem block is selected:
%       -> Create a new output block for each outport inside the subsystem
%       -> Output name = Outports name
%
%
%       When a Bus Selector block is selected:
%       -> Create a new Output block for each selected signal
%       -> Output  name = Bus selector output signals
%
%
% Developed by MSD SISTEMAS
% daniel.damasceno@msdconsult.com.br
% revision 1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

createOutputBlocksFunction(inArgs);
end
