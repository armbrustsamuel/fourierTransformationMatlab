% Teste para Onda Dente de Serra

clc
clear all

prompt = 'Quantas harmonicas?';
m = input(prompt);

prompt2 = 'Qual a amplitude?'; % para ajustar
a = input(prompt2);

prompt3 = 'Qual a periodo?';
periodo = input(prompt3);

t = 0:periodo/1000:periodo*5;

a0 = a/2;

y = 0;
for i = 1:m
    y = y + ((1/i)*sin(i*((2*pi)/periodo)*t))
end

y = a/pi * y;

y = a0 - y;

plot(y)
%stem(y)
grid