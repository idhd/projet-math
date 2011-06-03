function res = methode_puissance_amelio(Q, alpha, n)
    taille = size(Q, 'r'); // Dimentions de la matrice
    
    // Génétaion et normalisation d'un vecteur aléatoire.
    v = rand(taille, 1);
    v = v ./norm(v, 1);
    
    // Variables 
    alphaQ = 1; // produit aplha*Q 
    s_alphaQ = 0; // somme de ce produit
    for i=0:n
        s_alphaQ = s_alphaQ + alphaQ;
        alphaQ = alpha*Q*alphaQ;
    end
    v = alphaQ*v + s_alphaQ*(((1-norm(Q,1))/taille).*ones(taille,1));
    res = v;
endfunction