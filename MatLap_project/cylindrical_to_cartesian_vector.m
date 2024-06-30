function cartesian_vector = cylindrical_to_cartesian_vector(cylindrical_coords, reference_point)
    A_roh = cylindrical_coords(1) ;
    A_phi = cylindrical_coords(2);
    Az = cylindrical_coords(3) ;
    a=reference_point(1);
    b=reference_point(2);
    phi = atan2(b, a);
    cartesian_vector = [A_roh*cos(phi)+A_phi*-sin(phi), A_roh*sin(phi)+A_phi*cos(phi), Az];
end