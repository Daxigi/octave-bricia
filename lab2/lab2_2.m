% Datos de las mediciones
medidas_folio_real = 29.6;
medidas_folio_obtenida = 30.0;

medida_pupitre_real = 65.0;
medida_pupitre_obtenida = 65.4;

%Calculo del error absoluto
error_folio = abs(medidas_folio_obtenida - medidas_folio_real);
error_pupitre = abs(medida_pupitre_obtenida - medida_pupitre_real);

%Calculo del error relativo
error_relativo_folio =  error_folio/medidas_folio_real;
error_relativo_pupitre = error_pupitre/medida_pupitre_real;

% Comparar cual es la mas precisa
if error_relativo_folio < error_relativo_pupitre
    fprintf('La medida del folio es más precisa. \n');
elseif error_relativo_folio > error_relativo_pupitre
    fprintf('La medida del pupitre es más precisa. \n');
else
    fprintf('Ambas mediciones tienen la misma precisión. \n');
end

