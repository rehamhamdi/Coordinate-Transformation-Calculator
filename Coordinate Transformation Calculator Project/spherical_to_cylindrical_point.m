function cartesian_point = spherical_to_cylindrical_point(spherical_coords)
    r = spherical_coords(1);
    theta = spherical_coords(2);
    phi = spherical_coords(3);
    roh=r*sin(deg2rad(theta));    
    z = r * cos(deg2rad(theta));
    
    cartesian_point = [roh, phi, z];
end
