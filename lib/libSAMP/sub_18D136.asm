; =========================================================
; Game Engine Function: sub_18D136
; Address            : 0x18D136 - 0x18D180
; =========================================================

18D136:  PUSH            {R4,R6,R7,LR}
18D138:  ADD             R7, SP, #8
18D13A:  LDR             R3, [R0,#4]
18D13C:  CBZ             R3, loc_18D174
18D13E:  LDR.W           LR, [R1]
18D142:  SUBS            R1, R3, #1
18D144:  LDR.W           R12, [R0]
18D148:  ADD.W           R0, R3, R3,LSR#31
18D14C:  MOVS            R3, #0
18D14E:  ASRS            R0, R0, #1
18D150:  LDR.W           R4, [R12,R0,LSL#3]
18D154:  CMP             LR, R4
18D156:  BEQ             loc_18D17A
18D158:  IT LT
18D15A:  SUBLT           R1, R0, #1
18D15C:  CMP             LR, R4
18D15E:  IT GE
18D160:  ADDGE           R3, R0, #1
18D162:  SUBS            R0, R1, R3
18D164:  ADD.W           R0, R0, R0,LSR#31
18D168:  ADD.W           R0, R3, R0,ASR#1
18D16C:  BGE             loc_18D150
18D16E:  MOVS            R1, #0
18D170:  MOV             R0, R3
18D172:  B               loc_18D17C
18D174:  MOVS            R1, #0
18D176:  MOVS            R0, #0
18D178:  B               loc_18D17C
18D17A:  MOVS            R1, #1
18D17C:  STRB            R1, [R2]
18D17E:  POP             {R4,R6,R7,PC}
