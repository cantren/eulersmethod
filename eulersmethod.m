clear
disp("####DEMO########DEMO########DEMO########DEMO########");
disp("#                                                  #");
disp("# Euler's Method of numerically integrating an ODE #");
disp("#                                                  #");
disp("##########DEMO########DEMO########DEMO##############"); 
n = 10;                   % number of steps
%n = 10000;                % number of steps
a = 0;                    % start of interval
b = 1;                    % end of interval
h = (b-a)/n;              % step size
y = 1;
t = 0;
for i = 1:n
   % uncomment below lines for debug %
    output = strcat("t: ", num2str(t),"y approx: ", num2str(y));
   % uncomment above lines for debug %  
   
   
   % Euler's Method Goes Here %
    m1 = 3+exp(-t)-(y/2); %  calculate slope at time "t"
    y += (m1*h); % y = y + (m1)(h) % add next value of y to previous value of y
    t += h;      % t = t + h % increment along the independent variable's axis by the step size
   % Euler's Method Goes Here %

    
   % uncomment below lines for debug %
    disp(output);
    if(i==n)
     output = strcat("t: ", num2str(t),"y approx: ", num2str(y));
     disp(output);
     disp("###################################################");
    end
   % uncomment above lines for debug %  
end

actual = 6-(2*exp(-t))-3*exp(-t/2);
disp(strcat("y approx: ", num2str(y)));
disp(strcat("actual y:", num2str(actual)));
disp(strcat("error:", num2str(y - (actual))));
disp("Done");
