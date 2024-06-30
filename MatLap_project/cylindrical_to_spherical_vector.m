function cartesian_vector = cylindrical_to_spherical_vector(cylindrical_coords,reference_point)
    A_roh= cylindrical_coords(1);
    A_phi=cylindrical_coords(2);
    Az=cylindrical_coords(3);
    a=reference_point(1);
    b=reference_point(2);
    c=reference_point(3);
    theta = acos(c / sqrt(a^2 + b^2 ));
    cartesian_vector = [(A_roh*sin(theta)+Az*cos(theta)),(A_roh*cos(theta)-Az*sin(theta)), A_phi];
end