function [a,D]=energy_generator(x,y,inputss,satr1,satr2,satr3,satr4,ct)
%a Gax In(1-x) Sby As(1-y)

a= x*y*ct(satr1,1)+ x*(1-y)*ct(satr2,1)+ (1-x)*y*ct(satr3,1)+ (1-x)*(1-y)*ct(satr4,1);
D= x*y*ct(satr1,inputss(1,2))+ x*(1-y)*ct(satr2,inputss(1,2))+ (1-x)*y*ct(satr3,inputss(1,2))+ (1-x)*(1-y)*ct(satr4,inputss(1,2));
end


