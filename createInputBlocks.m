function createInputBlocks(inArgs)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       
%       CREATE INPUT BLOCKS according to the selected block:
%       
%       When a Subsystem block is selected:
%       -> Create a new INPUT block for each inport BLOCK inside the
%       subsystem
%       -> Inport name = Inports name of each subsystem port
%       
%       When an Outport block is selected:
%       -> Create a new FROM block for each selected outport
%       -> Tag = outport name
%
% Developed by MSD SISTEMAS
% daniel.damasceno@msdconsult.com.br
% revision 1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
createInputBlocksFunction(inArgs);
end