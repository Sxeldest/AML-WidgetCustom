; =========================================================
; Game Engine Function: sub_1561FE
; Address            : 0x1561FE - 0x15621E
; =========================================================

1561FE:  PUSH            {R7,LR}
156200:  MOV             R7, SP
156202:  SUB             SP, SP, #0x10
156204:  MOV             R12, R1
156206:  ADD.W           R1, R7, #8
15620A:  STR             R1, [SP,#0x18+var_C]
15620C:  STRD.W          R3, R1, [SP,#0x18+var_18]
156210:  MOV             R1, R2
156212:  MOVS            R2, #0
156214:  MOV             R3, R12
156216:  BLX             __vsnprintf_chk
15621A:  ADD             SP, SP, #0x10
15621C:  POP             {R7,PC}
