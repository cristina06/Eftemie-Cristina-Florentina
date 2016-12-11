
P=40; %perioada
D=24; %durata
N=50; %numarul de coeficienti
F=1/P; %frecventa
w0=2*pi/P; %pulsatia
t_tr=0:0.02:D; %timpul pe care se calculeaza integrala
x_tr= sawtooth((pi/12)*t_tr,0.5)/2+0.5; 
t = 0:0.02:P; 
x = zeros(1,length(t)); 
x(t<=D)=x_tr; 
t_patru_perioade=0:0.02:4*P-0.02; %vectorul timp pentru reprezentarea a 4 perioade
x_patru_perioade=repmat(x,1,4); %vectorul x se reprezinta pe 4 perioade
figure(1);
plot(t,x); 
title('x(t)(linie solida) si reconstructia folosind N coeficienti (linie punctata)');
hold on;


for k=-50:50
    x_t = x_tr;
    x_t = x_t .* exp(-j*k*w0*t_tr); %vectorul inmultit cu termenul corespunzator
    X(k+51)=0; 
    for i = 1: length(t_tr)-1
        X(k+51) = X(k+51) + (t_tr(i+1)-t_tr(i))* (x_t(i)+x_t(i+1))/2; 
    end
end
x_refacut(1:length(t))=0; %initializam semnalul reconstruit cu N puncte
    


for i = 1: length(t) %reconstruim x(t) folosind N coeficienti
    for k=-50:50
        x_refacut(i) = x_refacut(i) + (1/P)*X(k+51)*exp(j*k*w0*t(i)); 
    end
end

plot(t,x_refacut,'--'); 
xlabel('Timp [s]');
ylabel('Amplitudine');

f=-N*F:F:N*F;
figure(2);
w=-50*w0:w0:50*w0; 
stem(w/(2*pi),abs(X)); 
title('Spectrul lui x(t)');
xlabel('Frecventa [Hz]');
ylabel('|X|');

% orice semnal periodic se poate aproxima printr-o suma infinita de sin si
% cos de diferite frecvente,fiecare avand un anumit coeficient.Coeficientii reprezinta spectrul
% Semnalul reconstruit folosind un numar finit de termeni se apropie ca
% forma de semnalul original cu o anumita marja de eroare,care poate fi mai
% mica daca numarul de coeficienti creste.

