function createFromBlocks(inArgs)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       
%       CREATE FROM BLOCKS according to the selected block:
%       
%       When a Subsystem block is selected:
%       -> Create a new FROM block for each inport BLOCK inside the
%       subsystem
%       -> Tag = Inports name
%       
%       When an Outport block is selected:
%       -> Create a new FROM block for each selected outport
%       -> Tag = outport name
%
% Developed by MSD SISTEMAS
% daniel.damasceno@msdconsult.com.br
% revision 1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
createFromBlocksFunction(inArgs);
end