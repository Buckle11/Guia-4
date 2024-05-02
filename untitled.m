
hombres2040 = 0;
Mujeres2040 = 0;
hombres4050 = 0;
Mujeres4050 = 0;
hombres5060 = 0;
Mujeres5060 = 0;
hombresmay = 0;
Mujeresmay = 0;

heart_data.age=(heart_data.age/365);

for i = 1:length(heart_data.age)
    if heart_data.cardio(i) == 1 
       
        if heart_data.age(i) <= 40
            if heart_data.gender(i) == 1
                hombres2040 = hombres2040 + 1;
            elseif heart_data.gender(i) == 2
                Mujeres2040 = Mujeres2040 + 1;
            end
        
        elseif heart_data.age(i) > 40 && heart_data.age(i) <= 50
            if heart_data.gender(i) == 1
                hombres4050 = hombres4050 + 1;
            elseif heart_data.gender(i) == 2
                Mujeres4050 = Mujeres4050 + 1;
            end
        %
        elseif heart_data.age(i) > 50 && heart_data.age(i) <= 60
            if heart_data.gender(i) == 1
                hombres5060 = hombres5060 + 1;
            elseif heart_data.gender(i) == 2
                Mujeres5060 = Mujeres5060 + 1;
            end
        elseif heart_data.age(i) > 60
            if heart_data.gender(i) == 1
                hombresmay = hombresmay + 1;
            elseif heart_data.gender(i) == 2
                Mujeresmay = Mujeresmay + 1;
            end
        end
    end
end

% Datos para la gráfica
x = [ "Menor a 40", "entre 40 y 50 años","entre 50 y 60 años", "más de 60 años"];
y = [hombres2040 Mujeres2040; hombres4050 Mujeres4050; hombres5060 Mujeres5060;hombresmay Mujeresmay];
bar(x, y);
xlabel('Edad de las personas');
ylabel('Cantidad de personas');
title('Con Enfermedad cardiovascular');
legend('Hombres', 'Mujeres');