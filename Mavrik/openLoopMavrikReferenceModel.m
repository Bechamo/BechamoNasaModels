% Mavrik Reference Model
%
% This sets up the Mavrik model and runs the open-loop bare airframe
% since there's no controller

%% Pull/Define Data
setupMavrik;
mdl = 'Mavrik_Reference_model.slx';

t=[0.0];

%% Uncomment for hover trim
hoverTrimSetup;

%% Uncomment for cruise trim
% cruiseTrimSetup;

%% Run simulation
state = [];

data = sim(mdl, 'StartTime', '0', 'StopTime', '1', 'FixedStep', '1e-3');

%% Extract Data

Fx_vec = data.Forces(:,1);
Fy_vec = data.Forces(:,2);
Fz_vec = data.Forces(:,3);
L_vec = data.Moments(:,1);
M_vec = data.Moments(:,2);
N_vec = data.Moments(:,3);

% state output1
state = data.yout{1}.Values.Data;
