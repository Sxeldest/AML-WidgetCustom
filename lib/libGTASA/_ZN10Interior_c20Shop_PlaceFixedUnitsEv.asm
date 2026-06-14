; =========================================================
; Game Engine Function: _ZN10Interior_c20Shop_PlaceFixedUnitsEv
; Address            : 0x44DA90 - 0x44DB30
; =========================================================

44DA90:  PUSH            {R4-R7,LR}
44DA92:  ADD             R7, SP, #0xC
44DA94:  PUSH.W          {R11}
44DA98:  SUB             SP, SP, #0x10
44DA9A:  MOV             R4, R0
44DA9C:  LDR             R0, [R4,#0x14]
44DA9E:  LDRSB.W         R0, [R0,#5]
44DAA2:  ADDS            R1, R0, #1
44DAA4:  BEQ             loc_44DB28
44DAA6:  MOVS            R1, #7
44DAA8:  MOVS            R2, #1
44DAAA:  STRD.W          R2, R1, [SP,#0x20+var_20]; int
44DAAE:  SUBS            R1, R0, #1; int
44DAB0:  MOVS            R5, #0
44DAB2:  MOV             R0, R4; this
44DAB4:  MOVS            R2, #0; int
44DAB6:  MOVS            R3, #2; int
44DAB8:  STR             R5, [SP,#0x20+var_18]; unsigned __int8
44DABA:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44DABE:  LDR             R0, [R4,#0x14]
44DAC0:  LDRSB.W         R1, [R0,#5]
44DAC4:  LDRB            R0, [R0,#2]
44DAC6:  CMP             R1, #8
44DAC8:  SUB.W           R0, R0, R1
44DACC:  IT GE
44DACE:  CMPGE           R0, #8
44DAD0:  BLT             loc_44DAEC
44DAD2:  BLX             rand
44DAD6:  AND.W           R5, R0, #1
44DADA:  MOV             R0, R4; this
44DADC:  MOV             R1, R5; unsigned __int8
44DADE:  BLX             j__ZN10Interior_c17Shop_PlaceCounterEh; Interior_c::Shop_PlaceCounter(uchar)
44DAE2:  VMOV            S0, R0
44DAE6:  VCVT.F32.S32    S0, S0
44DAEA:  B               loc_44DAFE
44DAEC:  CMP             R0, #8
44DAEE:  IT LT
44DAF0:  MOVLT           R5, #1
44DAF2:  CMP             R1, #7
44DAF4:  IT LE
44DAF6:  CMPLE           R0, #8
44DAF8:  BGE             loc_44DADA
44DAFA:  VLDR            S0, =0.0
44DAFE:  VMOV            R5, S0
44DB02:  MOVS            R6, #0
44DB04:  MOV             R0, R4; this
44DB06:  MOVS            R1, #9; int
44DB08:  MOV.W           R3, #0x40000000; float
44DB0C:  STRD.W          R6, R6, [SP,#0x20+var_20]; int
44DB10:  MOV             R2, R5; float
44DB12:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
44DB16:  MOVS            R0, #2
44DB18:  MOVS            R1, #0xA; int
44DB1A:  STRD.W          R0, R6, [SP,#0x20+var_20]; int
44DB1E:  MOV             R0, R4; this
44DB20:  MOV             R2, R5; float
44DB22:  MOVS            R3, #0; float
44DB24:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
44DB28:  ADD             SP, SP, #0x10
44DB2A:  POP.W           {R11}
44DB2E:  POP             {R4-R7,PC}
