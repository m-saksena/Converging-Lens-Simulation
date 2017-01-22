function lens(f,h,u)

v = 1./((1./f) - (1./u)); %This is the distance of the image from the lens

mag = v./u; %This is the magnification

H = mag.*h; %This is the height of the image

% This function plots a converging lens with focal length 'f'.
% The principal axis
if abs(v) > abs(u)
x = linspace(-2.5*abs(v), 2.5*abs(v),10000);
else
x = linspace(-2.5*abs(u), 2.5*abs(u),10000);
end
y = x*0;
plot(x,y,'b')
hold on

%The focal points F
plot(f,0,'ro')
text(f+0.5,0.5, 'F')

plot(-f,0,'ro')
text(-f-0.5,0.5, 'F')

%The points 2F
plot(2*f,0,'ro')
text(2*f+0.5,0.5, '2F')

plot(-2*f,0,'ro')
text(-2*f-0.5,0.5, '2F')

%The converging lens
Lx = [0, 0];
Ly = [-5*h, 5*h];
plot(Lx, Ly, 'b:')

%Arrowheads A on lens
A = [0 -0.2 0 0.2 0; 5*h, 5*h, ((5*h)+0.2), 5*h, 5*h];
fillshape(A, 'b')
fillshape(reflectx(A), 'b')

%axes, scale and grid - choosing an appropriate scale
if abs(v) > abs(u)
    if abs(H) > abs(h)
        axis([-2.5*abs(v), 2.5*abs(v), -2*abs(H), 2*abs(H)])
    else
        axis([-2.5*abs(v), 2.5*abs(v), -2*abs(h), 2*abs(h)])
    end

    else
        if abs(H) > abs(h)
        axis([-2.5*abs(u), 2.5*abs(u), -2*abs(H), 2*abs(H)])
        else
        axis([-2.5*abs(u), 2.5*abs(u), -2*abs(h), 2*abs(h)])
        end
end

title('Ray diagram of convex lens')
xlabel('Distance from centre of lens (cm)')
ylabel('Object and image height (cm)')
grid on