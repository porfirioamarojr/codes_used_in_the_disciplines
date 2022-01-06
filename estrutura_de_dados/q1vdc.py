def unknown(v, s, e):
    if(s + 1 < e -1):
        unknown(v, s + 1, e - 1)
    
    a = v[s]
    print("valor de a: %d", a)
    print(" valor de v[s]: %d", v[s])
    v[s] = v[e]
    print("valor de v[s]: %d", v[s])
    print("valor de v[e]: %d", v[e])
    v[e] = a
    print("valor de v[e]: %d", v[e])
    print("valor de a: %d", a)
    
s = 0
e = 4
v = []

unknown(v, s, e)
