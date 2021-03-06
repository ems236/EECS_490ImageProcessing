classdef Constants
    properties( Constant = true )
         SHRINK_CONDITIONAL=[
            %1 
            0b001010000; 0b100010000; 0b000010100; 0b000010001;
            %2
            0b000011000; 0b010010000; 0b000110000; 0b000010010;
            %3 
            0b001011000; 0b011010000; 0b110010000; 0b100110000; 
            0b000110100; 0b000110100; 0b000010011; 0b000011001;
            %4
            0b001011001; 0b111010000; 0b100110100; 0b000010111;
            %5
            0b110011000; 0b010011001; 0b011110000; 0b001011010;
            %5
            0b011011000; 0b110110000; 0b000110110; 0b000011011;
            %6
            0b110011001; 0b011110100;
            %6
            0b111011000; 0b011011001; 0b111110000; 0b110110100;
            0b100110110; 0b000110111; 0b000011111; 0b001011011;
            %7
            0b111011001; 0b111110100; 0b100110111; 0b001011111;
            %8
            0b011011011; 0b111111000; 0b110110110; 0b000111111;
            %9
            0b111011011; 0b011011111; 0b111111100; 0b111111001;
            0b111110110; 0b110110111; 0b100111111; 0b001111111;
            %10
            0b111011111; 0b111111101; 0b111110111; 0b101111111];
        
        THIN_CONDITIONAL=[
            %4
            0b010011000; 0b010110000; 0b000110010; 0b000011010;
            %4
            0b001011001; 0b111010000; 0b100110100; 0b000010111;
            %5
            0b110011000; 0b010011001; 0b011110000; 0b001011010;
            %5
            0b011011000; 0b110110000; 0b000110110; 0b000011011;
            %6
            0b110011001; 0b011110100;
            %6
            0b111011000; 0b011011001; 0b111110000; 0b110110100;
            0b100110110; 0b000110111; 0b000011111; 0b001011011;
            %7
            0b111011001; 0b111110100; 0b100110111; 0b001011111;
            %8
            0b011011011; 0b111111000; 0b110110110; 0b000111111;
            %9
            0b111011011; 0b011011111; 0b111111100; 0b111111001;
            0b111110110; 0b110110111; 0b100111111; 0b001111111;
            %10
            0b111011111; 0b111111101; 0b111110111; 0b101111111];
        
        SKELETONIZE_CONDITIONAL=[
            %4
            0b010011000; 0b010110000; 0b000110010; 0b000011010;
            %4
            0b001011001; 0b111010000; 0b100110100; 0b000010111;
            %6
            0b111011000; 0b011011001; 0b111110000; 0b110110100;
            0b100110110; 0b000110111; 0b000011111; 0b001011011;
            %7
            0b111011001; 0b111110100; 0b100110111; 0b001011111;
            %8
            0b011011011; 0b111111000; 0b110110110; 0b000111111;
            %9
            0b111011011; 0b011011111; 0b111111100; 0b111111001;
            0b111110110; 0b110110111; 0b100111111; 0b001111111;
            %10
            0b111011111; 0b111111101; 0b111110111; 0b101111111;
            %11
            0b111111011; 0b111111110; 0b110111111; 0b011111111];
        
        SHRINK_UNCONDITIONAL=[
            %Spur
            0b001010000; 0b100010000;
            
            %Single 4-Conn
            0b000010010; 0b000011000;
            
            %4-connected Offset
            0b011110000; 0b110011000; 0b010011001; 0b001011010;
            
            %Spur corner cluster
            %A = 1, B=1
            0b011011100; 0b110110001; 0b001110110; 0b100011011;
            %A = 1, B=0;
            0b011010100; 0b100110001; 0b001110100; 0b100010011;
            %A = 0, B=1;
            0b001011100; 0b110010001; 0b001010110; 0b100011001;
            
            %Corner Cluster
            %D=0
            0b110110000;
            %one D=1
            0b111110000; 0b110111000; 0b110110100; 0b110110010; 0b110110001;
            %two D=1
            0b111111000; 0b111110100; 0b111110010; 0b111110001;
            0b110111100; 0b110111010; 0b110111001;
            0b110110110; 0b110110101;
            0b110110011;
            %three D=1
            0b111111100; 0b111111010; 0b111111001;
            0b111110110; 0b111110101;
            0b111110011;
            0b110111110; 0b110111101;
            0b110111011;
            0b110110111;
            %four D=1
            0b111111110; 0b111111101; 0b111111011; 0b111110111; 0b110111111;
            %D=1
            0b111111111;
            
            %Tee Branch
            %D=0
            0b010111000; 0b010111000; 0b000111010; 0b000111010;
            0b010110010; 0b010110010; 0b010011010; 0b010011010;
            
            %1 D=1
            0b110111000; 0b010111100;
            0b011111000; 0b010111001;
            0b001111010; 0b000111011;
            0b100111010; 0b000111110;
            0b110110010; 0b011110010;
            0b010110110; 0b010110011;
            0b010011110; 0b010011011;
            0b110011010; 0b011011010;
            
            %D=1
            0b110111100; 0b011111001; 0b001111011; 0b100111110;
            0b111110010; 0b010110111; 0b010011111; 0b111011010;
            
            %Vee Branch
            %D=0, A=1, B=0, C=0
            0b101010100; 0b100010101; 0b001010101; 0b101010001;
            %D=0, A=0, B=1, C=0
            0b101010010; 0b100011100; 0b010010101; 0b001110001;
            %D=0, A=0, B=0, C=1
            0b101010001; 0b101010100; 0b100010101; 0b001010101;
            %D=0, A=1, B=1, C=0
            0b101010110; 0b100011101; 0b011010101; 0b101110001;
            %D=0, A=1, B=0, C=1
            0b101010101; 0b101010101; 0b101010101; 0b101010101;
            %D=0, A=1, B=1, C=1
            0b101010111; 0b101011101; 0b111010101; 0b101110101;
            
            %D1=1, A=1, B=0, C=0
            0b111010100; 0b110010101; 0b001110101; 0b111010001;
            %D1=1, A=0, B=1, C=0
            0b111010010; 0b110011100; 0b010110101; 0b011110001;
            %D1=1, A=0, B=0, C=1
            0b111010001; 0b111010100; 0b100110101; 0b011010101;
            %D1=1, A=1, B=1, C=0
            0b111010110; 0b110011101; 0b011110101; 0b111110001;
            %D1=1, A=1, B=0, C=1
            0b111010101; 0b111010101; 0b101110101; 0b111010101;
            %D1=1, A=1, B=1, C=1
            0b111010111; 0b111011101; 0b111110101; 0b111110101;
            
            %D2=1, A=1, B=0, C=0
            0b101110100; 0b100110101; 0b001011101; 0b101011001;
            %D2=1, A=0, B=1, C=0
            0b101110010; 0b100111100; 0b010011101; 0b001111001;
            %D2=1, A=0, B=0, C=1
            0b101110001; 0b101110100; 0b100011101; 0b001011101;
            %D2=1, A=1, B=1, C=0
            0b101110110; 0b100111101; 0b011011101; 0b101111001;
            %D2=1 A=1, B=0, C=1
            0b101110101; 0b101110101; 0b101011101; 0b101011101;
            %D2=1, A=1, B=1, C=1
            0b101110111; 0b101111101; 0b111011101; 0b101111101;
            
            %D3=1, A=1, B=0, C=0
            0b101011100; 0b100010111; 0b001010111; 0b101010011;
            %D3=1, A=0, B=1, C=0
            0b101011010; 0b100011110; 0b010010111; 0b001110011;
            %D3=1, A=0, B=0, C=1
            0b101011001; 0b101010110; 0b100010111; 0b001010111;
            %D3=1, A=1, B=1, C=0
            0b101011110; 0b100011111; 0b011010111; 0b101110011;
            %D3=1, A=1, B=0, C=1
            0b101011101; 0b101010111; 0b101010111; 0b101010111;
            %D3=1, A=1, B=1, C=1
            0b101011111; 0b101011111; 0b111010111; 0b101110111;
            
            %D1=1 D2=1, A=1, B=0, C=0
            0b111110100; 0b110110101; 0b001111101; 0b111011001;
            %D1=1 D2=1, A=0, B=1, C=0
            0b111110010; 0b110111100; 0b010111101; 0b011111001;
            %D1=1 D2=1, A=0, B=0, C=1
            0b111110001; 0b111110100; 0b100111101; 0b011011101;
            %D1=1 D2=1, A=1, B=1, C=0
            0b111110110; 0b110111101; 0b011111101; 0b111111001;
            %D1=1, D2=1 A=1, B=0, C=1
            0b111110101; 0b111110101; 0b101111101; 0b111011101;
            %D1=1 D2=1, A=1, B=1, C=1
            0b111110111; 0b111111101; 0b111111101; 0b111111101;
            
            %D1=1 D3=1, A=1, B=0, C=0
            0b111011100; 0b110010111; 0b001110111; 0b111010011;
            %D1=1 D3=1, A=0, B=1, C=0
            0b111011010; 0b110011110; 0b010110111; 0b011110011;
            %D1=1 D3=1, A=0, B=0, C=1
            0b111011001; 0b111010110; 0b100110111; 0b011010111;
            %D1=1 D3=1, A=1, B=1, C=0
            0b111011110; 0b110011111; 0b011110111; 0b111110011;
            %D1=1 D3=1, A=1 B=0, C=1
            0b111011101; 0b111010111; 0b101110111; 0b111010111;
            %D1=1 D3=1, A=1, B=1, C=1
            0b111011111; 0b111011111; 0b111110111; 0b111110111;
            
            %D2=1 D3=1, A=1, B=0, C=0
            0b101111100; 0b100110111; 0b001011111; 0b101011011;
            %D2=1 D3=1, A=0, B=1, C=0
            0b101111010; 0b100111110; 0b010011111; 0b001111011;
            %D2=1 D3=1, A=0, B=0, C=1
            0b101111001; 0b101110110; 0b100011111; 0b001011111;
            %D2=1 D3=1, A=1, B=1, C=0
            0b101111110; 0b100111111; 0b011011111; 0b101111011;
            %D2=1 D3=1, A=1, B=0, C=1
            0b101111101; 0b101110111; 0b101011111; 0b101011111;
            %D2=1 D3=1, A=1, B=1, C=1
            0b101111111; 0b101111111; 0b111011111; 0b101111111;
            
            %D1=1 D2=1 D3=1, A=1, B=0, C=0
            0b111111100; 0b110110111; 0b001111111; 0b111011011;
            %D1=1 D2=1 D3=1, A=0, B=1, C=0
            0b111111010; 0b110111110; 0b010111111; 0b011111011;
            %D1=1 D2=1 D3=1, A=0, B=0, C=1
            0b111111001; 0b111110110; 0b100111111; 0b011011111;
            %D1=1 D2=1 D3=1, A=1, B=1, C=0
            0b111111110; 0b110111111; 0b011111111; 0b111111011;
            %D1=1, D2=1 D3=1, A=1 B=0, C=1
            0b111111101; 0b111110111; 0b101111111; 0b111011111;
            %D1=1 D2=1 D3=1, A=1, B=1, C=1
            0b111111111; 0b111111111; 0b111111111; 0b111111111;
            
            %Diagonal Branch
            %D=0
            0b010011100; 0b010110001; 0b001110010; 0b100011010;
            
            %1 D=1
            0b110011100; 0b010011101;
            0b011110001; 0b010110101;
            0b101110010; 0b001110011;
            0b101011010; 0b100011110;
            
            %D=1
            0b110011101; 0b011110101; 0b101110011; 0b101011110;
        ];
    
    THIN_UNCONDITIONAL=[
            %Spur
            0b001010000; 0b100010000;
            
            %Single 4-Conn
            0b000010010; 0b000011000;
            
            %L-cluster
            0b001011000; 0b011010000; 0b110010000; 0b100110000;
            0b000110100; 0b000010110; 0b000010011; 0b000011001;
            
            %4-connected Offset
            0b011110000; 0b110011000; 0b010011001; 0b001011010;
            
            %Spur corner cluster
            %A = 1, B=1
            0b011011100; 0b110110001; 0b001110110; 0b100011011;
            %A = 1, B=0;
            0b011010100; 0b100110001; 0b001110100; 0b100010011;
            %A = 0, B=1;
            0b001011100; 0b110010001; 0b001010110; 0b100011001;
            
            %Corner Cluster
            %D=0
            0b110110000;
            %one D=1
            0b111110000; 0b110111000; 0b110110100; 0b110110010; 0b110110001;
            %two D=1
            0b111111000; 0b111110100; 0b111110010; 0b111110001;
            0b110111100; 0b110111010; 0b110111001;
            0b110110110; 0b110110101;
            0b110110011;
            %three D=1
            0b111111100; 0b111111010; 0b111111001;
            0b111110110; 0b111110101;
            0b111110011;
            0b110111110; 0b110111101;
            0b110111011;
            0b110110111;
            %four D=1
            0b111111110; 0b111111101; 0b111111011; 0b111110111; 0b110111111;
            %D=1
            0b111111111;
            
            %Tee Branch
            %D=0
            0b010111000; 0b010111000; 0b000111010; 0b000111010;
            0b010110010; 0b010110010; 0b010011010; 0b010011010;
            
            %1 D=1
            0b110111000; 0b010111100;
            0b011111000; 0b010111001;
            0b001111010; 0b000111011;
            0b100111010; 0b000111110;
            0b110110010; 0b011110010;
            0b010110110; 0b010110011;
            0b010011110; 0b010011011;
            0b110011010; 0b011011010;
            
            %D=1
            0b110111100; 0b011111001; 0b001111011; 0b100111110;
            0b111110010; 0b010110111; 0b010011111; 0b111011010;
            
            %Vee Branch
            %D=0, A=1, B=0, C=0
            0b101010100; 0b100010101; 0b001010101; 0b101010001;
            %D=0, A=0, B=1, C=0
            0b101010010; 0b100011100; 0b010010101; 0b001110001;
            %D=0, A=0, B=0, C=1
            0b101010001; 0b101010100; 0b100010101; 0b001010101;
            %D=0, A=1, B=1, C=0
            0b101010110; 0b100011101; 0b011010101; 0b101110001;
            %D=0, A=1, B=0, C=1
            0b101010101; 0b101010101; 0b101010101; 0b101010101;
            %D=0, A=1, B=1, C=1
            0b101010111; 0b101011101; 0b111010101; 0b101110101;
            
            %D1=1, A=1, B=0, C=0
            0b111010100; 0b110010101; 0b001110101; 0b111010001;
            %D1=1, A=0, B=1, C=0
            0b111010010; 0b110011100; 0b010110101; 0b011110001;
            %D1=1, A=0, B=0, C=1
            0b111010001; 0b111010100; 0b100110101; 0b011010101;
            %D1=1, A=1, B=1, C=0
            0b111010110; 0b110011101; 0b011110101; 0b111110001;
            %D1=1, A=1, B=0, C=1
            0b111010101; 0b111010101; 0b101110101; 0b111010101;
            %D1=1, A=1, B=1, C=1
            0b111010111; 0b111011101; 0b111110101; 0b111110101;
            
            %D2=1, A=1, B=0, C=0
            0b101110100; 0b100110101; 0b001011101; 0b101011001;
            %D2=1, A=0, B=1, C=0
            0b101110010; 0b100111100; 0b010011101; 0b001111001;
            %D2=1, A=0, B=0, C=1
            0b101110001; 0b101110100; 0b100011101; 0b001011101;
            %D2=1, A=1, B=1, C=0
            0b101110110; 0b100111101; 0b011011101; 0b101111001;
            %D2=1 A=1, B=0, C=1
            0b101110101; 0b101110101; 0b101011101; 0b101011101;
            %D2=1, A=1, B=1, C=1
            0b101110111; 0b101111101; 0b111011101; 0b101111101;
            
            %D3=1, A=1, B=0, C=0
            0b101011100; 0b100010111; 0b001010111; 0b101010011;
            %D3=1, A=0, B=1, C=0
            0b101011010; 0b100011110; 0b010010111; 0b001110011;
            %D3=1, A=0, B=0, C=1
            0b101011001; 0b101010110; 0b100010111; 0b001010111;
            %D3=1, A=1, B=1, C=0
            0b101011110; 0b100011111; 0b011010111; 0b101110011;
            %D3=1, A=1, B=0, C=1
            0b101011101; 0b101010111; 0b101010111; 0b101010111;
            %D3=1, A=1, B=1, C=1
            0b101011111; 0b101011111; 0b111010111; 0b101110111;
            
            %D1=1 D2=1, A=1, B=0, C=0
            0b111110100; 0b110110101; 0b001111101; 0b111011001;
            %D1=1 D2=1, A=0, B=1, C=0
            0b111110010; 0b110111100; 0b010111101; 0b011111001;
            %D1=1 D2=1, A=0, B=0, C=1
            0b111110001; 0b111110100; 0b100111101; 0b011011101;
            %D1=1 D2=1, A=1, B=1, C=0
            0b111110110; 0b110111101; 0b011111101; 0b111111001;
            %D1=1, D2=1 A=1, B=0, C=1
            0b111110101; 0b111110101; 0b101111101; 0b111011101;
            %D1=1 D2=1, A=1, B=1, C=1
            0b111110111; 0b111111101; 0b111111101; 0b111111101;
            
            %D1=1 D3=1, A=1, B=0, C=0
            0b111011100; 0b110010111; 0b001110111; 0b111010011;
            %D1=1 D3=1, A=0, B=1, C=0
            0b111011010; 0b110011110; 0b010110111; 0b011110011;
            %D1=1 D3=1, A=0, B=0, C=1
            0b111011001; 0b111010110; 0b100110111; 0b011010111;
            %D1=1 D3=1, A=1, B=1, C=0
            0b111011110; 0b110011111; 0b011110111; 0b111110011;
            %D1=1 D3=1, A=1 B=0, C=1
            0b111011101; 0b111010111; 0b101110111; 0b111010111;
            %D1=1 D3=1, A=1, B=1, C=1
            0b111011111; 0b111011111; 0b111110111; 0b111110111;
            
            %D2=1 D3=1, A=1, B=0, C=0
            0b101111100; 0b100110111; 0b001011111; 0b101011011;
            %D2=1 D3=1, A=0, B=1, C=0
            0b101111010; 0b100111110; 0b010011111; 0b001111011;
            %D2=1 D3=1, A=0, B=0, C=1
            0b101111001; 0b101110110; 0b100011111; 0b001011111;
            %D2=1 D3=1, A=1, B=1, C=0
            0b101111110; 0b100111111; 0b011011111; 0b101111011;
            %D2=1 D3=1, A=1, B=0, C=1
            0b101111101; 0b101110111; 0b101011111; 0b101011111;
            %D2=1 D3=1, A=1, B=1, C=1
            0b101111111; 0b101111111; 0b111011111; 0b101111111;
            
            %D1=1 D2=1 D3=1, A=1, B=0, C=0
            0b111111100; 0b110110111; 0b001111111; 0b111011011;
            %D1=1 D2=1 D3=1, A=0, B=1, C=0
            0b111111010; 0b110111110; 0b010111111; 0b011111011;
            %D1=1 D2=1 D3=1, A=0, B=0, C=1
            0b111111001; 0b111110110; 0b100111111; 0b011011111;
            %D1=1 D2=1 D3=1, A=1, B=1, C=0
            0b111111110; 0b110111111; 0b011111111; 0b111111011;
            %D1=1, D2=1 D3=1, A=1 B=0, C=1
            0b111111101; 0b111110111; 0b101111111; 0b111011111;
            %D1=1 D2=1 D3=1, A=1, B=1, C=1
            0b111111111; 0b111111111; 0b111111111; 0b111111111;
            
            %Diagonal Branch
            %D=0
            0b010011100; 0b010110001; 0b001110010; 0b100011010;
            
            %1 D=1
            0b110011100; 0b010011101;
            0b011110001; 0b010110101;
            0b101110010; 0b001110011;
            0b101011010; 0b100011110;
            
            %D=1
            0b110011101; 0b011110101; 0b101110011; 0b101011110;
        ];
    
    SKELETONIZE_UNCONDITIONAL=[
            %Spur
            0b000010001; 0b000010100; 0b00101000; 0b10001000; 
            
            %Single 4-Conn
            0b000010010; 0b000011000; 0b000110000; 0b010010000;
            
            %L-corner
            0b010011000; 0b010110000; 0b000011010; 0b000110010;
            
            %Corner Cluster
            %D=0
            0b110110000;
            %one D=1
            0b111110000; 0b110111000; 0b110110100; 0b110110010; 0b110110001;
            %two D=1
            0b111111000; 0b111110100; 0b111110010; 0b111110001;
            0b110111100; 0b110111010; 0b110111001;
            0b110110110; 0b110110101;
            0b110110011;
            %three D=1
            0b111111100; 0b111111010; 0b111111001;
            0b111110110; 0b111110101;
            0b111110011;
            0b110111110; 0b110111101;
            0b110111011;
            0b110110111;
            %four D=1
            0b111111110; 0b111111101; 0b111111011; 0b111110111; 0b110111111;
            %D=1
            0b111111111;
            
            %D=0
            0b000011011;
            %one D=1
            0b100011011; 0b010011011; 0b001011011; 0b000111011; 0b000011111;
            %two D=1
            0b110011011; 0b101011011; 0b100111011; 0b100011111;
            0b011011011; 0b010111011; 0b010011111;
            0b001111011; 0b001011111;
            0b000111111;
            %three D=1
            0b111011011; 0b110111011; 0b110011111;
            0b101111011; 0b101011111;
            0b100111111;
            0b011111011; 0b011011111;
            0b010111111;
            0b001111111;
            %four D=1
            0b111111011; 0b111011111; 0b110111111; 0b101111111; 0b011111111;
            %D=1
            0b111111111;
            
            %Tee Branch
            %D1=0, D2=0, D3=0, D4=0, D5=0
            0b010111000; 0b010110010; 0b000111010; 0b010011010;
            
            %D1=1, D2=0, D3=0, D4=0, D5=0
            0b110111000; 0b110110010; 0b100111010; 0b110011010;
            
            %D1=0, D2=1, D3=0, D4=0, D5=0
            0b011111000; 0b011110010; 0b010111010; 0b011011010;
            
            %D1=0, D2=0, D3=1, D4=0, D5=0
            0b010111100; 0b010111010; 0b001111010; 0b010111010;
            
            %D1=0, D2=0, D3=0, D4=1, D5=0
            0b010111010; 0b010110110; 0b000111110; 0b010011110;
            
            %D1=0, D2=0, D3=0, D4=0, D5=1
            0b010111001; 0b010110011; 0b000111011; 0b010011011;
            
            %D1=1, D2=1, D3=0, D4=0, D5=0
            0b111111000; 0b111110010; 0b110111010; 0b111011010;
            
            %D1=1, D2=0, D3=1, D4=0, D5=0
            0b110111100; 0b110111010; 0b101111010; 0b110111010;
            
            %D1=1, D2=0, D3=0, D4=1, D5=0
            0b110111010; 0b110110110; 0b100111110; 0b110011110;
            
            %D1=1, D2=0, D3=0, D4=0, D5=1
            0b110111001; 0b110110011; 0b100111011; 0b110011011;
            
            %D1=0, D2=1, D3=1, D4=0, D5=0
            0b011111100; 0b011111010; 0b011111010; 0b011111010;
            
            %D1=0, D2=1, D3=0, D4=1, D5=0
            0b011111010; 0b011110110; 0b010111110; 0b011011110;
            
            %D1=0, D2=1, D3=0, D4=0, D5=1
            0b011111001; 0b011110011; 0b010111011; 0b011011011;
            
            %D1=0, D2=0, D3=1, D4=1, D5=0
            0b010111110; 0b010111110; 0b001111110; 0b010111110;
            
            %D1=0, D2=0, D3=1, D4=0, D5=1
            0b010111101; 0b010111011; 0b001111011; 0b010111011;
            
            %D1=0, D2=0, D3=0, D4=1, D5=1
            0b010111011; 0b010110111; 0b000111111; 0b010011111;
            
            %D1=1, D2=1, D3=1, D4=0, D5=0
            0b111111100; 0b111111010; 0b111111010; 0b111111010;
            
            %D1=1, D2=1, D3=0, D4=1, D5=0
            0b111111010; 0b111110110; 0b110111110; 0b111011110;
            
            %D1=1, D2=1, D3=0, D4=0, D5=1
            0b111111001; 0b111110011; 0b110111011; 0b111011011;
            
            %D1=1, D2=0, D3=1, D4=1, D5=0
            0b110111110; 0b110111110; 0b101111110; 0b110111110;
            
            %D1=1, D2=0, D3=1, D4=0, D5=1
            0b110111101; 0b110111011; 0b101111011; 0b110111011;
            
            %D1=1, D2=0, D3=0, D4=1, D5=1
            0b110111011; 0b110110111; 0b100111111; 0b110011111;
            
            %D1=0, D2=1, D3=1, D4=1, D5=0
            0b011111110; 0b011111110; 0b011111110; 0b011111110;
            
            %D1=0, D2=1, D3=1, D4=0, D5=1
            0b011111101; 0b011111011; 0b011111011; 0b011111011;
            
            %D1=0, D2=1, D3=0, D4=1, D5=1
            0b011111011; 0b011110111; 0b010111111; 0b011011111;
            
            %D1=0, D2=0, D3=1, D4=1, D5=1
            0b010111111; 0b010111111; 0b001111111; 0b010111111;
            
            %D1=1, D2=1, D3=1, D4=1, D5=0
            0b111111110; 0b111111110; 0b111111110; 0b111111110;
            
            %D1=1, D2=1, D3=1, D4=0, D5=1
            0b111111101; 0b111111011; 0b111111011; 0b111111011;
            
            %D1=1, D2=1, D3=0, D4=1, D5=1
            0b111111011; 0b111110111; 0b110111111; 0b111011111;
            
            %D1=1, D2=0, D3=1, D4=1, D5=1
            0b110111111; 0b110111111; 0b101111111; 0b110111111;
            
            %D1=0, D2=1, D3=1, D4=1, D5=1
            0b011111111; 0b011111111; 0b011111111; 0b011111111;
            
            %D1=1, D2=1, D3=1, D4=1, D5=1
            0b111111111; 0b111111111; 0b111111111; 0b111111111;
            
            
            %Vee Branch
            %D=0, A=1, B=0, C=0
            0b101010100; 0b100010101; 0b001010101; 0b101010001;
            %D=0, A=0, B=1, C=0
            0b101010010; 0b100011100; 0b010010101; 0b001110001;
            %D=0, A=0, B=0, C=1
            0b101010001; 0b101010100; 0b100010101; 0b001010101;
            %D=0, A=1, B=1, C=0
            0b101010110; 0b100011101; 0b011010101; 0b101110001;
            %D=0, A=1, B=0, C=1
            0b101010101; 0b101010101; 0b101010101; 0b101010101;
            %D=0, A=1, B=1, C=1
            0b101010111; 0b101011101; 0b111010101; 0b101110101;
            
            %D1=1, A=1, B=0, C=0
            0b111010100; 0b110010101; 0b001110101; 0b111010001;
            %D1=1, A=0, B=1, C=0
            0b111010010; 0b110011100; 0b010110101; 0b011110001;
            %D1=1, A=0, B=0, C=1
            0b111010001; 0b111010100; 0b100110101; 0b011010101;
            %D1=1, A=1, B=1, C=0
            0b111010110; 0b110011101; 0b011110101; 0b111110001;
            %D1=1, A=1, B=0, C=1
            0b111010101; 0b111010101; 0b101110101; 0b111010101;
            %D1=1, A=1, B=1, C=1
            0b111010111; 0b111011101; 0b111110101; 0b111110101;
            
            %D2=1, A=1, B=0, C=0
            0b101110100; 0b100110101; 0b001011101; 0b101011001;
            %D2=1, A=0, B=1, C=0
            0b101110010; 0b100111100; 0b010011101; 0b001111001;
            %D2=1, A=0, B=0, C=1
            0b101110001; 0b101110100; 0b100011101; 0b001011101;
            %D2=1, A=1, B=1, C=0
            0b101110110; 0b100111101; 0b011011101; 0b101111001;
            %D2=1 A=1, B=0, C=1
            0b101110101; 0b101110101; 0b101011101; 0b101011101;
            %D2=1, A=1, B=1, C=1
            0b101110111; 0b101111101; 0b111011101; 0b101111101;
            
            %D3=1, A=1, B=0, C=0
            0b101011100; 0b100010111; 0b001010111; 0b101010011;
            %D3=1, A=0, B=1, C=0
            0b101011010; 0b100011110; 0b010010111; 0b001110011;
            %D3=1, A=0, B=0, C=1
            0b101011001; 0b101010110; 0b100010111; 0b001010111;
            %D3=1, A=1, B=1, C=0
            0b101011110; 0b100011111; 0b011010111; 0b101110011;
            %D3=1, A=1, B=0, C=1
            0b101011101; 0b101010111; 0b101010111; 0b101010111;
            %D3=1, A=1, B=1, C=1
            0b101011111; 0b101011111; 0b111010111; 0b101110111;
            
            %D1=1 D2=1, A=1, B=0, C=0
            0b111110100; 0b110110101; 0b001111101; 0b111011001;
            %D1=1 D2=1, A=0, B=1, C=0
            0b111110010; 0b110111100; 0b010111101; 0b011111001;
            %D1=1 D2=1, A=0, B=0, C=1
            0b111110001; 0b111110100; 0b100111101; 0b011011101;
            %D1=1 D2=1, A=1, B=1, C=0
            0b111110110; 0b110111101; 0b011111101; 0b111111001;
            %D1=1, D2=1 A=1, B=0, C=1
            0b111110101; 0b111110101; 0b101111101; 0b111011101;
            %D1=1 D2=1, A=1, B=1, C=1
            0b111110111; 0b111111101; 0b111111101; 0b111111101;
            
            %D1=1 D3=1, A=1, B=0, C=0
            0b111011100; 0b110010111; 0b001110111; 0b111010011;
            %D1=1 D3=1, A=0, B=1, C=0
            0b111011010; 0b110011110; 0b010110111; 0b011110011;
            %D1=1 D3=1, A=0, B=0, C=1
            0b111011001; 0b111010110; 0b100110111; 0b011010111;
            %D1=1 D3=1, A=1, B=1, C=0
            0b111011110; 0b110011111; 0b011110111; 0b111110011;
            %D1=1 D3=1, A=1 B=0, C=1
            0b111011101; 0b111010111; 0b101110111; 0b111010111;
            %D1=1 D3=1, A=1, B=1, C=1
            0b111011111; 0b111011111; 0b111110111; 0b111110111;
            
            %D2=1 D3=1, A=1, B=0, C=0
            0b101111100; 0b100110111; 0b001011111; 0b101011011;
            %D2=1 D3=1, A=0, B=1, C=0
            0b101111010; 0b100111110; 0b010011111; 0b001111011;
            %D2=1 D3=1, A=0, B=0, C=1
            0b101111001; 0b101110110; 0b100011111; 0b001011111;
            %D2=1 D3=1, A=1, B=1, C=0
            0b101111110; 0b100111111; 0b011011111; 0b101111011;
            %D2=1 D3=1, A=1, B=0, C=1
            0b101111101; 0b101110111; 0b101011111; 0b101011111;
            %D2=1 D3=1, A=1, B=1, C=1
            0b101111111; 0b101111111; 0b111011111; 0b101111111;
            
            %D1=1 D2=1 D3=1, A=1, B=0, C=0
            0b111111100; 0b110110111; 0b001111111; 0b111011011;
            %D1=1 D2=1 D3=1, A=0, B=1, C=0
            0b111111010; 0b110111110; 0b010111111; 0b011111011;
            %D1=1 D2=1 D3=1, A=0, B=0, C=1
            0b111111001; 0b111110110; 0b100111111; 0b011011111;
            %D1=1 D2=1 D3=1, A=1, B=1, C=0
            0b111111110; 0b110111111; 0b011111111; 0b111111011;
            %D1=1, D2=1 D3=1, A=1 B=0, C=1
            0b111111101; 0b111110111; 0b101111111; 0b111011111;
            %D1=1 D2=1 D3=1, A=1, B=1, C=1
            0b111111111; 0b111111111; 0b111111111; 0b111111111;
            
            %Diagonal Branch
            %D=0
            0b010011100; 0b010110001; 0b001110010; 0b100011010;
            
            %1 D=1
            0b110011100; 0b010011101;
            0b011110001; 0b010110101;
            0b101110010; 0b001110011;
            0b101011010; 0b100011110;
            
            %D=1
            0b110011101; 0b011110101; 0b101110011; 0b101011110;
        ];
    end
 end