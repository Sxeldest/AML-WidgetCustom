; =========================================================
; Game Engine Function: sub_21E148
; Address            : 0x21E148 - 0x21E15E
; =========================================================

21E148:  PUSH            {R7,LR}
21E14A:  MOV             R7, SP
21E14C:  LDR             R0, =(unk_383F08 - 0x21E152)
21E14E:  ADD             R0, PC; unk_383F08
21E150:  ADDS            R0, #4; cond
21E152:  BLX             pthread_cond_broadcast
21E156:  CMP             R0, #0
21E158:  IT NE
21E15A:  MOVNE           R0, #1
21E15C:  POP             {R7,PC}
