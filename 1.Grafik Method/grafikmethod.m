for t=-10:0.05:30 %grafik aral���
ft1=exp(-0.1*t);  % birinci grafik �izgisi i�in y de�eri
ft2=1-0.05*t; % ikinci grafik �izgisi i�in y de�eri
plot(t,ft1,'r.',t,ft2,'b.') %grafik �izdirme komutu (burada t x de�eri , ft1 ve ft2 y de�eri , r ve b de renkleri temsil etmektedir.
hold on % ayn� anda birden fazla grafik �izdirme komutu
end
text(10,2.5,'*f(t)=exp(-0.1t)') % grafik �zerindeki belli konuma yaz�lan yaz�
text(10.,2.2,'+f(t)=1-0.05t')%grafik �zerindeki belli konuma yaz�lan yaz�
xlabel('t(sec)') %x eksenindeki yaz�
ylabel('F(t)')% y eksenindeki yaz�

%Bedirhan Saglam- bedirhansaglam.com