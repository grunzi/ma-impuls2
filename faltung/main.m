%Hilfe: Programm zur darstellung einer Faltung
clc
close all
clear all
%Debug variables
off = 0;
on = 1;
plot_sig_in = off;

%%Initialisierung

x_step_trans_func = 0.05;
x_values = 0:x_step_trans_func:1;
%trans_func = calc_trans_func(x_values)
%TODO change later to the real transfer function
trans_func = create_rect_sig(x_values,1,0.25,0.75);
sig_in = create_rect_sig(x_values,1,0.25,0.75);
if plot_sig_in > 0
    figure
    plot(x_values,sig_in);
    grid on
end

trans_func = [x_values; trans_func];
sig_in = [x_values; sig_in];
sig_in_length = length(x_values);

sig_in= flip_matrix(sig_in);
sig_in_ext = extend_with_zeros(sig_in);
trans_func = extend_with_zeros(trans_func);

%als nächstes die shift funktion







