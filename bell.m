function X = bell(n) % function starts
    % bell() is a function that calculates Bell Triangles
    % Input is an integer (n) defining the dimensions of the Bell Triangle
    % Output is Bell triangle
    
    % check if input (n) is not a positive integer
    if isnumeric(n)==0 || n<=0
        X=[]; % return an empty array
        return; % end execution
    end % endif statement
    
    % if input (n) is a positive integer
    X(1,1) = 1; % set first element to 1
    for row = 2:n % loop rows from 2 to length of n
        X(row,1) = X(1,end); % set bounds of matrix X
        for col = 1:row-1 % loop columns from 1 to 1 less than rows
            % set value of each element following Bell Triangle rules
            X(row-col,col+1) = X(row-col+1,col) + X(row-col,col);
        end % end inner for loop
    end % end outer for loop
end % end function bell()
