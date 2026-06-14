; =========================================================
; Game Engine Function: sub_1307B8
; Address            : 0x1307B8 - 0x13081C
; =========================================================

1307B8:  PUSH            {R4,R5,R7,LR}
1307BA:  ADD             R7, SP, #8
1307BC:  SUB             SP, SP, #0x20
1307BE:  MOV             R5, R0
1307C0:  LDRB.W          R0, [R0,#0x50]
1307C4:  CBZ             R0, loc_130818
1307C6:  LDRB.W          R0, [R5,#0x51]
1307CA:  MOV             R4, R1
1307CC:  CBZ             R0, loc_130810
1307CE:  VLDR            S0, [R5,#0x14]
1307D2:  ADR             R0, unk_130820
1307D4:  VLDR            S4, [R5,#0x2C]
1307D8:  MOVS            R1, #1
1307DA:  VLDR            S2, [R5,#0x18]
1307DE:  ADD             R3, SP, #0x28+var_20; int
1307E0:  VLDR            S6, [R5,#0x30]
1307E4:  VADD.F32        S0, S4, S0
1307E8:  VLD1.64         {D16-D17}, [R0]
1307EC:  MOV.W           R0, #0x3F800000
1307F0:  VADD.F32        S2, S6, S2
1307F4:  ADD             R2, SP, #0x28+var_10; int
1307F6:  STRD.W          R1, R0, [SP,#0x28+var_28]; int
1307FA:  ADD.W           R1, R5, #0x2C ; ','; int
1307FE:  MOV             R0, R4; int
130800:  VST1.64         {D16-D17}, [R3]
130804:  VSTR            S0, [SP,#0x28+var_10]
130808:  VSTR            S2, [SP,#0x28+var_C]
13080C:  BL              sub_12AB98
130810:  MOV             R0, R5
130812:  MOV             R1, R4
130814:  BL              sub_12C0B6
130818:  ADD             SP, SP, #0x20 ; ' '
13081A:  POP             {R4,R5,R7,PC}
