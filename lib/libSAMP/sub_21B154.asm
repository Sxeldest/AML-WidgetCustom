; =========================================================
; Game Engine Function: sub_21B154
; Address            : 0x21B154 - 0x21B176
; =========================================================

21B154:  PUSH            {R4,R6,R7,LR}
21B156:  ADD             R7, SP, #8
21B158:  MOV             R3, R0
21B15A:  LDRD.W          R2, R0, [R1]
21B15E:  SUBS            R4, R0, R2
21B160:  LDRD.W          R0, R1, [R3]
21B164:  SUBS            R3, R1, R0
21B166:  CMP             R3, R4
21B168:  BNE             loc_21B172
21B16A:  POP.W           {R4,R6,R7,LR}
21B16E:  B.W             sub_2166EE
21B172:  MOVS            R0, #0
21B174:  POP             {R4,R6,R7,PC}
