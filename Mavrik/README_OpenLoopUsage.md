This document summarizes the usage of the Simulink Model.

The purpose of this model is to output forces and moments acting on the MAVRIK at the Center of Gravity (CG) of the aircraft. The forces and moments include aerodynamic forces and moments and forces and moments resulting from the thrust and torque from the propellers on the MAVRIK.

Run the setupMavrik.m script first to initialize all the settings required for the Simulink model. Specify the airspeed, euler angles, NED velocity and rates of rotation for the aircraft. These are passed to the Simulink model through the variables U, eulerIn, vnedIn, pqrIn, respectively. Ensure that pqr_init, euler_init, uvw_init and xyz_init are also set to initialize the model.

Specify the desired actuator settings. This is passed to the Simulink model through a vector 'actuatorsIn'. The order of actuators in the vector should be [wing_tilt, tail_tilt, aileron, elevator, flap, rudder, RPM_tailLeft, RPM_tailRight, RPM_leftOut1, RPM_left2, RPM_left3, RPM_left4, RPM_left5, RPM_left6In, RPM_right7In, RPM_right8, RPM_right9, RPM_right10, RPM_right11, RPM_right12Out].

Run the Simulink model, 'Mavrik_Reference_model.slx'. An example script has been provided as openLoopMavrikReferenceModel.m. Use either hoverTrimSetup.m or cruiseTrimSetup.m to observe the two trim conditions.