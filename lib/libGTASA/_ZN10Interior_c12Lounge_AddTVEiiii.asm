; =========================================================
; Game Engine Function: _ZN10Interior_c12Lounge_AddTVEiiii
; Address            : 0x44BAFC - 0x44BCCA
; =========================================================

44BAFC:  PUSH            {R4-R7,LR}
44BAFE:  ADD             R7, SP, #0xC
44BB00:  PUSH.W          {R11}
44BB04:  VPUSH           {D8-D11}
44BB08:  SUB             SP, SP, #0x10
44BB0A:  AND.W           R6, R1, #3
44BB0E:  MOV             R4, R0
44BB10:  MOVW            R5, #0xFFFF
44BB14:  CMP             R1, #3; switch 4 cases
44BB16:  BHI             def_44BB18; jumptable 0044BB18 default case
44BB18:  TBB.W           [PC,R1]; switch jump
44BB1C:  DCB 2; jump table for switch statement
44BB1D:  DCB 0x25
44BB1E:  DCB 0x3B
44BB1F:  DCB 0x5F
44BB20:  LDR             R0, [R4,#0x14]; jumptable 0044BB18 case 0
44BB22:  VMOV.F32        S0, #-2.0
44BB26:  MOV.W           R1, #0xFFFFFFFF
44BB2A:  MOV.W           R2, #0x3F800000; float
44BB2E:  LDRB            R0, [R0,#3]
44BB30:  VMOV            S2, R0
44BB34:  MOVS            R0, #0
44BB36:  VCVT.F32.U32    S16, S2
44BB3A:  STRD.W          R1, R0, [SP,#0x40+var_40]; int
44BB3E:  MOV             R0, R4; this
44BB40:  MOVS            R1, #0; int
44BB42:  VADD.F32        S0, S16, S0
44BB46:  VMOV            R3, S0; float
44BB4A:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
44BB4E:  VMOV.F32        S0, #-0.5
44BB52:  VMOV.F32        S22, #0.5
44BB56:  VMOV.F32        S18, #1.5
44BB5A:  VADD.F32        S20, S16, S0
44BB5E:  VMOV.F32        S16, S20
44BB62:  B               loc_44BC2E
44BB64:  B               loc_44BC2E; jumptable 0044BB18 default case
44BB66:  MOVS            R0, #0; jumptable 0044BB18 case 1
44BB68:  MOV.W           R1, #0xFFFFFFFF
44BB6C:  STRD.W          R1, R0, [SP,#0x40+var_40]; int
44BB70:  MOV             R0, R4; this
44BB72:  MOVS            R1, #0; int
44BB74:  MOV.W           R2, #0x3F800000; float
44BB78:  MOV.W           R3, #0x3F800000; float
44BB7C:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
44BB80:  VMOV.F32        S20, #0.5
44BB84:  VMOV.F32        S16, #1.5
44BB88:  VMOV.F32        S18, S20
44BB8C:  VMOV.F32        S22, S20
44BB90:  B               loc_44BC2E
44BB92:  LDR             R0, [R4,#0x14]; jumptable 0044BB18 case 2
44BB94:  VMOV.F32        S0, #-2.0
44BB98:  MOV.W           R1, #0xFFFFFFFF
44BB9C:  MOV.W           R3, #0x3F800000; float
44BBA0:  LDRB            R0, [R0,#2]
44BBA2:  VMOV            S2, R0
44BBA6:  MOVS            R0, #0
44BBA8:  VCVT.F32.U32    S16, S2
44BBAC:  STRD.W          R1, R0, [SP,#0x40+var_40]; int
44BBB0:  MOV             R0, R4; this
44BBB2:  MOVS            R1, #0; int
44BBB4:  VADD.F32        S0, S16, S0
44BBB8:  VMOV            R2, S0; float
44BBBC:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
44BBC0:  VMOV.F32        S0, #-0.5
44BBC4:  VMOV.F32        S2, #-1.0
44BBC8:  VMOV.F32        S20, #0.5
44BBCC:  VADD.F32        S22, S16, S0
44BBD0:  VMOV.F32        S16, S20
44BBD4:  VADD.F32        S18, S22, S2
44BBD8:  B               loc_44BC2E
44BBDA:  LDR             R0, [R4,#0x14]; jumptable 0044BB18 case 3
44BBDC:  VMOV.F32        S0, #-2.0
44BBE0:  LDRB            R1, [R0,#2]
44BBE2:  LDRB            R0, [R0,#3]
44BBE4:  VMOV            S2, R1
44BBE8:  MOV.W           R1, #0xFFFFFFFF
44BBEC:  VCVT.F32.U32    S16, S2
44BBF0:  VMOV            S2, R0
44BBF4:  MOVS            R0, #0
44BBF6:  VCVT.F32.U32    S18, S2
44BBFA:  STRD.W          R1, R0, [SP,#0x40+var_40]; int
44BBFE:  MOV             R0, R4; this
44BC00:  MOVS            R1, #0; int
44BC02:  VADD.F32        S2, S16, S0
44BC06:  VADD.F32        S0, S18, S0
44BC0A:  VMOV            R2, S2; float
44BC0E:  VMOV            R3, S0; float
44BC12:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
44BC16:  VMOV.F32        S0, #-0.5
44BC1A:  VMOV.F32        S2, #-1.0
44BC1E:  VADD.F32        S20, S18, S0
44BC22:  VADD.F32        S18, S16, S0
44BC26:  VADD.F32        S16, S20, S2
44BC2A:  VMOV.F32        S22, S18
44BC2E:  LDR             R0, =(g_furnitureMan_ptr - 0x44BC3A)
44BC30:  SXTH            R5, R5
44BC32:  LDR             R1, [R4,#0x14]
44BC34:  MOVS            R2, #3; int
44BC36:  ADD             R0, PC; g_furnitureMan_ptr
44BC38:  MOV             R3, R5; __int16
44BC3A:  LDR             R0, [R0]; g_furnitureMan ; this
44BC3C:  LDRB            R1, [R1,#0x1F]
44BC3E:  STR             R1, [SP,#0x40+var_40]; float
44BC40:  MOVS            R1, #2; int
44BC42:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44BC46:  VMOV            S0, R6
44BC4A:  VLDR            S2, =90.0
44BC4E:  VMOV            R3, S22; int
44BC52:  MOV             R2, R0; int
44BC54:  VCVT.F32.S32    S0, S0
44BC58:  MOV.W           R6, #0x3F000000
44BC5C:  MOV             R0, R4; int
44BC5E:  MOVS            R1, #1; int
44BC60:  STR             R6, [SP,#0x40+var_3C]; float
44BC62:  VSTR            S20, [SP,#0x40+var_40]
44BC66:  VMUL.F32        S22, S0, S2
44BC6A:  VLDR            S0, =45.0
44BC6E:  VADD.F32        S0, S22, S0
44BC72:  VSTR            S0, [SP,#0x40+var_38]
44BC76:  BLX             j__ZN10Interior_c11PlaceObjectEhP11Furniture_cffff; Interior_c::PlaceObject(uchar,Furniture_c *,float,float,float,float)
44BC7A:  BLX             rand
44BC7E:  LDR             R1, [R4,#0x14]
44BC80:  TST.W           R0, #1
44BC84:  LDRB            R1, [R1,#0x1F]
44BC86:  BNE             loc_44BC94
44BC88:  LDR             R0, =(g_furnitureMan_ptr - 0x44BC94)
44BC8A:  MOVS            R2, #9
44BC8C:  STR             R1, [SP,#0x40+var_40]
44BC8E:  MOVS            R1, #2
44BC90:  ADD             R0, PC; g_furnitureMan_ptr
44BC92:  B               loc_44BC9E
44BC94:  LDR             R0, =(g_furnitureMan_ptr - 0x44BCA0)
44BC96:  MOVS            R2, #7; int
44BC98:  STR             R1, [SP,#0x40+var_40]; float
44BC9A:  MOVS            R1, #2; int
44BC9C:  ADD             R0, PC; g_furnitureMan_ptr
44BC9E:  LDR             R0, [R0]; g_furnitureMan ; this
44BCA0:  MOV             R3, R5; __int16
44BCA2:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44BCA6:  VMOV            R3, S18; int
44BCAA:  MOV             R2, R0; int
44BCAC:  MOV             R0, R4; int
44BCAE:  MOVS            R1, #1; int
44BCB0:  VSTR            S22, [SP,#0x40+var_38]
44BCB4:  STR             R6, [SP,#0x40+var_3C]; float
44BCB6:  VSTR            S16, [SP,#0x40+var_40]
44BCBA:  BLX             j__ZN10Interior_c11PlaceObjectEhP11Furniture_cffff; Interior_c::PlaceObject(uchar,Furniture_c *,float,float,float,float)
44BCBE:  ADD             SP, SP, #0x10
44BCC0:  VPOP            {D8-D11}
44BCC4:  POP.W           {R11}
44BCC8:  POP             {R4-R7,PC}
