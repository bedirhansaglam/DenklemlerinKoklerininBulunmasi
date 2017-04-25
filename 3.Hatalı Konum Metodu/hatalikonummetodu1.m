%Hatalý Konum Metodu
fonksiyon=input('Fonksiyonu giriniz:','s');  
f=inline(fonksiyon)  %f adýnda bir inline fonksiyon tanýmlanýr
x1=input('x1 deðerini giriniz:');
xu=input('xu degerini giriniz:');
i=1; %iterasyon
tol=0.00001;  %tolerans
clc
fprintf('iter \t\t x1 \t\t xu \t\t xr \t\t y(xr) \n');
fprintf('----------------------------------------------------------------------------------------------------- \n');
xr=xu-f(xu)*(xu-x1)/(f(xu)-f(x1)); %while dongusunde f(xr) degerinin kontrolü için xr tek seferlik hesaplanir

while abs(f(xr))>tol %f(xr) toleransdan büyük olduðu sürece aþaðýdaki iþlemleri yap
    xr=xu-f(xu)*(xu-x1)/(f(xu)-f(x1)); %xr deðeri formulden hesaplanýr
fprintf('%g \t %g \t %g \t %g \t %g \n',i,x1,xu,xr,f(xr)); %deðerler ekrana bastýrýlýr
   i=i+1;
    if (f(x1)*f(xr)<0); 
        xu=xr;
    else
        x1=xr;
    end
end
%Bedirhan Saglam- bedirhansaglam.com