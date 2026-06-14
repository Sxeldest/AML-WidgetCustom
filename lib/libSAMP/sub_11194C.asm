; =========================================================
; Game Engine Function: sub_11194C
; Address            : 0x11194C - 0x1119A4
; =========================================================

11194C:  PUSH            {R4,R6,R7,LR}
11194E:  ADD             R7, SP, #8
111950:  SUB             SP, SP, #0x10
111952:  MOV             R4, R0
111954:  LDR             R0, [R0,#0x10]
111956:  CMP             R0, #1
111958:  BNE             loc_111998
11195A:  VLDR            S2, [R4,#0x24]
11195E:  VCMP.F32        S2, #0.0
111962:  VMRS            APSR_nzcv, FPSCR
111966:  ITTT NE
111968:  VLDRNE          S0, [R4,#0x28]
11196C:  VCMPNE.F32      S0, #0.0
111970:  VMRSNE          APSR_nzcv, FPSCR
111974:  BEQ             loc_111998
111976:  VMOV            R3, S2
11197A:  LDRD.W          R1, R2, [R4,#0x1C]
11197E:  MOV.W           R0, #0xC8000000
111982:  ADD.W           R12, SP, #0x18+var_C
111986:  STR             R0, [SP,#0x18+var_C]
111988:  ADD.W           R0, R4, #0x14
11198C:  STR.W           R12, [SP,#0x18+var_14]
111990:  VSTR            S0, [SP,#0x18+var_18]
111994:  BL              sub_163176
111998:  LDR             R0, [R4,#0xC]
11199A:  MOVS            R1, #0
11199C:  STR             R1, [R4,#0x18]
11199E:  BLX             R0
1119A0:  ADD             SP, SP, #0x10
1119A2:  POP             {R4,R6,R7,PC}
