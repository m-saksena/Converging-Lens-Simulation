function imagedraw(u,h,f)
%Draws the image based on the object distance u, object height h and focal
%length f, and returns the image properties to the user.

v = 1./((1./f) - (1./u)); %This is the distance of the image from the lens

mag = v./u; %This is the magnification

H = mag.*h; %This is the height of the image

%Plotting the image
Img = [v, v
    0, -H];

if H > 0
drawshape(Img, 'r')
plot(v,-H, 'rv')
text(v, -H-0.5, 'Image')
else 
    drawshape(Img, 'r')
    plot(v,-H, 'r^')
    text(v, -H+0.5, 'Image')
end

%Determining if the image is real or virtual, and if it is upright or
%inverted

if u == f
useroutput = 'The object is placed at the focus of the lens, therefore the image is virtual and is formed at infinity.';
else
    
    % Determining if the image is real/virtual, inverted/upright, and side
    % of lens.
    if v > 0
    Re = 'real';
    inv = 'inverted';
    side = 'opposite side of the lens';
    else
    Re = 'virtual';
    inv = 'upright';
    side = 'same side of the lens as the object';
    end

    %Determining if the image is diminished or enlarged
    if abs(H) > abs(h) 
    dim = 'enlarged';
    elseif abs(H) < abs(h)
    dim = 'diminished';
    else
    dim = 'the same size as the object';
    end
    
    useroutput = sprintf('The image is %s, %s, %s and on the %s. The magnification is %5.3f, the image height is %5.3f cm, and the image is %5.3f cm from the lens.', Re, inv, dim, side, abs(mag), abs(H), abs(v));
    
    
end

 

pause(0.5)
messagebox = msgbox(useroutput, 'Properties of the image after refraction.');

