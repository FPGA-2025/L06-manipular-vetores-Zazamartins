module manipular_vetores(
    input [31:0] entrada,
    output [31:0] saida
);

    // A endianess é invertida trocando a ordem dos bytes
    // TEMOS 4 BYTES B0[7:0], B1[15:8], B2[23,16], B3[31:24]
    
    assign saida[31:24] = entrada[7:0];    // Byte 0 vai para posição 3
    assign saida[23:16] = entrada[15:8];   // Byte 1 vai para posição 2
    assign saida[15:8] = entrada[23:16];   // Byte 2 vai para posição 1
    assign saida[7:0] = entrada[31:24];    // Byte 3 vai para posição 0

endmodule