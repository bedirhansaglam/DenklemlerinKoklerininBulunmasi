
% Newton Rapshson method
a=input('Fonksiyonu giriniz:','s'); %fonksiyon alýnýr
x(1)=input('xi deðerini giriniz:'); %xi deðeri alýnýr
error=input('Tolerans deðerini giriniz:'); % tolerans deðeri alýnýr
f=inline(a) %fonksiyon biçiminde yazýlýr
dif=diff(sym(a)); %fonksiyonun türevi alýnýr
d=inline(dif); % türevi alýnan fonksiyon fonksiyon biçiminde yazýlýr
fprintf('x(i) \t\t x(i+1) \t\t Ea \n');
fprintf('------------------------------------------------------------------------------------');

for i=1:100   %newton raphson metodu uygulanýr
x(i+1)=x(i)-((f(x(i))/d(x(i))));
err(i)=abs((x(i+1)-x(i))/x(i));
fprintf('%g \t %g \t %g \t \n',x(i),x(i+1),err(i));
if err(i)<error
break
end
end
root=x(i)

%Bedirhan Saglam- bedirhansaglam.com