%Hatalý Konum Metodu
fonksiyon=input('Fonksiyonu giriniz:','s');  
f=inline(fonksiyon)  %f adýnda bir inline fonksiyon tanýmlanýr
x1=input('x1 deðerini giriniz:');
xu=input('xu degerini giriniz:');
tol=0.00001;  
clc
fprintf('iter \t\t x1 \t\t xu \t\t xr \t\t y(xr) \n');
fprintf('----------------------------------------------------------------------------------------------------- \n');

for i=1:50
    xr=xu-f(xu)*(xu-x1)/(f(xu)-f(x1));
fprintf('%g \t %g \t %g \t %g \t %g \n',i,x1,xu,xr,f(xr));
     if abs(f(xr))<tol;
        break
    end
    if (f(x1)*f(xr)<0);
        xu=xr;
    else
        x1=xr;
    end
end

%Bedirhan Saglam- bedirhansaglam.com