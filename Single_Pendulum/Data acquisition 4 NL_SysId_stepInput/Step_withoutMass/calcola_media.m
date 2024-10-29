%Calcola la media di un segnale qualunque del pendolo quando viene
%applicato uno step. Ingresso e uscita devono essere in riga.
function [out,t]=calcola_media(in)
Ts=0.002;
Samples_per_Period=32768/2;

out=zeros(1,Samples_per_Period);
Number_of_Periods=floor(length(in)/Samples_per_Period);

for i=1:Number_of_Periods
        if(~mod(i,2))
            out=out-in((i-1)*Samples_per_Period+1:i*Samples_per_Period);
        else
            out=out+in((i-1)*Samples_per_Period+1:i*Samples_per_Period);       
        end
end
t=Ts*(1:Samples_per_Period);
out=out/Number_of_Periods;