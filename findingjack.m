syms t1 t2 t3 t4;
rotZt1=[cos(t1) -sin(t1) 0 0;sin(t1) cos(t1) 0 0; 0 0 1 0;0 0 0 1];
tranX30=[1 0 0 30; 0 1 0 0; 0 0 1 0; 0 0 0 1];
rotZt2=[cos(t2) -sin(t2) 0 0;sin(t2) cos(t2) 0 0; 0 0 1 0;0 0 0 1];
tranX20=[1 0 0 20; 0 1 0 0; 0 0 1 0; 0 0 0 1];
rotZt3=[cos(t3) -sin(t3) 0 0;sin(t3) cos(t3) 0 0; 0 0 1 0;0 0 0 1];
rotX90=[1 0 0 0;0 cos(pi/2) -sin(pi/2) 0;0 sin(pi/2) cos(pi/2) 0;0 0 0 1];
rotZt4=[cos(t4) -sin(t4) 0 0;sin(t4) cos(t4) 0 0; 0 0 1 0;0 0 0 1];
Tfin=rotZt1*tranX30*rotZt2*tranX20*rotZt3*rotX90*rotZt4;
fq=Tfin*[0;0;0;1];
jack=jacobian(fq,[t1,t2,t3,t4]);
jackinv=(jack.'*jack)*jack.';
display(jackinv);