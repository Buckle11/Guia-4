
hombres2040 = 0;
Mujeres2040 = 0;
hombres4060 = 0;
Mujeres4060 = 0;
hombresmay = 0;
Mujeresmay = 0;

heart_data.age=(heart_data.age/365);

% Asumimos que 'heart_data' ya está cargado y 'T' es innecesario
for i = 1:length(heart_data.age)
    if heart_data.cardio(i) == 1 % Solo consideramos casos con enfermedad cardiovascular
        % Menores de 20 años
        if heart_data.age(i) <= 40
            if heart_data.gender(i) == 1
                hombres2040 = hombres2040 + 1;
            elseif heart_data.gender(i) == 2
                Mujeres2040 = Mujeres2040 + 1;
            end
        % Entre 40 y 60 años
        elseif heart_data.age(i) <= 60
            if heart_data.gender(i) == 1
                hombres4060 = hombres4060 + 1;
            elseif heart_data.gender(i) == 2
                Mujeres4060 = Mujeres4060 + 1;
            end
        % Mayores de 60 años
        else
            if heart_data.gender(i) == 1
                hombresmay = hombresmay + 1;
            elseif heart_data.gender(i) == 2
                Mujeresmay = Mujeresmay + 1;
            end
        end
    end
end

% Datos para la gráfica
x = [ "entre 20 y 40 años", "entre 40 y 60 años", "más de 60 años"];
y = [hombres2040 Mujeres2040; hombres4060 Mujeres4060; hombresmay Mujeresmay];
bar(x, y);
xlabel('Edad de las personas');
ylabel('Cantidad de personas');
title('Con Enfermedad cardiovascular');
legend('Hombres', 'Mujeres');