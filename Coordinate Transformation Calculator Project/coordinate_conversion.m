function result = coordinate_conversion(conversion_type, operation)
    switch operation
        case 'cartesian_to_cylindrical'
            if strcmp(conversion_type, 'point')
                cartesian_coords = input('Enter Cartesian coordinates [x, y, z]: ');
                result = cartesian_to_cylindrical_point(cartesian_coords);
            elseif strcmp(conversion_type, 'vector')
                 reference_point = input('Enter reference point [x, y, z]: ');
                cartesian_coords = input('Enter Cartesian coordinates [Ax, Ay, Az]: ');
                result = cartesian_to_cylindrical_vector(cartesian_coords, reference_point);
            else
                disp('Invalid conversion type.');
                result = [];
            end
        case 'cylindrical_to_cartesian'
            if strcmp(conversion_type, 'point')
                cylindrical_coords = input('Enter cylindrical coordinates [roh, phi, z]: ');
                result = cylindrical_to_cartesian_point(cylindrical_coords);
            elseif strcmp(conversion_type, 'vector')
                reference_point = input('Enter reference point [x, y, z]: ');
                cylindrical_coords = input('Enter cylindrical coordinates [A_roh, A_phi, Az]: ');
                result = cylindrical_to_cartesian_vector(cylindrical_coords,reference_point);
            else
                disp('Invalid conversion type.');
                result = [];
            end
        case 'cartesian_to_spherical'
            if strcmp(conversion_type, 'point')
                cartesian_coords = input('Enter Cartesian coordinates [x, y, z]: ');
                result = cartesian_to_spherical_point(cartesian_coords);
            elseif strcmp(conversion_type, 'vector')
                 reference_point = input('Enter reference point [x, y, z]: ');
                cartesian_coords = input('Enter Cartesian coordinates [Ax, Ay, Az]: ');
                result = cartesian_to_spherical_vector(cartesian_coords,reference_point);
            else
                disp('Invalid conversion type.');
                result = [];
            end
        case 'spherical_to_cartesian'
            if strcmp(conversion_type, 'point')
                spherical_coords = input('Enter spherical coordinates [r, theta, phi]: ');
                result = spherical_to_cartesian_point(spherical_coords);
            elseif strcmp(conversion_type, 'vector')
                reference_point = input('Enter reference point [x, y, z]: ');
                spherical_coords = input('Enter spherical coordinates [Ar, A_theta, A_phi]: ');
                result = spherical_to_cartesian_vector(spherical_coords,reference_point);
            else
                disp('Invalid conversion type.');
                result = [];
            end
        case 'spherical_to_cylindrical'
            if strcmp(conversion_type, 'point')
                spherical_coords = input('Enter spherical coordinates [r, theta, phi]: ');
                result = spherical_to_cylindrical_point(spherical_coords);
            elseif strcmp(conversion_type, 'vector')
                reference_point = input('Enter reference point [x, y, z]: ');
                spherical_coords = input('Enter spherical coordinates [Ar, A_theta, A_phi]: ');
                result = spherical_to_cylindrical_vector(spherical_coords,reference_point);
            else
                disp('Invalid conversion type.');
                result = [];
            end
        case 'cylindrical_to_spherical'
            if strcmp(conversion_type, 'point')
                cylindrical_coords = input('Enter cylindrical coordinates [roh, phi, z]: ');
                result = cylindrical_to_spherical_point(cylindrical_coords);
            elseif strcmp(conversion_type, 'vector')
                reference_point = input('Enter reference point [x, y, z]: ');
                cylindrical_coords = input('Enter cylindrical coordinates [A_roh, A_phi, Az]: ');
                result = cylindrical_to_spherical_vector(cylindrical_coords,reference_point);
            else
                disp('Invalid conversion type.');
                result = [];
            end
        case 'cross_product'
                vector1 = input('Enter the first vector [x1, y1, z1]: ');
                vector2 = input('Enter the second vector [x2, y2, z2]: ');
                result = cross_product(vector1,vector2);
        case 'dot_product'
            vector1 = input('Enter the first vector [x1, y1, z1]: ');
            vector2 = input('Enter the second vector [x2, y2, z2]: ');
            result = dot_product(vector1,vector2);
        otherwise
            disp('Invalid operation.');
            result = [];
    end
end