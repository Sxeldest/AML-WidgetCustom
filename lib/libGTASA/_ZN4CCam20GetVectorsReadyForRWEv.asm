; =========================================================
; Game Engine Function: _ZN4CCam20GetVectorsReadyForRWEv
; Address            : 0x3D1ED0 - 0x3D1F5C
; =========================================================

3D1ED0:  PUSH            {R4-R7,LR}
3D1ED2:  ADD             R7, SP, #0xC
3D1ED4:  PUSH.W          {R11}
3D1ED8:  SUB             SP, SP, #0x20
3D1EDA:  MOV             R6, R0
3D1EDC:  ADD.W           R5, R6, #0x168
3D1EE0:  MOVS            R0, #0
3D1EE2:  MOV.W           R1, #0x3F800000
3D1EE6:  STRD.W          R0, R0, [R6,#0x18C]
3D1EEA:  MOV             R0, R5; this
3D1EEC:  STR.W           R1, [R6,#0x194]
3D1EF0:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3D1EF4:  VLDR            S0, [R6,#0x168]
3D1EF8:  ADD.W           R4, R6, #0x18C
3D1EFC:  VCMP.F32        S0, #0.0
3D1F00:  VMRS            APSR_nzcv, FPSCR
3D1F04:  BNE             loc_3D1F20
3D1F06:  VLDR            S0, [R6,#0x16C]
3D1F0A:  VCMP.F32        S0, #0.0
3D1F0E:  VMRS            APSR_nzcv, FPSCR
3D1F12:  ITTT EQ
3D1F14:  MOVWEQ          R0, #0xB717
3D1F18:  MOVTEQ          R0, #0x38D1
3D1F1C:  STRDEQ.W        R0, R0, [R6,#0x168]
3D1F20:  MOV             R0, SP; CVector *
3D1F22:  MOV             R1, R5; CVector *
3D1F24:  MOV             R2, R4
3D1F26:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3D1F2A:  ADD             R6, SP, #0x30+var_20
3D1F2C:  LDR             R0, [SP,#0x30+var_28]
3D1F2E:  VLDR            D16, [SP,#0x30+var_30]
3D1F32:  STR             R0, [SP,#0x30+var_18]
3D1F34:  MOV             R0, R6; this
3D1F36:  VSTR            D16, [SP,#0x30+var_20]
3D1F3A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3D1F3E:  MOV             R0, SP; CVector *
3D1F40:  MOV             R1, R6; CVector *
3D1F42:  MOV             R2, R5
3D1F44:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3D1F48:  VLDR            D16, [SP,#0x30+var_30]
3D1F4C:  LDR             R0, [SP,#0x30+var_28]
3D1F4E:  STR             R0, [R4,#8]
3D1F50:  VSTR            D16, [R4]
3D1F54:  ADD             SP, SP, #0x20 ; ' '
3D1F56:  POP.W           {R11}
3D1F5A:  POP             {R4-R7,PC}
