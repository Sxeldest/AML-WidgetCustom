; =========================================================
; Game Engine Function: sub_1239DC
; Address            : 0x1239DC - 0x123A5A
; =========================================================

1239DC:  PUSH            {R4-R7,LR}
1239DE:  ADD             R7, SP, #0xC
1239E0:  PUSH.W          {R8}
1239E4:  SUB             SP, SP, #8
1239E6:  MOV             R8, R0
1239E8:  MOV             R0, R1
1239EA:  LDRH.W          R5, [R0,#0x26]!
1239EE:  MOV             R4, R1
1239F0:  LDR             R2, =(unk_B7190 - 0x1239F8)
1239F2:  MOVS            R1, #0
1239F4:  ADD             R2, PC; unk_B7190
1239F6:  LDR             R3, [R2,R1]
1239F8:  CMP             R3, R5
1239FA:  BEQ             loc_123A04
1239FC:  ADDS            R1, #4
1239FE:  CMP             R1, #0xC
123A00:  BNE             loc_1239F6
123A02:  B               loc_123A48
123A04:  CMP             R1, #0xC
123A06:  BEQ             loc_123A48
123A08:  MOVW            R1, #0x1DD
123A0C:  STRH.W          R5, [SP,#0x18+var_14]
123A10:  STRH            R1, [R4,#0x26]
123A12:  STR             R0, [SP,#0x18+var_18]
123A14:  BL              sub_163768
123A18:  MOV             R6, R0
123A1A:  BL              sub_163768
123A1E:  LDR.W           R1, [R6,R5,LSL#2]
123A22:  LDR.W           R2, [R0,#0x774]
123A26:  STR.W           R2, [R6,R5,LSL#2]
123A2A:  STR.W           R1, [R0,#0x774]
123A2E:  LDR.W           R1, [R8]
123A32:  MOV             R0, R4
123A34:  BLX             R1
123A36:  MOV             R4, R0
123A38:  MOV             R0, SP
123A3A:  BL              sub_123AF0
123A3E:  MOV             R0, R4
123A40:  ADD             SP, SP, #8
123A42:  POP.W           {R8}
123A46:  POP             {R4-R7,PC}
123A48:  LDR.W           R1, [R8]
123A4C:  MOV             R0, R4
123A4E:  ADD             SP, SP, #8
123A50:  POP.W           {R8}
123A54:  POP.W           {R4-R7,LR}
123A58:  BX              R1
