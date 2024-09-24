module adder_on_fpga_by_switch (input [6:0] switchs,
                                input switch_mode,
										  input switch_cal,
                                

                                output  sum_hundred_a,
                                output  sum_hundred_b,
                                output  sum_hundred_c,
                                output  sum_hundred_d,
                                output  sum_hundred_e,
                                output  sum_hundred_f,
                                output  sum_hundred_g,
            
                                output  sum_tens_a,
                                output  sum_tens_b,
                                output  sum_tens_c,
                                output  sum_tens_d,
                                output  sum_tens_e,
                                output  sum_tens_f,
                                output  sum_tens_g,

                                output  sum_unit_a,
                                output  sum_unit_b,
                                output  sum_unit_c,
                                output  sum_unit_d,
                                output  sum_unit_e,
                                output  sum_unit_f,
                                output  sum_unit_g,

                                output  pin_a_tens_a,
                                output  pin_a_tens_b,
                                output  pin_a_tens_c,
                                output  pin_a_tens_d,
                                output  pin_a_tens_e,
                                output  pin_a_tens_f,
                                output  pin_a_tens_g,

                                output  pin_a_unit_a,
                                output  pin_a_unit_b,
                                output  pin_a_unit_c,
                                output  pin_a_unit_d,
                                output  pin_a_unit_e,
                                output  pin_a_unit_f,
                                output  pin_a_unit_g,

                                output  pin_b_tens_a,
                                output  pin_b_tens_b,
                                output  pin_b_tens_c,
                                output  pin_b_tens_d,
                                output  pin_b_tens_e,
                                output  pin_b_tens_f,
                                output  pin_b_tens_g,

                                output  pin_b_unit_a,
                                output  pin_b_unit_b,
                                output  pin_b_unit_c,
                                output  pin_b_unit_d,
                                output  pin_b_unit_e,
                                output  pin_b_unit_f,
                                output  pin_b_unit_g);

    reg [6:0] a;
    reg [6:0] b;
    reg [7:0] sum;
    reg [3:0] a_tens;
    reg [3:0] a_unit;
    reg [3:0] b_tens;
    reg [3:0] b_unit;
    reg [3:0] sum_hundred;
    reg [3:0] sum_tens;
    reg [3:0] sum_unit;

   always@ (switchs or switch_mode)
    //always @(*)
    begin
        if (switch_mode == 1)
        begin
            a = switchs;
            if (a >=  99)
            begin
                a = 99;
            end
            else a = a; 
            a_tens = a/10;
            a_unit = a % 10;
        end
        else 
        begin
            b =  switchs;
            if (b >= 99)
            begin
                b = 99;
            end
            else b = b;
            b_tens = b/10;
            b_unit = b % 10;
        end
		end
		always @(posedge switch_cal)
		begin
				sum = a + b;
				sum_hundred = sum / 100;
				sum_tens = (sum % 100) / 10;
				sum_unit = sum % 10;
		end
		
		
		
		
   

        seven_segment pin_a_tens ( .input_num(a_tens),
                                    .a_segment(pin_a_tens_a),
                                    .b_segment(pin_a_tens_b),
                                    .c_segment(pin_a_tens_c),
                                    .d_segment(pin_a_tens_d),
                                    .e_segment(pin_a_tens_e),
                                    .f_segment(pin_a_tens_f),
                                    .g_segment(pin_a_tens_g));
        
        seven_segment pin_a_unit ( .input_num(a_unit),
                                    .a_segment(pin_a_unit_a),
                                    .b_segment(pin_a_unit_b),
                                    .c_segment(pin_a_unit_c),
                                    .d_segment(pin_a_unit_d),
                                    .e_segment(pin_a_unit_e),
                                    .f_segment(pin_a_unit_f),
                                    .g_segment(pin_a_unit_g));
        
        seven_segment pin_b_tens ( .input_num(b_tens),
                                    .a_segment(pin_b_tens_a),
                                    .b_segment(pin_b_tens_b),
                                    .c_segment(pin_b_tens_c),
                                    .d_segment(pin_b_tens_d),
                                    .e_segment(pin_b_tens_e),
                                    .f_segment(pin_b_tens_f),
                                    .g_segment(pin_b_tens_g));

        seven_segment pin_b_unit ( .input_num(b_unit),
                                    .a_segment(pin_b_unit_a),
                                    .b_segment(pin_b_unit_b),
                                    .c_segment(pin_b_unit_c),
                                    .d_segment(pin_b_unit_d),
                                    .e_segment(pin_b_unit_e),
                                    .f_segment(pin_b_unit_f),
                                    .g_segment(pin_b_unit_g));
        
        seven_segment sum_hundred_segment ( .input_num(sum_hundred),
                                    .a_segment(sum_hundred_a),
                                    .b_segment(sum_hundred_b),
                                    .c_segment(sum_hundred_c),
                                    .d_segment(sum_hundred_d),
                                    .e_segment(sum_hundred_e),
                                    .f_segment(sum_hundred_f),
                                    .g_segment(sum_hundred_g));
        
        seven_segment sum_tens_segment ( .input_num(sum_tens),
                                    .a_segment(sum_tens_a),
                                    .b_segment(sum_tens_b),
                                    .c_segment(sum_tens_c),
                                    .d_segment(sum_tens_d),
                                    .e_segment(sum_tens_e),
                                    .f_segment(sum_tens_f),
                                    .g_segment(sum_tens_g));

        seven_segment sum_unit_segment ( .input_num(sum_unit),
                                    .a_segment(sum_unit_a),
                                    .b_segment(sum_unit_b),
                                    .c_segment(sum_unit_c),
                                    .d_segment(sum_unit_d),
                                    .e_segment(sum_unit_e),
                                    .f_segment(sum_unit_f),
                                    .g_segment(sum_unit_g));

endmodule
