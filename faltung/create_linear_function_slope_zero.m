function [ y ] = create_linear_function_slope_zero(x_vector,value)
%CALC_TRANS_FUNC creates a linear function, with a slope of 0
%   value is the y level for the linear function
%   this can be used as a rectangle signal, but it need limits left and
%   right
y = x_vector*0+value;


end

