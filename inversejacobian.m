function jackinv= inversejacobian(theta)
    t1=theta(1);
    t2=theta(2);
    %t3=theta(3);
    %t4=theta(4);
    jackinv=[ - ((20*cos(t1)*cos(t2) - 20*sin(t1)*sin(t2))*(30*cos(t1) + 20*cos(t1)*cos(t2) - 20*sin(t1)*sin(t2)) + (20*cos(t1)*sin(t2) + 20*cos(t2)*sin(t1))*(30*sin(t1) + 20*cos(t1)*sin(t2) + 20*cos(t2)*sin(t1)))*(20*cos(t1)*sin(t2) + 20*cos(t2)*sin(t1)) - ((30*cos(t1) + 20*cos(t1)*cos(t2) - 20*sin(t1)*sin(t2))^2 + (30*sin(t1) + 20*cos(t1)*sin(t2) + 20*cos(t2)*sin(t1))^2)*(30*sin(t1) + 20*cos(t1)*sin(t2) + 20*cos(t2)*sin(t1)), ((30*cos(t1) + 20*cos(t1)*cos(t2) - 20*sin(t1)*sin(t2))^2 + (30*sin(t1) + 20*cos(t1)*sin(t2) + 20*cos(t2)*sin(t1))^2)*(30*cos(t1) + 20*cos(t1)*cos(t2) - 20*sin(t1)*sin(t2)) + ((20*cos(t1)*cos(t2) - 20*sin(t1)*sin(t2))*(30*cos(t1) + 20*cos(t1)*cos(t2) - 20*sin(t1)*sin(t2)) + (20*cos(t1)*sin(t2) + 20*cos(t2)*sin(t1))*(30*sin(t1) + 20*cos(t1)*sin(t2) + 20*cos(t2)*sin(t1)))*(20*cos(t1)*cos(t2) - 20*sin(t1)*sin(t2)), 0, 0;...
                           - ((20*cos(t1)*cos(t2) - 20*sin(t1)*sin(t2))*(30*cos(t1) + 20*cos(t1)*cos(t2) - 20*sin(t1)*sin(t2)) + (20*cos(t1)*sin(t2) + 20*cos(t2)*sin(t1))*(30*sin(t1) + 20*cos(t1)*sin(t2) + 20*cos(t2)*sin(t1)))*(30*sin(t1) + 20*cos(t1)*sin(t2) + 20*cos(t2)*sin(t1)) - ((20*cos(t1)*cos(t2) - 20*sin(t1)*sin(t2))^2 + (20*cos(t1)*sin(t2) + 20*cos(t2)*sin(t1))^2)*(20*cos(t1)*sin(t2) + 20*cos(t2)*sin(t1)),                           ((20*cos(t1)*cos(t2) - 20*sin(t1)*sin(t2))*(30*cos(t1) + 20*cos(t1)*cos(t2) - 20*sin(t1)*sin(t2)) + (20*cos(t1)*sin(t2) + 20*cos(t2)*sin(t1))*(30*sin(t1) + 20*cos(t1)*sin(t2) + 20*cos(t2)*sin(t1)))*(30*cos(t1) + 20*cos(t1)*cos(t2) - 20*sin(t1)*sin(t2)) + ((20*cos(t1)*cos(t2) - 20*sin(t1)*sin(t2))^2 + (20*cos(t1)*sin(t2) + 20*cos(t2)*sin(t1))^2)*(20*cos(t1)*cos(t2) - 20*sin(t1)*sin(t2)), 0, 0;...
                                                                                                                                                                                                                                                                                                                                                                                                                                0,                                                                                                                                                                                                                                                                                                                                                                                                                              0, 0, 0;...
                                                                                                                                                                                                                                                                                                                                                                                                                              0,                                                                                                                                                                                                                                                                                                                                                                                                                              0, 0, 0];
end