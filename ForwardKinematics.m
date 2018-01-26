function FK=ForwardKinematics(theta)
    FK=rotationZ(theta(1))*translationX(30)*rotationZ(theta(2))*translationX(20)*rotationZ(theta(3))*rotationX(pi/2)*rotationZ(theta(4));
end