module Behavior(A,B,C,D,b_o);

input A,B,C;
output reg D,b_o;
always@(A or B or C)
begin
    if(A==0 && B==0 )
    begin
        if(C==0)
        begin
            D=0;
            b_o=0;
        end
        else
        begin
            D=1;
            b_o=1;
        end
    end
    else if(A==0 && B==1)
    begin
        if(C==0)
        begin
            D=1;
            b_o=1;
        end
        else
        begin
            D=0;
            b_o=1;
        end
    end
    else if(A==1 && B==0 )
    begin
        if(C==0)
        begin
            D=1;
            b_o=0;
        end
        else
        begin
            D=0;
            b_o=0;
        end
    end
    else if(A==1 && B==1)
    begin
        if(C==0)
        begin
            D=0;
            b_o=0;
        end
        else
        begin
            D=1;
            b_o=1;
        end
    end
   

end



endmodule