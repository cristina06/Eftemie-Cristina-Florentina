function exercitiu_2()
    a = normrnd(0,1,1,20); %returneaza o distributie Gaussiana de 20 elemente
                           %mu=0,simgma=1 in functia respectiva
    negative = []; %vector in care concatenez elemente negative
                  %[a b] genereaza un vector din a concatenat cu b
    for i = 1:1:length(a)
        if a(i) < 0
            negative = [negative a(i)];
        end
    end
    negative

end