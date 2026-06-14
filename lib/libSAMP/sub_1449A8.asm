; =========================================================
; Game Engine Function: sub_1449A8
; Address            : 0x1449A8 - 0x144A66
; =========================================================

1449A8:  PUSH            {R4-R7,LR}
1449AA:  ADD             R7, SP, #0xC
1449AC:  PUSH.W          {R8-R11}
1449B0:  SUB             SP, SP, #0x14
1449B2:  MOV             R11, R0
1449B4:  LDR             R0, =(off_2349A8 - 0x1449BE)
1449B6:  MOVS            R1, #2
1449B8:  MOVS            R2, #0
1449BA:  ADD             R0, PC; off_2349A8
1449BC:  MOVS            R3, #0
1449BE:  MOVS            R4, #0
1449C0:  LDR.W           R10, [R0]; dword_381BF4
1449C4:  LDR.W           R0, [R10]
1449C8:  BL              sub_17C2A4
1449CC:  LDR.W           R0, [R10]
1449D0:  BL              sub_17C814
1449D4:  LDR             R0, =(off_234A54 - 0x1449DA)
1449D6:  ADD             R0, PC; off_234A54
1449D8:  LDR.W           R8, [R0]; dword_381A0C
1449DC:  LDR.W           R0, [R11,#0x3B0]
1449E0:  LDR             R0, [R0]
1449E2:  ADDS            R1, R0, R4
1449E4:  LDRB.W          R1, [R1,#0xFB4]
1449E8:  CBZ             R1, loc_144A48
1449EA:  ADD.W           R0, R0, R4,LSL#2
1449EE:  LDR             R0, [R0,#4]
1449F0:  CBZ             R0, loc_144A48
1449F2:  LDR             R0, [R0]
1449F4:  CBZ             R0, loc_144A48
1449F6:  LDR.W           R0, [R8]
1449FA:  UXTH            R5, R4
1449FC:  MOV             R1, R5
1449FE:  BL              sub_155FB0
144A02:  MOV             R6, R0
144A04:  ADDS            R0, #1
144A06:  BEQ             loc_144A48
144A08:  LDR.W           R0, [R11,#0x3B0]
144A0C:  MOV             R1, R5
144A0E:  LDR.W           R9, [R10]
144A12:  LDR             R0, [R0]
144A14:  BL              sub_148E64
144A18:  MOV             R1, R0; s
144A1A:  ADD             R0, SP, #0x30+var_28; int
144A1C:  BL              sub_DC6DC
144A20:  STRD.W          R0, R4, [SP,#0x30+var_30]
144A24:  BIC.W           R3, R6, R6,ASR#31
144A28:  MOVS            R0, #0x64 ; 'd'
144A2A:  CMP             R3, #0x64 ; 'd'
144A2C:  IT CS
144A2E:  MOVCS           R3, R0
144A30:  MOV             R0, R9
144A32:  MOVS            R1, #0
144A34:  MOVS            R2, #0x64 ; 'd'
144A36:  BL              sub_17C868
144A3A:  LDRB.W          R0, [SP,#0x30+var_28]
144A3E:  LSLS            R0, R0, #0x1F
144A40:  ITT NE
144A42:  LDRNE           R0, [SP,#0x30+var_20]; void *
144A44:  BLXNE           j__ZdlPv; operator delete(void *)
144A48:  ADDS            R4, #1
144A4A:  CMP.W           R4, #0x3EC
144A4E:  BNE             loc_1449DC
144A50:  LDR.W           R0, [R10]
144A54:  MOVS            R1, #3
144A56:  MOVS            R2, #1
144A58:  MOVS            R3, #0
144A5A:  BL              sub_17C2A4
144A5E:  ADD             SP, SP, #0x14
144A60:  POP.W           {R8-R11}
144A64:  POP             {R4-R7,PC}
