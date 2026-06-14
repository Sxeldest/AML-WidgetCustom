; =========================================================
; Game Engine Function: sub_16586C
; Address            : 0x16586C - 0x1658B2
; =========================================================

16586C:  PUSH            {R7,LR}
16586E:  MOV             R7, SP
165870:  SUB             SP, SP, #0x10
165872:  LDR             R2, =(dword_381B58 - 0x165880)
165874:  MOVW            R3, #0x1518
165878:  VMOV            S0, R1
16587C:  ADD             R2, PC; dword_381B58
16587E:  LDR             R2, [R2]
165880:  ADDS            R1, R2, R3
165882:  ADD.W           R0, R1, R0,LSL#4
165886:  VLDR            S2, [R1]
16588A:  ADDS            R0, #0xAC
16588C:  VLD1.32         {D16-D17}, [R0]
165890:  MOV             R0, SP
165892:  VMUL.F32        S0, S2, S0
165896:  MOVS            R1, #0xC
165898:  MOV             R2, R0
16589A:  VST1.64         {D16-D17}, [R2],R1
16589E:  VLDR            S2, [R2]
1658A2:  VMUL.F32        S0, S2, S0
1658A6:  VSTR            S0, [R2]
1658AA:  BL              sub_165778
1658AE:  ADD             SP, SP, #0x10
1658B0:  POP             {R7,PC}
