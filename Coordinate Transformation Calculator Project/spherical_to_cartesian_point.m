function cartesian_point = spherical_to_cartesian_point(spherical_coords)
    r = spherical_coords(1);
    theta = spherical_coords(2);
    phi = spherical_coords(3);
    
    x = r * sin(deg2rad(theta)) * cos(deg2rad(phi));
    y = r * sin(deg2rad(theta)) * sin(deg2rad(phi));
    z = r * cos(deg2rad(theta));
    
    cartesian_point = [x, y, z];
end