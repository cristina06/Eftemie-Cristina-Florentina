function complex = exercitiu_3()
    N=10; %generam 10 numere complexe
    i = sqrt(-1); %i este radical din -1
    
    for j = 1:1:N
        rng('shuffle'); %numere aleatoare
        x = randi(50); %aleator din 1...50
        y = randi(50);
        complex(j) = x*i+y; %afiseaza un vector cu elemente complexe
    end
     suma = 0;
    for i = 1:1:length(complex)
        suma = suma + real(complex(i));
    end
    
    mean = suma/length(complex)  %afiseaza media aritmetica a partilor reale 
    
    square = complex.*complex %afiseaza un vector cu elementele la patrat
    
    matrix = complex'*complex %afisam matricea obtinuta din inmnultirea 
                               %vectorului initial cu transpusa lui
                                %complex' -> coloana
end