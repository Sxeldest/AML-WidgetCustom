; =========================================================
; Game Engine Function: sub_2019A4
; Address            : 0x2019A4 - 0x201A7A
; =========================================================

2019A4:  PUSH            {R4-R7,LR}
2019A6:  ADD             R7, SP, #0xC
2019A8:  PUSH.W          {R5-R11}
2019AC:  STR             R1, [SP,#0x28+var_24]
2019AE:  MOV             R10, R0
2019B0:  LDR             R0, =(__stack_chk_guard_ptr - 0x2019BA)
2019B2:  MOV             R6, R3
2019B4:  MOV             R8, R2
2019B6:  ADD             R0, PC; __stack_chk_guard_ptr
2019B8:  LDR             R0, [R0]; __stack_chk_guard
2019BA:  LDR             R0, [R0]
2019BC:  STR             R0, [SP,#0x28+var_20]
2019BE:  ADD             R1, SP, #0x28+var_24
2019C0:  MOV             R0, R10
2019C2:  BL              sub_1FB080
2019C6:  CBZ             R0, loc_2019CE
2019C8:  MOVS            R4, #0
2019CA:  MOVS            R0, #6
2019CC:  B               loc_201A46
2019CE:  MOV             R0, R10
2019D0:  BL              sub_1FDEC4
2019D4:  MOV             R4, R0
2019D6:  LDR             R0, [R6]
2019D8:  MOVS            R1, #0x40 ; '@'
2019DA:  MOV             R2, R4
2019DC:  LDR             R3, [R0,#0xC]
2019DE:  MOV             R0, R6
2019E0:  BLX             R3
2019E2:  CBZ             R0, loc_201A42
2019E4:  LDR             R0, [R6]
2019E6:  MOV             R1, R4
2019E8:  MOVS            R2, #0
2019EA:  LDR.W           R11, [R7,#arg_0]
2019EE:  LDR             R3, [R0,#0x34]
2019F0:  MOV             R0, R6
2019F2:  BLX             R3
2019F4:  ADD.W           R9, SP, #0x28+var_24
2019F8:  MOV             R4, R0
2019FA:  MOV             R0, R10
2019FC:  BL              sub_1FDED0
201A00:  MOV             R0, R10
201A02:  MOV             R1, R9
201A04:  BL              sub_1F6E98
201A08:  SUBS            R4, #0x30 ; '0'
201A0A:  CBZ             R0, loc_201A6A
201A0C:  CMP.W           R11, #2
201A10:  BLT             loc_201A6A
201A12:  MOV             R0, R10
201A14:  BL              sub_1FDEC4
201A18:  MOV             R5, R0
201A1A:  LDR             R0, [R6]
201A1C:  MOVS            R1, #0x40 ; '@'
201A1E:  MOV             R2, R5
201A20:  LDR             R3, [R0,#0xC]
201A22:  MOV             R0, R6
201A24:  BLX             R3
201A26:  CBZ             R0, loc_201A50
201A28:  LDR             R0, [R6]
201A2A:  MOV             R1, R5
201A2C:  MOVS            R2, #0
201A2E:  LDR             R3, [R0,#0x34]
201A30:  MOV             R0, R6
201A32:  BLX             R3
201A34:  ADD.W           R1, R4, R4,LSL#2
201A38:  SUB.W           R11, R11, #1
201A3C:  ADD.W           R4, R0, R1,LSL#1
201A40:  B               loc_2019FA
201A42:  MOVS            R4, #0
201A44:  MOVS            R0, #4
201A46:  LDR.W           R1, [R8]
201A4A:  ORRS            R0, R1
201A4C:  STR.W           R0, [R8]
201A50:  LDR             R0, [SP,#0x28+var_20]
201A52:  LDR             R1, =(__stack_chk_guard_ptr - 0x201A58)
201A54:  ADD             R1, PC; __stack_chk_guard_ptr
201A56:  LDR             R1, [R1]; __stack_chk_guard
201A58:  LDR             R1, [R1]
201A5A:  CMP             R1, R0
201A5C:  ITTT EQ
201A5E:  MOVEQ           R0, R4
201A60:  POPEQ.W         {R1-R3,R8-R11}
201A64:  POPEQ           {R4-R7,PC}
201A66:  BLX             __stack_chk_fail
201A6A:  ADD             R1, SP, #0x28+var_24
201A6C:  MOV             R0, R10
201A6E:  BL              sub_1FB080
201A72:  CMP             R0, #0
201A74:  BEQ             loc_201A50
201A76:  MOVS            R0, #2
201A78:  B               loc_201A46
