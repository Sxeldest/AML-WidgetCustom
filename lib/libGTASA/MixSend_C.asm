; =========================================================
; Game Engine Function: MixSend_C
; Address            : 0x260CD8 - 0x260D76
; =========================================================

260CD8:  PUSH            {R4,R5,R7,LR}
260CDA:  ADD             R7, SP, #8
260CDC:  VLDR            S2, =0.00001
260CE0:  VLDR            S0, [R0,#4]
260CE4:  VCMPE.F32       S0, S2
260CE8:  VMRS            APSR_nzcv, FPSCR
260CEC:  BLT             locret_260D74
260CEE:  LDR.W           R12, [R7,#arg_0]
260CF2:  CMP             R2, #0
260CF4:  LDR.W           LR, [R0]
260CF8:  BEQ             loc_260D28
260CFA:  CMP.W           R12, #0
260CFE:  BEQ             loc_260D48
260D00:  ADD.W           R0, LR, R2,LSL#2
260D04:  MOV             R4, R12
260D06:  ADDS            R0, #0xD0
260D08:  MOV             R5, R1
260D0A:  VLDR            S2, [R5]
260D0E:  SUBS            R4, #1
260D10:  VLDR            S4, [R0]
260D14:  ADD.W           R5, R5, #4
260D18:  VMUL.F32        S2, S0, S2
260D1C:  VADD.F32        S2, S4, S2
260D20:  VSTM            R0!, {S2}
260D24:  BNE             loc_260D0A
260D26:  B               loc_260D4C
260D28:  VLDR            S2, [R1]
260D2C:  MOVW            R0, #0x20D0
260D30:  ADD             R0, LR
260D32:  VMUL.F32        S2, S0, S2
260D36:  VLDR            S4, [R0]
260D3A:  VSUB.F32        S2, S4, S2
260D3E:  VSTR            S2, [R0]
260D42:  CMP.W           R12, #0
260D46:  BNE             loc_260D00
260D48:  MOV.W           R12, #0
260D4C:  ADD.W           R0, R12, R2
260D50:  CMP             R0, R3
260D52:  IT NE
260D54:  POPNE           {R4,R5,R7,PC}
260D56:  ADD.W           R1, R1, R12,LSL#2
260D5A:  MOVW            R0, #0x20D4
260D5E:  ADD             R0, LR
260D60:  VLDR            S2, [R1]
260D64:  VMUL.F32        S0, S0, S2
260D68:  VLDR            S2, [R0]
260D6C:  VADD.F32        S0, S2, S0
260D70:  VSTR            S0, [R0]
260D74:  POP             {R4,R5,R7,PC}
