function cartesian_vector = spherical_to_cylindrical_vector(spherical_coords,reference_point)
    Ar= spherical_coords(1);
     A_theta=spherical_coords(2);
     A_phi=spherical_coords(3);
     a=reference_point(1);
     b=reference_point(2);
     c=reference_point(3);
     theta = acos(c / sqrt(a^2 + b^2 ));
    
    cartesian_vector = [Ar*sin(theta)+A_theta*cos(theta), A_phi, Ar*cos(theta)-A_theta*sin(theta)];
end

