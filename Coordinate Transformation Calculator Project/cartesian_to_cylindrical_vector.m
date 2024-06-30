function cartesian_vector = cartesian_to_cylindrical_vector(cartesian_coords, reference_point)
    x = cartesian_coords(1) ;
    y = cartesian_coords(2);
    z = cartesian_coords(3) ;
    a=reference_point(1);
    b=reference_point(2);
    phi = atan2(b, a);
    cartesian_vector = [(x*cos(phi)+y*sin(phi)),(-x*sin(phi)+y*cos(phi)), z];
end