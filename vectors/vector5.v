module top_module (
    input a, b, c, d, e,
    output [24:0] out );//
	
    wire [24:0] z1, z2;
    
    assign z1 = {{5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}}};
    assign z2 = {{5{a,b,c,d,e}}};
                 
    assign out = ~z1 ^ z2;

endmodule
