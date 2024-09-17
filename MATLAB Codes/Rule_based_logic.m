function y = Rule_based_logic(u)


    % Compute total torque demand
    u_total = u(1) + u(2);
    u_threshold = 315;


    % Apply the rule-based logic
    if u_total >= 0  % Forward driving condition
        if u_total <= u_threshold
            % Use only the rear motor for driving
            T_rear_new = u_total;
            T_front_new = 0;
        else
            % Distribute torque evenly between front and rear motors
            T_front_new = u_total / 2;
            T_rear_new = u_total / 2;
        end
    else  % Braking condition
        if u_total < -u_threshold
            T_front_new = u_total / 2;
            T_rear_new = u_total / 2;
        else
        % Apply braking torque primarily with the front motor
        T_front_new = u_total;  % Typically negative during braking
        T_rear_new = 0;  % Rear motor does not assist in braking
        end
    end

    % Output the new torque values
    y = [T_front_new; T_rear_new];
end
