%Hatal� Konum Metodu
fonksiyon=input('Fonksiyonu giriniz:','s');  
f=inline(fonksiyon)  %f ad�nda bir inline fonksiyon tan�mlan�r
x1=input('x1 de�erini giriniz:');
xu=input('xu degerini giriniz:');
i=1; %iterasyon
tol=0.00001;  %tolerans
clc
fprintf('iter \t\t x1 \t\t xu \t\t xr \t\t y(xr) \n');
fprintf('----------------------------------------------------------------------------------------------------- \n');
xr=xu-f(xu)*(xu-x1)/(f(xu)-f(x1)); %while dongusunde f(xr) degerinin kontrol� i�in xr tek seferlik hesaplanir

while abs(f(xr))>tol %f(xr) toleransdan b�y�k oldu�u s�rece a�a��daki i�lemleri yap
    xr=xu-f(xu)*(xu-x1)/(f(xu)-f(x1)); %xr de�eri formulden hesaplan�r
fprintf('%g \t %g \t %g \t %g \t %g \n',i,x1,xu,xr,f(xr)); %de�erler ekrana bast�r�l�r
   i=i+1;
    if (f(x1)*f(xr)<0); 
        xu=xr;
    else
        x1=xr;
    end
end
%Bedirhan Saglam- bedirhansaglam.com