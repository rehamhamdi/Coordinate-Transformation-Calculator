function cartesian_point = cartesian_to_cylindrical_point(cartesian_coords)
    x = cartesian_coords(1);
    y = cartesian_coords(2);
    z = cartesian_coords(3);
    
    roh = sqrt(x^2 + y^2);
    phi = atan2(y, x);
    phi_deg=rad2deg(phi);
    cartesian_point = [roh, phi_deg, z];
end