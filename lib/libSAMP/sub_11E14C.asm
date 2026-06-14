; =========================================================
; Game Engine Function: sub_11E14C
; Address            : 0x11E14C - 0x11E176
; =========================================================

11E14C:  PUSH            {R4,R6,R7,LR}
11E14E:  ADD             R7, SP, #8
11E150:  SUB             SP, SP, #8
11E152:  MOV             R12, R3
11E154:  LDR.W           LR, [R0]
11E158:  LDR             R3, [R7,#arg_0]
11E15A:  MOV             R4, R1
11E15C:  LDR             R0, [R7,#arg_4]
11E15E:  STR             R0, [SP,#0x10+var_10]
11E160:  MOV             R0, R1
11E162:  MOV             R1, R2
11E164:  MOV             R2, R12
11E166:  BLX             LR
11E168:  MOVS            R0, #0x42C80000
11E16E:  STR.W           R0, [R4,#0x544]
11E172:  ADD             SP, SP, #8
11E174:  POP             {R4,R6,R7,PC}
