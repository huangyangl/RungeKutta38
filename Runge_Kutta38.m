%%% Runge-Kutta Method using three-eighths

F=@(t,y) y^2-y^3;  %%% I picked an ODE where dy/dt=y^2-y^3  You can use any ODE/function

t0=0; %%%set inital condition for time, 0 is logical starting point
y0=.01;%%%set inital conditions, picked randomly
tfinal=2/y0;%%%set time to integrate over
h=tfinal/1000;%%%set 1000 timesteps, personal choice
F=@(t,y) y^2-y^3;  %%% I picked a function where dy/dt=y^2-y^3  can use any function



y=odeTHREEEIGHTHS(F,t0,h,tfinal,y0);  %%%call the ode solver
t=(0:h:tfinal);
plot(t,y,'.');%%%plot solution over time

