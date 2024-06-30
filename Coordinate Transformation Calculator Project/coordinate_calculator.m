function coordinate_calculator()
    disp('Coordinate Transformation Calculator');
    
    while true
        % Get user input for operation type
        operation_type = input('Enter operation type:\n1. Cartesian to cylindrical\n2. Cylindrical to Cartesian\n3. Cartesian to spherical\n4. Spherical to Cartesian\n5. Spherical to cylindrical\n6. Cylindrical to spherical\n7. Cross Product\n8. Dot Product\n9. Exit\nChoose operation (enter the number): ', 's');

        if strcmp(operation_type, '9')
            disp('Exiting the program.');
            break;
        end

        % Get user input for conversion type
       

        switch operation_type
            case '1'
                 conversion_type = input('Enter conversion type (point or vector): ', 's');
                result = coordinate_conversion(conversion_type, 'cartesian_to_cylindrical');
            case '2'
                 conversion_type = input('Enter conversion type (point or vector): ', 's');
                result = coordinate_conversion(conversion_type, 'cylindrical_to_cartesian');
            case '3'
                 conversion_type = input('Enter conversion type (point or vector): ', 's');
                result = coordinate_conversion(conversion_type, 'cartesian_to_spherical');
            case '4'
                 conversion_type = input('Enter conversion type (point or vector): ', 's');
                result = coordinate_conversion(conversion_type, 'spherical_to_cartesian');
            case '5'
                 conversion_type = input('Enter conversion type (point or vector): ', 's');
                result = coordinate_conversion(conversion_type, 'spherical_to_cylindrical');
            case '6'
                 conversion_type = input('Enter conversion type (point or vector): ', 's');
                result = coordinate_conversion(conversion_type, 'cylindrical_to_spherical');
            case '7'
                result = coordinate_conversion(0, 'cross_product');
            case '8'
                result = coordinate_conversion( 0,'dot_product');
            otherwise
                disp('Invalid operation type.');
                continue;
        end

        disp(['Result: ', num2str(result)]);
        
        % Ask the user if they want to perform another operation
        continue_operation = input('Do you want to perform another operation? (yes/no): ', 's');
        if strcmpi(continue_operation, 'no')
            disp('Exiting the program.');
            break;
        end
    end
end
