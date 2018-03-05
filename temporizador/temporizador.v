
module temporizador (ck, CKD);
	input 		ck;
	output		CKD;
	
	
	reg			rckd;   		//Flip-Flop
	assign		CKD=rckd;
	
	
	reg [24:0]	rc;
	
	always @(posedge ck)
	begin
		
			if (rc == 25'h0000000)
			begin
			rc = 25'h17D7840-1;			 //Divisor de Tarjeta
		//rc = 25'h0000004;					//Divisor de simulacion
				rckd = !(rckd);
			end
			
			else
			begin 
				rc= rc - 1;
				
			end
	end
	endmodule
				