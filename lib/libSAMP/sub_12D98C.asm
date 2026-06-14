; =========================================================
; Game Engine Function: sub_12D98C
; Address            : 0x12D98C - 0x12DA4C
; =========================================================

12D98C:  PUSH            {R4-R7,LR}
12D98E:  ADD             R7, SP, #0xC
12D990:  PUSH.W          {R11}
12D994:  VPUSH           {D8}
12D998:  SUB             SP, SP, #0x18
12D99A:  LDR             R0, [R7,#arg_0]
12D99C:  STR             R0, [SP,#0x30+var_1C]
12D99E:  LDR             R0, [R2]
12D9A0:  STR             R3, [SP,#0x30+var_20]
12D9A2:  CMP             R0, #0
12D9A4:  BEQ             loc_12DA40
12D9A6:  MOV             R5, R2
12D9A8:  MOV             R4, R1
12D9AA:  VLDR            S16, [R7,#arg_4]
12D9AE:  BL              sub_E4F88
12D9B2:  CBZ             R0, loc_12D9EC
12D9B4:  ADD.W           R6, R5, #0x1C
12D9B8:  MOVS            R0, #1
12D9BA:  ADD.W           R2, R5, #0x28 ; '('; int
12D9BE:  ADD             R1, SP, #0x30+var_20; int
12D9C0:  STR             R0, [SP,#0x30+var_30]; int
12D9C2:  MOV             R0, R4; int
12D9C4:  MOV             R3, R6; int
12D9C6:  VSTR            S16, [SP,#0x30+var_2C]
12D9CA:  BL              sub_12AE34
12D9CE:  VMOV            R3, S16
12D9D2:  ADD             R0, SP, #0x30+var_28
12D9D4:  MOV             R1, R4
12D9D6:  MOV             R2, R6
12D9D8:  BL              sub_12B090
12D9DC:  VLDR            S0, [SP,#0x30+var_20]
12D9E0:  VLDR            S2, [SP,#0x30+var_28]
12D9E4:  VADD.F32        S0, S2, S0
12D9E8:  VSTR            S0, [SP,#0x30+var_20]
12D9EC:  LDR             R0, [R5]
12D9EE:  CMP             R0, #2
12D9F0:  BNE             loc_12DA2A
12D9F2:  ADD.W           R6, R5, #0x10
12D9F6:  MOVS            R0, #1
12D9F8:  ADD.W           R2, R5, #0x38 ; '8'; int
12D9FC:  ADD             R1, SP, #0x30+var_20; int
12D9FE:  STR             R0, [SP,#0x30+var_30]; int
12DA00:  MOV             R0, R4; int
12DA02:  MOV             R3, R6; int
12DA04:  VSTR            S16, [SP,#0x30+var_2C]
12DA08:  BL              sub_12AE34
12DA0C:  VMOV            R3, S16
12DA10:  ADD             R0, SP, #0x30+var_28
12DA12:  MOV             R1, R4
12DA14:  MOV             R2, R6
12DA16:  BL              sub_12B090
12DA1A:  VLDR            S0, [SP,#0x30+var_20]
12DA1E:  VLDR            S2, [SP,#0x30+var_28]
12DA22:  VADD.F32        S0, S2, S0
12DA26:  VSTR            S0, [SP,#0x30+var_20]
12DA2A:  MOVS            R0, #1
12DA2C:  ADD.W           R2, R5, #0x28 ; '('; int
12DA30:  ADDS            R3, R5, #4; int
12DA32:  ADD             R1, SP, #0x30+var_20; int
12DA34:  STR             R0, [SP,#0x30+var_30]; int
12DA36:  MOV             R0, R4; int
12DA38:  VSTR            S16, [SP,#0x30+var_2C]
12DA3C:  BL              sub_12AE34
12DA40:  ADD             SP, SP, #0x18
12DA42:  VPOP            {D8}
12DA46:  POP.W           {R11}
12DA4A:  POP             {R4-R7,PC}
