function [ extended_x ] = extend_with_zeros( x )
%EXTEND_WITH_ZEROS Summary of this function goes here
%   Detailed explanation goes here
x_len = length(x);
extention = zeros(1,x_len);
extention = [extention;extention];

%extention left
step = x(1,1) - x(1,2);
last_x_value = x(1,1);
for i = x_len:-1:1
    next_x_value = last_x_value + step;
    extention(1,i) = next_x_value;
    last_x_value = next_x_value;
end
extended_x = [extention x];
length(extended_x);

%extention right
step = x(1,x_len)-x(1,x_len-1);
last_x_value = x(1,x_len);
for i = 1:1:x_len
    next_x_value = last_x_value + step;
    extention(1,i) = next_x_value;
    last_x_value = next_x_value;  
end

extended_x = [extended_x extention];
end