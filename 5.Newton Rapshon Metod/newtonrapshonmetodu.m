
% Newton Rapshson method
a=input('Fonksiyonu giriniz:','s'); %fonksiyon al�n�r
x(1)=input('xi de�erini giriniz:'); %xi de�eri al�n�r
error=input('Tolerans de�erini giriniz:'); % tolerans de�eri al�n�r
f=inline(a) %fonksiyon bi�iminde yaz�l�r
dif=diff(sym(a)); %fonksiyonun t�revi al�n�r
d=inline(dif); % t�revi al�nan fonksiyon fonksiyon bi�iminde yaz�l�r
fprintf('x(i) \t\t x(i+1) \t\t Ea \n');
fprintf('------------------------------------------------------------------------------------');

for i=1:100   %newton raphson metodu uygulan�r
x(i+1)=x(i)-((f(x(i))/d(x(i))));
err(i)=abs((x(i+1)-x(i))/x(i));
fprintf('%g \t %g \t %g \t \n',x(i),x(i+1),err(i));
if err(i)<error
break
end
end
root=x(i)

%Bedirhan Saglam- bedirhansaglam.com