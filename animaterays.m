function animaterays(u,h,f)

v = 1./((1./f) - (1./u)); %This is the distance of the image from the lens

mag = v./u; %This is the magnification

H = mag.*h; %This is the height of the image

%Animating the rays
n=200;

%Ray passing through focal point
theta = atan(h/u); %calculating the angle between the ray and the centre of the lens
L = [-u, -u+(u/n); h, h];
L = rotateabout(L, theta, -u, h);

for k = 1:n-1
    L = translate(L, u/n, -h/n);
drawshape(L, 'k')
hold on
pause(0.0001)
end

for k = 1:2n ;
    L = translate(L, v/n, -H/n);
    drawshape(L, 'k')
    hold on
    pause(0.0001)
end

for k = 1:n-1
    L = translate(L, v/n, -H/n);
    drawshape(L, 'k')
    hold on
    pause(0.0001)
end


%Ray parallel to principal axis
%if Re == 'real'
L = [-u, -u+(u/n); h, h];
drawshape(L, 'k')
for k = 1:n-1
    L = translate(L, u/n, 0);
  drawshape(L, 'k')
  hold on
  pause(0.0001)
end

A = [0, -0.2, -0.2, 0
    h, h-0.2, h+0.2, h];
fillshape(A, 'k')
pause(0.0001)

a = -1*(atan(h/f));
B = translate(L, u/n,0);
B = rotateabout(B,a,0,h);
A = rotateabout(A,a,0,h);

for k = 1:n-1
    B = translate(B, f/n, -h/n);
    drawshape(B,'k')
    hold on
    pause(0.0001)
end

A = translate(A, f/2, -h/2);
fillshape(A,'k')
pause(0.0001)

for k = 1:n-1
    B = translate(B, (v-f)/n, -H/n);
    drawshape(B, 'k')
    hold on
    pause(0.0001)
end


    