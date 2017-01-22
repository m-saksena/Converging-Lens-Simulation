function Ra = rotateabout(S, a, x, y)
M1 = translate(S, -x, -y);
M2 = rotate(M1, a);
Ra = translate(M2, x, y);

