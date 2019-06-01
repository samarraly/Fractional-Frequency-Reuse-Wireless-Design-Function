 clc  
CI = 3;
 Total_area=450*(10^6);
 Pt_in=1;
 Pt_out=2;
 channels=100;
 A_user=1/144;
 P_b=0.005;
 User_sens=10^-12;
 k=2;
[NO_of_cells,r_in,r_out,C_to_I_in,C_to_I_Out,n_in,n_out,C_out,C_in] = untitled5(User_sens,CI,Total_area,Pt_in,Pt_out,channels,A_user,P_b,k)
