function object(u,h)
%This function plots the object based on the user inputs of object distance
%from lens 'u' and object height 'h'.

Obj = [-u, -u
    0, h];
drawshape(Obj, 'm')
plot(-u,h,'m^')
text(-u, h+0.5, 'Object')