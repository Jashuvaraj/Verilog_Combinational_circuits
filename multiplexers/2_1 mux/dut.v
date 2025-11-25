module two_mux(z,s,a,b);
input s;
input a,b;
output z;
wire w1,w2,w3;
and a1(w2,w1,a);
not n1(w1,s);
and a2(w3,s,b);
or o1(z,w2,w3);
endmodule
