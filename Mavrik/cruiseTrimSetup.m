U = 30;
alpha = 0.*pi/180;
eulerIn = [t, [0.,alpha,0.]];
vnedIn= [t,[U*cos(alpha),0.,U*sin(alpha)]]; % NED velocity

euler_init=[0.,alpha,0.];
uvw_init=[U*cos(alpha),0.,U*sin(alpha)];

wing_RPM = 10922.0840305;
tail_RPM = 18094.2798112;

RPM_tailLeft = tail_RPM;
RPM_tailRight = tail_RPM;
RPM_leftOut1 = wing_RPM;
RPM_left2 = wing_RPM;
RPM_left3 = wing_RPM;
RPM_left4 = wing_RPM;
RPM_left5 = wing_RPM;
RPM_left6In = wing_RPM;
RPM_right7In = wing_RPM;
RPM_right8 = wing_RPM;
RPM_right9 = wing_RPM;
RPM_right10 = wing_RPM;
RPM_right11 = wing_RPM;
RPM_right12Out = wing_RPM;

wing_tilt = 5.*pi/180;
tail_tilt = -3.8960*pi/180;
aileron = 0;
elevator = -0.*pi/180;
flap = 0.;
rudder = 0.;

actuatorsIn = [0, wing_tilt, tail_tilt, aileron, elevator, flap, rudder, ...
    RPM_tailLeft, RPM_tailRight, RPM_leftOut1, RPM_left2, RPM_left3, ...
    RPM_left4, RPM_left5, RPM_left6In, RPM_right7In, RPM_right8, RPM_right9, ...
    RPM_right10, RPM_right11, RPM_right12Out];