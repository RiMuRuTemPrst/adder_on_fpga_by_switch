module adder_on_fpga_by_switch_tb;
    // Khai báo tín hi?u
    reg [6:0] switchs ;
    reg switch_mode;

    // reg calculate_sum;

    wire sum_hundred_a;
    wire sum_hundred_b;
    wire sum_hundred_c;
    wire sum_hundred_d;
    wire sum_hundred_e;
    wire sum_hundred_f;
    wire sum_hundred_g;

    wire sum_tens_a;
    wire sum_tens_b;
    wire sum_tens_c;
    wire sum_tens_d;
    wire sum_tens_e;
    wire sum_tens_f;
    wire sum_tens_g;

    wire sum_unit_a;
    wire sum_unit_b;
    wire sum_unit_c;
    wire sum_unit_d;
    wire sum_unit_e;
    wire sum_unit_f;
    wire sum_unit_g;

    wire pin_a_tens_a;
    wire pin_a_tens_b;
    wire pin_a_tens_c;
    wire pin_a_tens_d;
    wire pin_a_tens_e;
    wire pin_a_tens_f;
    wire pin_a_tens_g;

    wire pin_a_unit_a;
    wire pin_a_unit_b;
    wire pin_a_unit_c;
    wire pin_a_unit_d;
    wire pin_a_unit_e;
    wire pin_a_unit_f;
    wire pin_a_unit_g;

    wire pin_b_tens_a;
    wire pin_b_tens_b;
    wire pin_b_tens_c;
    wire pin_b_tens_d;
    wire pin_b_tens_e;
    wire pin_b_tens_f;
    wire pin_b_tens_g;

    wire pin_b_unit_a;
    wire pin_b_unit_b;
    wire pin_b_unit_c;
    wire pin_b_unit_d;
    wire pin_b_unit_e;
    wire pin_b_unit_f;
    wire pin_b_unit_g;
    
    // Kh?i t?o module adder_on_fpga_module
    adder_on_fpga_by_switch uut (
        .switchs(switchs),
        .switch_mode(switch_mode),
        .sum_hundred_a(sum_hundred_a),
        .sum_hundred_b(sum_hundred_b),
        .sum_hundred_c(sum_hundred_c),
        .sum_hundred_d(sum_hundred_d),
        .sum_hundred_e(sum_hundred_e),
        .sum_hundred_f(sum_hundred_f),
        .sum_hundred_g(sum_hundred_g),
        .sum_tens_a(sum_tens_a),
        .sum_tens_b(sum_tens_b),
        .sum_tens_c(sum_tens_c),
        .sum_tens_d(sum_tens_d),
        .sum_tens_e(sum_tens_e),
        .sum_tens_f(sum_tens_f),
        .sum_tens_g(sum_tens_g),
        .sum_unit_a(sum_unit_a),
        .sum_unit_b(sum_unit_b),
        .sum_unit_c(sum_unit_c),
        .sum_unit_d(sum_unit_d),
        .sum_unit_e(sum_unit_e),
        .sum_unit_f(sum_unit_f),
        .sum_unit_g(sum_unit_g),
        .pin_a_tens_a(pin_a_tens_a),
        .pin_a_tens_b(pin_a_tens_b),
        .pin_a_tens_c(pin_a_tens_c),
        .pin_a_tens_d(pin_a_tens_d),
        .pin_a_tens_e(pin_a_tens_e),
        .pin_a_tens_f(pin_a_tens_f),
        .pin_a_tens_g(pin_a_tens_g),
        .pin_a_unit_a(pin_a_unit_a),
        .pin_a_unit_b(pin_a_unit_b),
        .pin_a_unit_c(pin_a_unit_c),
        .pin_a_unit_d(pin_a_unit_d),
        .pin_a_unit_e(pin_a_unit_e),
        .pin_a_unit_f(pin_a_unit_f),
        .pin_a_unit_g(pin_a_unit_g),
        .pin_b_tens_a(pin_b_tens_a),
        .pin_b_tens_b(pin_b_tens_b),
        .pin_b_tens_c(pin_b_tens_c),
        .pin_b_tens_d(pin_b_tens_d),
        .pin_b_tens_e(pin_b_tens_e),
        .pin_b_tens_f(pin_b_tens_f),
        .pin_b_tens_g(pin_b_tens_g),
        .pin_b_unit_a(pin_b_unit_a),
        .pin_b_unit_b(pin_b_unit_b),
        .pin_b_unit_c(pin_b_unit_c),
        .pin_b_unit_d(pin_b_unit_d),
        .pin_b_unit_e(pin_b_unit_e),
        .pin_b_unit_f(pin_b_unit_f),
        .pin_b_unit_g(pin_b_unit_g));
      
    integer i;
    initial 
    begin
        $monitor("Switch_mode = %0b, Switchs %0b%0b%0b%0b%0b%0b%0b
                        a_tens: a = %0d b= %0d c= %0d d= %0d e = %0d f = %0d g=%0d
                        a_unit: a = %0d b= %0d c= %0d d= %0d e = %0d f = %0d g=%0d
                    Switch_mode = %0b, Switchs %0b%0b%0b%0b%0b%0b%0b
                        b_tens: a = %0d b= %0d c= %0d d= %0d e = %0d f = %0d g=%0d
                        b_unit: a = %0d b= %0d c= %0d d= %0d e = %0d f = %0d g=%0d", switch_mode,switchs[0],switchs[1],switchs[2],switchs[3],switchs[4],switchs[5],switchs[6],
                        pin_a_tens_a, pin_a_tens_b, pin_a_tens_c, pin_a_tens_d, pin_a_tens_e, pin_a_tens_f, pin_a_tens_g,
                        pin_a_unit_a, pin_a_unit_b, pin_a_unit_c, pin_a_unit_d, pin_a_unit_e, pin_a_unit_f, pin_a_unit_g,
                        switch_mode,switchs[0],switchs[1],switchs[2],switchs[3],switchs[4],switchs[5],switchs[6],
                        pin_b_tens_a, pin_b_tens_b, pin_b_tens_c, pin_b_tens_d, pin_b_tens_e, pin_b_tens_f, pin_b_tens_g,
                        pin_b_unit_a, pin_b_unit_b, pin_b_unit_c, pin_b_unit_d, pin_b_unit_e, pin_b_unit_f, pin_b_unit_g);

       // Kh?i t?o c�c t�n hi?u ??u v�o
        switchs = 7'b0000000;
        switch_mode = 1'b0;
        
        // Test ch? ?? a
        #10 switch_mode = 1'b1;  // ??t switch_mode th�nh 1 ?? test gi� tr? A
        switchs = 7'b1010001;    // G�n gi� tr? A = 81
        #10;

        // Test ch? ?? b
        switch_mode = 1'b0;  // ??t switch_mode th�nh 0 ?? test gi� tr? B
        switchs = 7'b0001100;    // G�n gi� tr? B = 12
        #10;

        // Test xong
        #20 $finish;


    end


endmodule