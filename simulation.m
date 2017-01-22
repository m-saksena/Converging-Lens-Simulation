%Getting the user inputs for focal length, object height and object distance from lens (GUI)
prompt={'Enter the focal length of the lens (cm):','Enter the object height (cm):','Enter the object distance from the lens (cm)'};
title='Lens settings'; 
answer=inputdlg(prompt,title);
focal = str2num(answer{1}); 
objheight = str2num(answer{2});
objdist = str2num(answer{3});

scrsz = get(groot,'ScreenSize');

h = figure('Name', 'Converging Lens', 'Position', scrsz);

%This draws the figure with the principal axis, focal points, lens and
%object.
figure(h)
lens(focal, objheight,objdist)
object(objdist,objheight)

pause(1)

animaterays(objdist, objheight, focal)

pause(1)
imagedraw(objdist, objheight, focal)

