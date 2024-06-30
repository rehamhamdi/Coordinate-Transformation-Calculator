function cartesian_point = cylindrical_to_cartesian_point(cylindrical_coords)
    roh = cylindrical_coords(1);
    phi = cylindrical_coords(2);
    z = cylindrical_coords(3);
    
    x = roh * cos(deg2rad(phi));
    y = roh * sin(deg2rad(phi));
    
    cartesian_point = [x, y, z];
end
