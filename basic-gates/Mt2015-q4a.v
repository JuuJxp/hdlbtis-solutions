module top_module (input x, input y, output z);
    mod_a ia1(x,y,z);
endmodule

module mod_a(input a, input b, output c);
    assign c = (a ^ b) && a;
endmodule
