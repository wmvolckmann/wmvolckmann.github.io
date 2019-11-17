%% Maximizing a function subject to a nonlinear inequality constraint
% Maximizing objective function $f(x,y)=ax^2 + by^2$ subject to constraint $g(x) = x^2 + y^2 \leq r$ and
% non-negativity of $x$ and $y$.


%% Setting model parameters
clear all;
close all;

a = 1;
b = 10;
r = 4;
params = [a,b,r];


%% Setting fmincon parameters
% Using very precise (i.e. slow) iteration and tolerance settings.

x0 = [1,1];                                 %initial guess for soln, nonzero usually best
lb = [0,0];                                 %non-negativity constraint
ub = [];                                    %upper-bound, here none
A = [];                                     %linear equality constraint, here none
b = [];                                     %linear equality constants, here none
Aeq = [];                                   %linear inequality constraints, here none
beq = [];                                   %linear inequality constants, here none
nonlcon = [@(x) constraint(x, params)];     %nonlinear inequality constraints given by fn

opts = optimset('Display','final','Algorithm','interior-point', ...
        'MaxIter',10e6,'MaxFunEvals',10e7,'TolFun',1e-20,'TolX',1e-20);

%% Finding and displaying a local maximum
% Using the *negative* of objective function because fmincon only
% minimizes. Note that the fval output is the negative of the objective
% function. The solution is $x=0, y=2, f(x,y)=40$ as shown in the output at
% the bottom.

[x,fval] = fmincon(@(x) neg_obj(x,params),x0,A,b,Aeq,beq,lb,ub,nonlcon,opts);
fval = -fval;
[x, fval]


%% Defining the objective and constraint functions
% Nonlinear inequality constraint $g(x,y) \leq r$ is expressed as $g(x,y)-r \leq 0$.

% Negative of objective function because fmincon minimizes and we want max.
function [objvalue] = neg_obj(x,params)
    a = params(1);
    b = params(2);
    
    objvalue = -(a*x(1)^2 + b*x(2)^2);
end

% Nonlinear inequality constraint.
function [c,ceq] = constraint(x,params)
    a = params(1);
    b = params(2);
    r = params(3);
    
    c = x(1)^2 + x(2)^2 - r;    %two constraints would be as c = [g(x,y)-r;h(x,y)-s];
    ceq = [];                   %for nonlinear equality constraint
end