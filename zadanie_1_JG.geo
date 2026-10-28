algebraic3d

# ---------- SKLEJANIE ----------

# Prostopadloscian 1
solid P1 =
  orthobrick (-5, -3, 0;    5, 3, 60);

# Prostopadloscian 2
solid P2 =
  orthobrick (-20, -10, 40; 20, 10, 60);

# Sklejenie
solid MODEL0 =
  P1 or P2;


# ---------- ODJECIE ----------

# Prostokatny rowek 
solid ROWEK =
  orthobrick (-4, -3, 48;   4, 3, 68);

# Kulista kieszen 
solid KIESZEN =
  sphere (12, 0, 60; 6);

# Odjecie
solid MODEL1 =
  MODEL0 and not ROWEK and not KIESZEN;


# ---------- SCIECIE PLASZCZYZNA POD KATEM ----------

# Kat przyciecia: 45 stopni w plaszczyznie XZ,
solid SCIECIE =
  plane (0, 0, 70; 0.7071068, 0, 0.7071068);

# Koncowy ksztalt
solid FINAL =
  MODEL1 and SCIECIE;

tlo FINAL -col=[1, 0.3, 0.7];
