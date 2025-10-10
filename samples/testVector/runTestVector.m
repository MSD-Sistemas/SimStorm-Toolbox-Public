%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   TEST SCRIPT
%
%   Run test vector in simulink using MSD Toolbox
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear('all'); close('all'); clc; % Matlab RESET
disp('starting...')
tic

% Init
tend = 34;	% Total simulation time
tstep = 1;	% Step of simulation

base_folder = fileparts(which(mfilename('fullpath')));

%Run test vector
testvector_filename = 'testVector.xlsx';
modelname = 'sampleDesignR2022b';
tol_val = 0.05; % tolerance to allow pass even with small numeric errors
tol_mode = 'Percentual';
verification_level = 1;
test_description = 'Sample Design: Expected vs Simulated';
plot_mode = 'continuous';

% Required parameters
set_param(modelname, 'SaveOutput', 'on');                   % Saves the output
set_param(modelname, 'OutputSaveName', 'yout');             % Variable name (required for MSD Toolbox)
set_param(modelname, 'SaveFormat', 'StructureWithTime');    % Format type (required for MSD Toolbox)

% Run test
[pass, t, u, yexpected, ysimulated, pass_vec, outputs_names_vec, input_names_vec] = run_test_function(testvector_filename, modelname, tol_val, tol_mode);

% store test evidence
success = gen_test_evidence(input_names_vec, outputs_names_vec, pass_vec, t, u, yexpected, ysimulated, tol_val, 'time',tol_mode, test_description, verification_level);

disp('test concluded!')
toc