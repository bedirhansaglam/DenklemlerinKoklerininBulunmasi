% f(x)=x-log(4+x)   için basit tek noktalý ardýþýk metod
clear
clc
tol=0.00001; %tolerans

% grafik çizdirmek için komutlar
for x1=-2:.05:10 %-2 den baþlayan 05 adým büyüklüðü olan 10 da biten bir for döngüsü ve x1 vektörü oluþturur
    y=x1;  % y' ye x1 deðeri atanarak -2 den 10a kadar (-2,-2.5,-3 ...) þeklinde artan degerler verildi
    yy=log(4+x1);
    plot(x1,y,'r.',x1,yy,'b.') %plot komutunda x1,y,'r.' kýsmýnda 'x1' x eksenini 'y' y eksenini 'r.' ile de red(kýrmýzý) olmasý belirlendi
                                            % devamýnda ise x1,yy,'b.'
                                            % kýsmýnda ise 'x1' x eksenini
                                            % 'yy' y eksenini ve 'b.' blue
                                            % rengini temsil etmektedir.
    hold on  % hold komutu ayný anda birden fazla grafiði basmaya yaradýðýndan yukarýdaki plot komutu sorunsuz çalýþýyor.
    xlabel('x') %x ekseninde yazýlacak yazý
    ylabel('y') % y ekseninde yazýlacak yazý
    grid on  %çizilecek grafiðe ýzgara ekler 
    text(6.1,7,'y=x') % verilen konuma yazýlacak yazý
    text(8,3.1,' y=ln(4+x)') % verilen konuma yazýlacak yazý
end

x1=1.5000;  %baþlangýç deðeri
fprintf('iter \t\t x1 \t\t x2  \t\t Ea \t\t ear \n');
fprintf('------------------------------------------------------------------------------------------------------------------\n');
for k=1:50
    x2=log(4+x1);
    Ea=abs(x2-x1);
    ear=Ea/abs(x2);
   fprintf('%g \t %g \t %g  \t %g \t %g \n',k,x1,x2,Ea,ear);
    if abs(x2-x1)<tol;
        break
    end
    x1=x2;
end

%Bedirhan Saglam- bedirhansaglam.com



