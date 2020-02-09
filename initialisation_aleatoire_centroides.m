function centroides = initialisation_aleatoire_centroides(X, K)
%initialisation
centroides = zeros(K, size(X, 2));

%selection aleatoire des centroides parmi les donnees contenues dans la matrice X

%randperm retourne un vecteur contenant une permutation aleatoire des
%entiers allant de 1 a size(X,1)
randix=randperm(size(X,1));

%extraction des K elements aleatoires

centroides=X(randix(1:K),:);






% =============================================================

end

