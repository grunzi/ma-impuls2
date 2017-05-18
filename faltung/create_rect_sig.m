function [ y ] = create_rect_sig(x_vector,value,x1,x2)
%CALC_TRANS_FUNC creates rectangle signal params: (x_vector, height of sig,
%from x, to x)
%   value is the y level for the linear function
%   this can be used as a rectangle signal, but it need limits left and
%   right

if x1 > x2
    x_start = x2;
    x_end = x1;
else
    x_start = x1;
    x_end = x2;
end

%preallocate to gain speed
y = zeros(1,length(x_vector));
if x_start < x_vector(1) || x_end > x_vector(length(x_vector))
    for i=1:length(x_vector)
        y(i) = 0;
        disp('Rectangle signal out of range');
    end    
else

    for i=1:length(x_vector)
        if x_vector(i) >= x_start && x_vector(i)<=x_end
            y(i) = x_vector(i)*0+value;
        else
            y(i)=0;
        end
    end
end

