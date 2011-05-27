function res = methode_puissance(A, n)
    N = size(A,'r');
    v = rand(N,1);
    v = v ./norm(v);
    for i=0:n
        v = A*v;
    end
    res = v;
endfunction