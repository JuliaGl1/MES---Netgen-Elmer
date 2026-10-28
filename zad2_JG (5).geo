
algebraic3d

# Model w mm
# Blaszka

solid Blaszka = plane (-20, -20, -20; -1, 0, 0) 
			and plane (-20, -20, -20; 0, -1, 0)
			and plane (0, 0, 0; 0, 0, -1)
			and plane (20, 20, 20; 1, 0, 0)
			and plane (20, 20, 20; 0, 1, 0)
			and plane (2, 2, 2; 0, 0, 1) 
	;


# Cewka  
# Cylinder o średnicy 30 mm 

solid CewkaZew = 
  cylinder ( 0, 0, 6; 0, 0, 27; 15)
  and plane (0, 0, 7; 0, 0, -1)
  and plane (0, 0, 17; 0, 0,  1);

  
# Lewy wyciety walec 
solid SerceL =
  cylinder ( -6, 4, 7; -6, 4, 17; 6)
  and plane (0, 0, 5; 0, 0, -1)   
  and plane (0, 0, 19; 0, 0,  1);  

# Prawy wyciety walec 
solid SerceP =
  cylinder (  6, 4, 7;  6, 4, 17; 6)
  and plane (0, 0, 5; 0, 0, -1)   
  and plane (0, 0, 19; 0, 0,  1);  

# Koniuszek serca 
solid Koniuszek =
  plane ( 0, -12, 0;  0, -1, 0)      
  and plane ( 0,   2, 0;  0,  1, 0)  
  and plane ( 0, -12, 0; -6, -5, 0)  
  and plane ( 0, -12, 0;  6, -5, 0); 

solid Cut =
  plane (-3, 0,   0; -1, 0, 0)    
  and plane ( 3, 0,   0;  1, 0, 0)    
  and plane ( 0,  1.0, 0;  0,-1, 0)   
  and plane ( 0,  4.5, 0;  0, 1, 0);


# Szczelina 
solid Szczelina =
  plane (-2,   0, 0; -1, 0, 0)   
  and plane (  2,   0, 0;  1, 0, 0)   
  and plane (  0, -16, 0;  0,-1, 0)   
  and plane (  0, -9, 0;  0, 1, 0);

# Cewka z wycięciami 
solid CewkaSerce =
  CewkaZew
  and not SerceL
  and not SerceP
  and not Koniuszek
  and not Cut
  and not Szczelina;  
  
#Sfera
solid Sfera = sphere (0, 0, 0; 1000) 
	 and not Blaszka
	 and not CewkaSerce ;  
  
  
  tlo Blaszka 		-mat=1 		-col=[0,0,1];
  tlo CewkaSerce 	-mat=2		-col=[1,0.1,0.4]; 
  tlo Sfera 		-mat=3		-col=[1,20,40] -transparent;