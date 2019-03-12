syms p_alpha p_beta p_gamma px py pz t
% If you are seeking for the details of the equation
% Plz go for the paper written by Yang Bin.

% Parameter Setting
L1 = 70;
L2 = 50;
L3 = 10;
DATA_NUM = 10.0;
TIME_PERIOD = [2.0, 2.5];
TIME_PER_STEP = (TIME_PERIOD(2) - TIME_PERIOD(1)) / DATA_NUM;

syms p_alpha p_beta p_gamma px py pz t
% Gait planning
p_array = [];
v_array = [];
% px = L1;
% py = L2 + 10 * t;
% pz = -L3 - 10 * t^2 + 40 * t;
px = L1;
py = L2 + 20;
pz = -L3 + 40 - 80 * (t-2);

for i=TIME_PERIOD(1):TIME_PER_STEP:TIME_PERIOD(2)
    disp(i);   
    p_alpha = asin(-L3/(px^2+pz^2)^0.5)-atan2(pz,px);
    v_alpha = diff(p_alpha,t);
    p_beta = asin((L1^2 + L2^2 + L3^2 - px^2 - py^2 - pz^2)/(2*L1*L2));
    v_beta = diff(p_beta,t);
    p_gamma = asin((px^2+py^2+pz^2+L1^2-L2^2-L3^2) / (2*L1*(px^2+py^2+pz^2-L3^2)^0.5)) - atan2((px^2+pz^2-L3^2)^0.5,py);
    v_gamma = diff(p_gamma,t);
    p_array = [p_array 
               [double(subs(p_alpha, t, i)), double(subs(p_beta, t, i)), double(subs(p_gamma, t, i))]];
    v_array = [v_array 
               [double(subs(v_alpha, t, i)), double(subs(v_beta, t, i)), double(subs(v_gamma, t, i))]];
end
final_array = [p_array v_array];