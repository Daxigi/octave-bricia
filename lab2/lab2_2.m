medida_folio_real = 29.6;
medida_folio_obtenida = 30.0;

medida_pupitre_real = 65.0;
medida_pupitre_obtenida = 65.4;

% error absoluto
error_folio = abs(medida_folio_obtenida - medida_folio_real);
error_pupitre = abs(medida_pupitre_obtenida - medida_pupitre_real);

% error relativo
error_relativo_folio =  error_folio/medida_folio_real;
error_relativo_pupitre = error_pupitre/medida_pupitre_real;

fprintf('Error relativo del folio: %.15f\n', error_relativo_folio);
fprintf('Error relativo del pupitre: %.15f\n', error_relativo_pupitre);

if error_relativo_folio < error_relativo_pupitre
    fprintf('La medida del folio es más precisa. \n');
elseif error_relativo_folio > error_relativo_pupitre
    fprintf('La medida del pupitre es más precisa. \n');
else
    fprintf('Ambas mediciones tienen la misma precisión. \n');
end

