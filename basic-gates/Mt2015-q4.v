module top_module (input x, input y, output z);
	wire a1,a2,b1,b2;
    mod_a ia1(x,y,a1);
    mod_a ia2(x,y,a2);
    
    mod_b ib1(x,y,b1);
    mod_b ib2(x,y,b2);
    
    assign z = (a1 || b1) ^ (a2 && b2);
endmodule

module mod_a (input a, input b, output c);
    assign c = (a ^ b) && a;
endmodule

module mod_b(input d, input e, output f);
    assign f = ~(d ^ e);
endmodule
