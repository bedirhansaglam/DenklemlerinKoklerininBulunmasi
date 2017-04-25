for t=-10:0.05:30 %grafik aralýðý
ft1=exp(-0.1*t);  % birinci grafik çizgisi için y deðeri
ft2=1-0.05*t; % ikinci grafik çizgisi için y deðeri
plot(t,ft1,'r.',t,ft2,'b.') %grafik çizdirme komutu (burada t x deðeri , ft1 ve ft2 y deðeri , r ve b de renkleri temsil etmektedir.
hold on % ayný anda birden fazla grafik çizdirme komutu
end
text(10,2.5,'*f(t)=exp(-0.1t)') % grafik üzerindeki belli konuma yazýlan yazý
text(10.,2.2,'+f(t)=1-0.05t')%grafik üzerindeki belli konuma yazýlan yazý
xlabel('t(sec)') %x eksenindeki yazý
ylabel('F(t)')% y eksenindeki yazý

%Bedirhan Saglam- bedirhansaglam.com