; =========================================================
; Game Engine Function: _ZN10Interior_c20Bedroom_AddTableItemEiiiiii
; Address            : 0x44887C - 0x44890C
; =========================================================

44887C:  PUSH            {R4,R5,R7,LR}
44887E:  ADD             R7, SP, #8
448880:  VPUSH           {D8-D9}
448884:  SUB             SP, SP, #0x10
448886:  VLDR            S0, [R7,#arg_4]
44888A:  MOV             R4, R0
44888C:  VLDR            S2, [R7,#arg_0]
448890:  ORR.W           R0, R3, #2
448894:  VCVT.F32.S32    S16, S0
448898:  LDR             R5, [R7,#arg_8]
44889A:  VCVT.F32.S32    S18, S2
44889E:  CMP             R0, #2
4488A0:  VMOV.F32        S0, #0.5
4488A4:  BNE             loc_4488AC
4488A6:  VADD.F32        S18, S18, S0
4488AA:  B               loc_4488B8
4488AC:  VADD.F32        S0, S16, S0
4488B0:  CMP             R0, #3
4488B2:  IT EQ
4488B4:  VMOVEQ.F32      S16, S0
4488B8:  LDR             R0, =(g_furnitureMan_ptr - 0x4488C0)
4488BA:  LDR             R3, [R4,#0x14]
4488BC:  ADD             R0, PC; g_furnitureMan_ptr
4488BE:  LDR             R0, [R0]; g_furnitureMan ; this
4488C0:  LDRB            R3, [R3,#0x1F]
4488C2:  STR             R3, [SP,#0x28+var_28]; float
4488C4:  MOV.W           R3, #0xFFFFFFFF; __int16
4488C8:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
4488CC:  VMOV.F32        S0, #0.5
4488D0:  VLDR            S4, =90.0
4488D4:  MOV             R2, R0; int
4488D6:  MOV.W           R0, #0x3F000000
4488DA:  MOVS            R1, #1; int
4488DC:  VADD.F32        S2, S18, S0
4488E0:  VADD.F32        S0, S16, S0
4488E4:  VMOV            R3, S2; int
4488E8:  VMOV            S2, R5
4488EC:  VCVT.F32.S32    S2, S2
4488F0:  STR             R0, [SP,#0x28+var_24]; float
4488F2:  MOV             R0, R4; int
4488F4:  VSTR            S0, [SP,#0x28+var_28]
4488F8:  VMUL.F32        S2, S2, S4
4488FC:  VSTR            S2, [SP,#0x28+var_20]
448900:  BLX             j__ZN10Interior_c11PlaceObjectEhP11Furniture_cffff; Interior_c::PlaceObject(uchar,Furniture_c *,float,float,float,float)
448904:  ADD             SP, SP, #0x10
448906:  VPOP            {D8-D9}
44890A:  POP             {R4,R5,R7,PC}
