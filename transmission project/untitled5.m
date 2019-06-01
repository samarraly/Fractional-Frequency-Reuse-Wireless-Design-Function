function[NO_of_cells,r_in,r_out,C_to_I_in,C_to_I_Out,n_in,n_out,C_out,C_in] = untitled5(User_sens,CI,Total_area,Pin,Pout,channels,A_user,P_b,k)

lamda=(3*(10^8))/(1.8*(10^9))

for n_in = 1:1:13
    for n_out=13:-1:1
        for C_in=1:99
    C_out=channels-C_in;
    T_in=floor(C_in/n_in);
    T_out=floor(C_out/n_out);
    A_in=findrhob(T_in,P_b);
    A_out=findrhob(T_out,P_b);
 r_in=sqrt(A_in/k*A_user*pi);
 %r_out=sqrt((2/(3*sqrt(3)))*(A_out/k*A_user)+pi*(r_in)^2)
 r_out=sqrt((A_out+(k*A_user*pi*(r_in)^2))/(k*A_user*(3*sqrt(3))/2))
 P_sens_in=Pin*(lamda/(4*pi*r_in))^2
 P_sens_out=Pout*(lamda/(4*pi*r_out))^2
 C_to_I_Out= 3*n_out/6
 C_to_I_in= (3*((r_out)^2)*n_in)/(6*(r_in)^2)
 
  if (P_sens_in >= User_sens && P_sens_out >= User_sens && CI <= C_to_I_Out && CI <=C_to_I_in )
      Area_of_hexygon=((3*sqrt(3))/2)*((r_out)^2)
      NO_of_cells=ceil((Total_area)/Area_of_hexygon)
      return
  else
      if(P_sens_in >= User_sens && P_sens_out >= User_sens)
       Area_of_hexygon=((3*sqrt(3))/2)*((r_out)^2)
      NO_of_cells=ceil((Total_area)/Area_of_hexygon)
      end
      
       end
        end 
          end
end
    









    
end

