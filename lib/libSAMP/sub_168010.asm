; =========================================================
; Game Engine Function: sub_168010
; Address            : 0x168010 - 0x1680D6
; =========================================================

168010:  PUSH            {R4-R7,LR}
168012:  ADD             R7, SP, #0xC
168014:  PUSH.W          {R11}
168018:  LDR             R4, =(dword_381B58 - 0x168028)
16801A:  MOV             R5, R0
16801C:  MOVW            R1, #0x1AB4
168020:  MOVW            R2, #0x19D0
168024:  ADD             R4, PC; dword_381B58
168026:  LDR             R0, [R4]
168028:  ADDS            R6, R0, R2
16802A:  LDR             R1, [R0,R1]
16802C:  CMP             R1, R5
16802E:  BEQ             loc_168062
168030:  STR.W           R5, [R6,#0xE4]
168034:  CBZ             R5, loc_16804E
168036:  LDRB.W          R0, [R6,#0x147]
16803A:  CBZ             R0, loc_168042
16803C:  MOVS            R0, #1
16803E:  STRB.W          R0, [R6,#0x145]
168042:  MOVS            R1, #0
168044:  LDR.W           R0, [R5,#0x30C]
168048:  STRB.W          R1, [R6,#0x149]
16804C:  B               loc_168054
16804E:  MOVS            R0, #0
168050:  STRB.W          R0, [R6,#0x149]
168054:  MOVS            R1, #0
168056:  STR.W           R0, [R6,#0xE8]
16805A:  STRB.W          R1, [R6,#0x144]
16805E:  STR.W           R1, [R6,#0x13C]
168062:  MOV             R0, R5
168064:  MOVS            R1, #0
168066:  BL              sub_1683F8
16806A:  CBZ             R5, loc_1680D0
16806C:  MOV             R1, R4
16806E:  LDR.W           R4, [R5,#0x2FC]
168072:  CMP             R4, #0
168074:  IT EQ
168076:  MOVEQ           R4, R5
168078:  LDRB            R0, [R4,#0xB]
16807A:  LSLS            R0, R0, #0x1D
16807C:  BPL             loc_1680B6
16807E:  LDR             R0, [R6]
168080:  CBZ             R0, loc_1680B6
168082:  LDR             R0, [R6,#0x24]
168084:  CBZ             R0, loc_1680B6
168086:  LDR.W           R0, [R0,#0x2FC]
16808A:  CMP             R0, R4
16808C:  BEQ             loc_1680B6
16808E:  LDR             R0, [R1]
168090:  MOVW            R1, #0x19D0
168094:  LDR             R2, [R0,R1]
168096:  ADD             R0, R1
168098:  CMP             R2, #0
16809A:  IT NE
16809C:  MOVNE           R2, #1
16809E:  STRB            R2, [R0,#0xC]
1680A0:  ITTT NE
1680A2:  MOVNE           R1, #0
1680A4:  STRHNE          R1, [R0,#0xE]
1680A6:  STRNE           R1, [R0,#8]
1680A8:  MOVS            R1, #0
1680AA:  STRD.W          R1, R1, [R0,#0x14]
1680AE:  STR             R1, [R0]
1680B0:  STR             R1, [R0,#0x24]
1680B2:  STRB            R1, [R0,#0xD]
1680B4:  STRB            R1, [R0,#0x10]
1680B6:  MOV             R0, R4
1680B8:  BL              sub_16FDB0
1680BC:  LDRB            R0, [R4,#9]
1680BE:  LSLS            R0, R0, #0x1A
1680C0:  BMI             loc_1680D0
1680C2:  MOV             R0, R4
1680C4:  POP.W           {R11}
1680C8:  POP.W           {R4-R7,LR}
1680CC:  B.W             sub_16FE18
1680D0:  POP.W           {R11}
1680D4:  POP             {R4-R7,PC}
