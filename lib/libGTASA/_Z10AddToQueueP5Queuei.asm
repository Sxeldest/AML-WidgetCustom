; =========================================================
; Game Engine Function: _Z10AddToQueueP5Queuei
; Address            : 0x2C9B70 - 0x2C9B8C
; =========================================================

2C9B70:  PUSH            {R4,R6,R7,LR}
2C9B72:  ADD             R7, SP, #8
2C9B74:  MOV             R4, R0
2C9B76:  LDR             R0, [R4]
2C9B78:  LDR             R2, [R4,#8]
2C9B7A:  STR.W           R1, [R0,R2,LSL#2]
2C9B7E:  LDRD.W          R0, R1, [R4,#8]
2C9B82:  ADDS            R0, #1
2C9B84:  BLX             __aeabi_idivmod
2C9B88:  STR             R1, [R4,#8]
2C9B8A:  POP             {R4,R6,R7,PC}
