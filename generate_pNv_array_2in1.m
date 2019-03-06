syms p_alpha p_beta p_gamma px py pz t % If you are seeking for the details of the equation
%Plz go for the paper written by Yang Bin.
p_array = [];
v_array = [];
for i=0:0.01:2.5
    disp(i);
    syms p_alpha p_beta p_gamma px py pz t
    l1 = 65;
    l2 = 65;
    l3 = 10;
    if i <= 2
        px = 65;
        py = 65 + 10 * t;
        pz = -10 - 10 * t^2 + 40 * t;
    else
        px = 65;
        py = 85;
        pz = 30 - 80 * (t-2);
    end

    p_alpha = asin(-l3/(px^2+pz^2)^0.5)-atan2(pz,px);
    v_alpha = diff(p_alpha,t);
    p_beta = asin((l1^2 + l2^2 + l3^2 - px^2 - py^2 - pz^2)/(2*l1*l2));
    v_beta = diff(p_beta,t);
    p_gamma = asin((px^2+py^2+pz^2+l1^2-l2^2-l3^2)/(2*l1*(px^2+py^2+pz^2-l3^2)^0.5))-atan2((px^2+pz^2-l3^2)^0.5,py);
    v_gamma = diff(p_gamma,t);
%     px_para = px;
%     py_para = double(subs(py,t,i));
%     pz_para = double(subs(pz,t,i));
    p_array = [p_array 
               [double(subs(p_alpha, t, i)), double(subs(p_beta, t, i)), double(subs(p_gamma, t, i))]];
    v_array = [v_array 
               [double(subs(v_alpha, t, i)), double(subs(v_beta, t, i)), double(subs(v_gamma, t, i))]];
    
end
final_array = [p_array v_array];