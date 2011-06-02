function res = methode_puissance(A, n)
    N = size(A,'r');
    v = rand(N,1);
    for i=0:n
        v = A*v;
        v = v ./norm(v);
    end
    res = v;
endfunction