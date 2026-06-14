; =========================================================
; Game Engine Function: sub_13CFA0
; Address            : 0x13CFA0 - 0x13D00A
; =========================================================

13CFA0:  PUSH            {R4,R5,R7,LR}
13CFA2:  ADD             R7, SP, #8
13CFA4:  SUB             SP, SP, #0x20
13CFA6:  VLDR            S0, [R0,#0x14]
13CFAA:  MOV             R5, R0
13CFAC:  VLDR            S4, [R0,#0x2C]
13CFB0:  MOV             R4, R1
13CFB2:  VLDR            S2, [R0,#0x18]
13CFB6:  ADD.W           R1, R5, #0x2C ; ','; int
13CFBA:  VLDR            S6, [R0,#0x30]
13CFBE:  VADD.F32        S0, S4, S0
13CFC2:  LDRB.W          R0, [R0,#0x51]
13CFC6:  VADD.F32        S2, S6, S2
13CFCA:  VSTR            S0, [SP,#0x28+var_10]
13CFCE:  VSTR            S2, [SP,#0x28+var_C]
13CFD2:  CBZ             R0, loc_13CFDA
13CFD4:  LDR             R0, =(off_234BEC - 0x13CFDA)
13CFD6:  ADD             R0, PC; off_234BEC
13CFD8:  B               loc_13CFDE
13CFDA:  LDR             R0, =(off_234BE8 - 0x13CFE0)
13CFDC:  ADD             R0, PC; off_234BE8
13CFDE:  LDR             R0, [R0]
13CFE0:  MOVS            R2, #1
13CFE2:  ADD             R3, SP, #0x28+var_20; int
13CFE4:  VLD1.32         {D16-D17}, [R0]
13CFE8:  ADD             R0, SP, #0x28+var_20
13CFEA:  VST1.64         {D16-D17}, [R0]
13CFEE:  MOV.W           R0, #0x3F800000
13CFF2:  STRD.W          R2, R0, [SP,#0x28+var_28]; int
13CFF6:  ADD             R2, SP, #0x28+var_10; int
13CFF8:  MOV             R0, R4; int
13CFFA:  BL              sub_12AB98
13CFFE:  MOV             R0, R5
13D000:  MOV             R1, R4
13D002:  BL              sub_12C0B6
13D006:  ADD             SP, SP, #0x20 ; ' '
13D008:  POP             {R4,R5,R7,PC}
