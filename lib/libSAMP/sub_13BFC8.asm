; =========================================================
; Game Engine Function: sub_13BFC8
; Address            : 0x13BFC8 - 0x13C026
; =========================================================

13BFC8:  PUSH            {R4,R5,R7,LR}
13BFCA:  ADD             R7, SP, #8
13BFCC:  SUB             SP, SP, #0x20
13BFCE:  MOV             R4, R1
13BFD0:  MOV             R5, R0
13BFD2:  BL              sub_13DB04
13BFD6:  CBZ             R0, loc_13C01A
13BFD8:  VLDR            S0, [R5,#0x14]
13BFDC:  ADR             R0, unk_13C028
13BFDE:  VLDR            S4, [R5,#0x2C]
13BFE2:  MOVS            R1, #1
13BFE4:  VLDR            S2, [R5,#0x18]
13BFE8:  ADD             R3, SP, #0x28+var_20; int
13BFEA:  VLDR            S6, [R5,#0x30]
13BFEE:  VADD.F32        S0, S4, S0
13BFF2:  VLD1.64         {D16-D17}, [R0]
13BFF6:  MOV.W           R0, #0x3F800000
13BFFA:  VADD.F32        S2, S6, S2
13BFFE:  ADD             R2, SP, #0x28+var_10; int
13C000:  STRD.W          R1, R0, [SP,#0x28+var_28]; int
13C004:  ADD.W           R1, R5, #0x2C ; ','; int
13C008:  MOV             R0, R4; int
13C00A:  VST1.64         {D16-D17}, [R3]
13C00E:  VSTR            S0, [SP,#0x28+var_10]
13C012:  VSTR            S2, [SP,#0x28+var_C]
13C016:  BL              sub_12AB98
13C01A:  MOV             R0, R5
13C01C:  MOV             R1, R4
13C01E:  BL              sub_12C0B6
13C022:  ADD             SP, SP, #0x20 ; ' '
13C024:  POP             {R4,R5,R7,PC}
