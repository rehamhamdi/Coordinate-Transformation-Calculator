function cartesian_point = cylindrical_to_spherical_point(cylindrical_coords)
    roh = cylindrical_coords(1);
    phi = cylindrical_coords(2);
    z = cylindrical_coords(3);
    r=sqrt(roh^2+z^2);
    theta =rad2deg(acos(z/sqrt(roh^2+z^2)));
    cartesian_point = [r, theta,phi];
end