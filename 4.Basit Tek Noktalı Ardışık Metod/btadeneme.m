% f(x)=(e^-x)-x   i�in basit tek noktal� ard���k metod
%x1 de�erine ba�lang�� de�eri verilmeli
%x2 de�erine sorudaki de�er verilmeli
clear
clc
tol=0.00001; %tolerans

% grafik �izdirmek i�in komutlar
for x1=-2:.05:10 %-2 den ba�layan 0.5 ad�m b�y�kl��� olan 10 da biten bir for d�ng�s� ve x1 vekt�r� olu�turur
    y=x1;  % y' ye x1 de�eri atanarak -2 den 10a kadar (-2,-2.5,-3 ...) �eklinde artan degerler verildi
    yy=exp(-x1); %buraya soruda verilen fonksiyon verilerek i�lem yap�labilir
    plot(x1,y,'r.',x1,yy,'b.') %plot komutunda x1,y,'r.' k�sm�nda 'x1' x eksenini 'y' y eksenini 'r.' ile de red(k�rm�z�) olmas� belirlendi
                                            % devam�nda ise x1,yy,'b.'
                                            % k�sm�nda ise 'x1' x eksenini
                                            % 'yy' y eksenini ve 'b.' blue
                                            % rengini temsil etmektedir.
    hold on  % hold komutu ayn� anda birden fazla grafi�i basmaya yarad���ndan yukar�daki plot komutu sorunsuz �al���yor.
    xlabel('x') %x ekseninde yaz�lacak yaz�
    ylabel('y') % y ekseninde yaz�lacak yaz�
    grid on  %�izilecek grafi�e �zgara ekler 
    text(6.1,7,'y=x') % verilen konuma yaz�lacak yaz�
    %buraya soruda verilen fonksiyon yaz�lacak
    text(8,3.1,' y=(e^-x) ') % verilen konuma yaz�lacak yaz� 
end

x1=0;  %ba�lang�� de�eri
fprintf('iter \t\t x1 \t\t x2  \t\t Ea \t\t ear \n');
fprintf('------------------------------------------------------------------------------------------------------------------\n');
for k=1:50
    x2=exp(-x1);  %buraya soruda verilen fonksiyon koyularak i�lem yap�labilir.
    Ea=abs(x2-x1);
    ear=Ea/abs(x2);
   fprintf('%g \t %g \t %g  \t %g \t %g \n',k,x1,x2,Ea,ear);
    if abs(x2-x1)<tol;
        break
    end
    x1=x2;
end

%Bedirhan Saglam- bedirhansaglam.com

