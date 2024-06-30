function cartesian_vector = spherical_to_cartesian_vector(spherical_coords,reference_point)
    Ar = spherical_coords(1);
    A_theta = spherical_coords(2);
    A_phi=spherical_coords(3);
    a=reference_point(1);
    b=reference_point(2);
    c=reference_point(3);
    phi = atan2(b, a);
    theta = acos(c / sqrt(a^2 + b^2 ));
    cartesian_vector = [(Ar*sin(theta) * cos(phi)+A_theta*cos(theta)*cos(phi)-A_phi*sin(phi)),( Ar*sin(theta) * sin(phi)+A_theta*cos(theta)*sin(phi)+A_phi*cos(phi)), (Ar*cos(theta)-A_theta*sin(theta))];
end