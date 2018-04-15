% Teste para Onda Dente de Serra Discreta
clc
clear all

prompt2 = 'Qual a amplitude?';
a = input(prompt2);

prompt3 = 'Qual a periodo?';
periodo = input(prompt3);

w = 2*pi/periodo;

n = 0:1:periodo*2

% definindo termos
ck = 0;
y = 0;

% definindo somatorio

for k = 1:periodo
    for m = 1:periodo
        ck = ck + (m * (exp(-1i*w*k*m)));
    end
    y = y + (ck * (exp(1i*w*k*n))); 
    ck = 0;
end

y = (a/(periodo*periodo)) * y;

stem(n,y)
grid