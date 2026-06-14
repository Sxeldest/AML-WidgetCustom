; =========================================================
; Game Engine Function: sub_EC10E
; Address            : 0xEC10E - 0xEC15E
; =========================================================

EC10E:  PUSH            {R4-R7,LR}
EC110:  ADD             R7, SP, #0xC
EC112:  PUSH.W          {R8}
EC116:  MOV             R8, R0
EC118:  MOVS            R0, #0
EC11A:  MOV             R5, R1
EC11C:  STR.W           R0, [R8]
EC120:  STR.W           R0, [R8,#4]
EC124:  LDR             R1, [R1]
EC126:  LDR             R2, [R5,#4]
EC128:  STR.W           R0, [R8,#8]
EC12C:  SUBS            R0, R2, R1
EC12E:  BEQ             loc_EC156
EC130:  ASRS            R1, R0, #4
EC132:  MOV             R0, R8
EC134:  BL              sub_EC16E
EC138:  LDRD.W          R6, R4, [R5]
EC13C:  LDR.W           R5, [R8,#4]
EC140:  CMP             R6, R4
EC142:  BEQ             loc_EC152
EC144:  MOV             R0, R5
EC146:  MOV             R1, R6
EC148:  BL              sub_E4834
EC14C:  ADDS            R5, #0x10
EC14E:  ADDS            R6, #0x10
EC150:  B               loc_EC140
EC152:  STR.W           R5, [R8,#4]
EC156:  MOV             R0, R8
EC158:  POP.W           {R8}
EC15C:  POP             {R4-R7,PC}
