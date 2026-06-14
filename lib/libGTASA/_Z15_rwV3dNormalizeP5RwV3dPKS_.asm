; =========================================================
; Game Engine Function: _Z15_rwV3dNormalizeP5RwV3dPKS_
; Address            : 0x1E6564 - 0x1E65F4
; =========================================================

1E6564:  SUB             SP, SP, #4
1E6566:  VLDR            S2, [R1,#4]
1E656A:  VLDR            S0, [R1]
1E656E:  VMUL.F32        S2, S2, S2
1E6572:  VLDR            S4, [R1,#8]
1E6576:  VMUL.F32        S6, S0, S0
1E657A:  VMUL.F32        S4, S4, S4
1E657E:  VADD.F32        S2, S6, S2
1E6582:  VADD.F32        S2, S2, S4
1E6586:  VSTR            S2, [SP,#4+var_4]
1E658A:  LDR             R2, [SP,#4+var_4]
1E658C:  CBZ             R2, loc_1E65C6
1E658E:  LDR             R2, =(RwEngineInstance_ptr - 0x1E6596)
1E6590:  LDR             R3, =(dword_6BD0E4 - 0x1E6598)
1E6592:  ADD             R2, PC; RwEngineInstance_ptr
1E6594:  ADD             R3, PC; dword_6BD0E4
1E6596:  LDR             R2, [R2]; RwEngineInstance
1E6598:  LDR             R3, [R3]
1E659A:  LDR             R2, [R2]
1E659C:  ADD             R2, R3
1E659E:  LDR             R2, [R2,#4]
1E65A0:  LDR             R3, [SP,#4+var_4]
1E65A2:  ADD.W           R3, R3, #0x800
1E65A6:  STR             R3, [SP,#4+var_4]
1E65A8:  LDR             R3, [SP,#4+var_4]
1E65AA:  UBFX.W          R3, R3, #0xC, #0xC
1E65AE:  LDR.W           R12, [R2,R3,LSL#2]
1E65B2:  MOV.W           R2, #0x3FC00000
1E65B6:  LDR             R3, [SP,#4+var_4]
1E65B8:  BIC.W           R2, R2, R3,LSR#1
1E65BC:  ADD             R2, R12
1E65BE:  STR             R2, [SP,#4+var_4]
1E65C0:  VMOV            S2, R2
1E65C4:  B               loc_1E65CA
1E65C6:  VLDR            S2, =0.0
1E65CA:  VMUL.F32        S0, S2, S0
1E65CE:  VMOV            R2, S2
1E65D2:  VSTR            S0, [R0]
1E65D6:  VLDR            S0, [R1,#4]
1E65DA:  VMUL.F32        S0, S2, S0
1E65DE:  VSTR            S0, [R0,#4]
1E65E2:  VLDR            S0, [R1,#8]
1E65E6:  VMUL.F32        S0, S2, S0
1E65EA:  VSTR            S0, [R0,#8]
1E65EE:  MOV             R0, R2
1E65F0:  ADD             SP, SP, #4
1E65F2:  BX              LR
