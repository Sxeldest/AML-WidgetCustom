; =========================================================
; Game Engine Function: sub_18B104
; Address            : 0x18B104 - 0x18B156
; =========================================================

18B104:  PUSH            {R4-R7,LR}
18B106:  ADD             R7, SP, #0xC
18B108:  PUSH.W          {R11}
18B10C:  SUB             SP, SP, #0x10
18B10E:  MOV             R6, R2
18B110:  SUB.W           R2, R7, #-var_11
18B114:  MOV             R4, R0
18B116:  BL              sub_18B156
18B11A:  MOV             R5, R0
18B11C:  LDRB.W          R0, [R7,#var_11]
18B120:  CBZ             R0, loc_18B128
18B122:  MOV.W           R5, #0xFFFFFFFF
18B126:  B               loc_18B14C
18B128:  LDR             R1, [R4,#4]
18B12A:  LDR             R0, [R6]
18B12C:  CMP             R5, R1
18B12E:  BCS             loc_18B13E
18B130:  ADD             R1, SP, #0x20+var_1C
18B132:  STR             R0, [SP,#0x20+var_1C]
18B134:  MOV             R0, R4
18B136:  MOV             R2, R5
18B138:  BL              sub_18B1A0
18B13C:  B               loc_18B14C
18B13E:  ADD             R1, SP, #0x20+var_18
18B140:  STR             R0, [SP,#0x20+var_18]
18B142:  MOV             R0, R4
18B144:  BL              sub_18A49E
18B148:  LDR             R0, [R4,#4]
18B14A:  SUBS            R5, R0, #1
18B14C:  MOV             R0, R5
18B14E:  ADD             SP, SP, #0x10
18B150:  POP.W           {R11}
18B154:  POP             {R4-R7,PC}
