function exercitiu_1() 
    a = 0:0.1:2; %se genereaza un vector (linie) de la 0 la 2 mergand cu pasul 0.1
    b = ones(21,1); %returneaza o matrice de dimensiune 21x1 cu elementele egale cu 1
    
    prod = a*b;
    a*b; %produsul lui a si b,iar rezultatul lor este un numar
    prod_revers = b*a;
    b*a; %produsul lui b si a,iar rezultatul lor este o matrice
    
    for i = 1:1:length(a)
        rezultat(i) = a(i)*b(i);
    end
    %se face inmultirea element cu element
    %rezultatul este o linie,asa cum este si a
end

