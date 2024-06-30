function cartesian_vector = cartesian_to_spherical_vector(cartesian_coords,reference_point)
    Ax = cartesian_coords(1) ;
    Ay = cartesian_coords(2);
    Az = cartesian_coords(3) ;
    a=reference_point(1);
    b=reference_point(2);
    c=reference_point(3);
    phi = atan2(b, a);
    theta = acos(c / sqrt(a^2 + b^2 ));
    cartesian_vector = [(Ax*sin(theta)* cos(phi)+Ay*sin(theta)* sin(phi)+Az*cos(theta)),(Ax*cos(theta)* cos(phi)+Ay*cos(theta)* sin(phi)-Az*sin(theta)),(-Ax*sin(phi)+Ay*cos(phi))];
end
