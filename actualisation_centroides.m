function centroides = actualisation_centroides(X, idx, K)

[m n] = size(X);

% Initialisation de l'argument de sortie.
centroides = zeros(K,n);



% ================= A COMPLETER ==============================
for k = 1:K
    p = find(idx==k)
    centroides(k,1:n) = 1/length(p)*sum(X(p,:,1))

% =============================================================


end

