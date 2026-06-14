; =========================================================
; Game Engine Function: sub_F8204
; Address            : 0xF8204 - 0xF821A
; =========================================================

F8204:  PUSH            {R4,R6,R7,LR}
F8206:  ADD             R7, SP, #8
F8208:  LDR             R3, =(unk_242E94 - 0xF8210)
F820A:  LDR             R4, =(unk_242B4C - 0xF8212)
F820C:  ADD             R3, PC; unk_242E94
F820E:  ADD             R4, PC; unk_242B4C
F8210:  STR.W           R2, [R3,R0,LSL#2]
F8214:  STR.W           R1, [R4,R0,LSL#2]
F8218:  POP             {R4,R6,R7,PC}
