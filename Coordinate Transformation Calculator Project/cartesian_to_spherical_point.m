function cartesian_point = cartesian_to_spherical_point(cartesian_coords)
    x = cartesian_coords(1);
    y = cartesian_coords(2);
    z = cartesian_coords(3);
    
    r = sqrt(x^2 + y^2 + z^2);
    theta = rad2deg(acos(z / r));
    phi = rad2deg(atan2(y, x));
    
    cartesian_point = [r, theta, phi];
end