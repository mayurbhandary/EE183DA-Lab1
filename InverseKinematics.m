function q=InverseKinematics(q0,Xd,N)%starting angle, desired state, Step Size
    x0=ForwardKinematics(q0)*[0;0;0;1];
    dx=(Xd-x0)./N;
    while norm(dx)>10^-3 %iterate until the difference between the desired and current states are samll
        dq=inversejacobian(q0)*dx;
        q0=q0+dq;
        x0=ForwardKinematics(q0)*[0;0;0;1];
        dx=(Xd-x0)./N;
    end
    q=q0;
end