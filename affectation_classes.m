function idx = affectation_classes(X, centroides)

K = size(centroides, 1);

% Initialisation du vecteur idx qui contient l'indice (dans l'ensemble
% {1,...,K} de la classe à laquelle est affectée la donnée courante.

idx = zeros(size(X,1), 1);


% ======================A COMPLETER  =================
for i = 1:size(X,1)
    q = find(sum((ones(K,1)*X(i,:)- centroides).^2,2) == min(sum((ones(K,1)*X(i,:)- centroides).^2,2)));
    idx(i) =q;
end    

% =============================================================

end

