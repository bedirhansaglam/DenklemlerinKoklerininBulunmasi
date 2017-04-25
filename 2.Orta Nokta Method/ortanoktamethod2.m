%orta nokta method
clear
clc
fonksiyon=input('Fonksiyonu giriniz:','s'); 
y=inline(fonksiyon)  %f adýnda bir inline fonksiyon tanýmlanýr
a=input('a deðerini giriniz:');
b=input('b degerini giriniz:');
tol=0.00001;
fprintf('iter \t\t a \t\t b \t\t xm \t\t y(a) \t\t y(b) \t\t ym \n');
fprintf('---------------------------------------------------------------------------------------------------------------------------------\n');
for i=1:50
    xm=0.5*(a+b);
    fprintf('%g \t %g \t  %g \t %g \t %g \t %g \t %g \n' ,i,a,b,xm,y(a),y(b),y(xm));
    if y(a)*y(xm)<0
        b=xm;
    else
        a=xm;
    end
    if abs(a-b)<tol
        break
    end
end
