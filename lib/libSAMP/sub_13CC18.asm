; =========================================================
; Game Engine Function: sub_13CC18
; Address            : 0x13CC18 - 0x13CC76
; =========================================================

13CC18:  PUSH            {R4,R5,R7,LR}
13CC1A:  ADD             R7, SP, #8
13CC1C:  SUB             SP, SP, #0x20
13CC1E:  MOV             R4, R1
13CC20:  MOV             R5, R0
13CC22:  BL              sub_13DB04
13CC26:  CBZ             R0, loc_13CC6A
13CC28:  VLDR            S0, [R5,#0x14]
13CC2C:  ADR             R0, unk_13CC78
13CC2E:  VLDR            S4, [R5,#0x2C]
13CC32:  MOVS            R1, #1
13CC34:  VLDR            S2, [R5,#0x18]
13CC38:  ADD             R3, SP, #0x28+var_20; int
13CC3A:  VLDR            S6, [R5,#0x30]
13CC3E:  VADD.F32        S0, S4, S0
13CC42:  VLD1.64         {D16-D17}, [R0]
13CC46:  MOV.W           R0, #0x3F800000
13CC4A:  VADD.F32        S2, S6, S2
13CC4E:  ADD             R2, SP, #0x28+var_10; int
13CC50:  STRD.W          R1, R0, [SP,#0x28+var_28]; int
13CC54:  ADD.W           R1, R5, #0x2C ; ','; int
13CC58:  MOV             R0, R4; int
13CC5A:  VST1.64         {D16-D17}, [R3]
13CC5E:  VSTR            S0, [SP,#0x28+var_10]
13CC62:  VSTR            S2, [SP,#0x28+var_C]
13CC66:  BL              sub_12AB98
13CC6A:  MOV             R0, R5
13CC6C:  MOV             R1, R4
13CC6E:  BL              sub_12C0B6
13CC72:  ADD             SP, SP, #0x20 ; ' '
13CC74:  POP             {R4,R5,R7,PC}
