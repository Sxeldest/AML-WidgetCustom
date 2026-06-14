; =========================================================
; Game Engine Function: _Z30RQ_Command_rqIndexBufferDeleteRPc
; Address            : 0x1CBC48 - 0x1CBC74
; =========================================================

1CBC48:  PUSH            {R4,R6,R7,LR}
1CBC4A:  ADD             R7, SP, #8
1CBC4C:  LDR             R1, [R0]
1CBC4E:  LDR.W           R4, [R1],#4
1CBC52:  STR             R1, [R0]
1CBC54:  MOVS            R0, #1
1CBC56:  ADD.W           R1, R4, #0xC
1CBC5A:  BLX             glDeleteBuffers
1CBC5E:  MOVS            R0, #0
1CBC60:  CMP             R4, #0
1CBC62:  STR             R0, [R4,#0xC]
1CBC64:  IT EQ
1CBC66:  POPEQ           {R4,R6,R7,PC}
1CBC68:  LDR             R0, [R4]
1CBC6A:  LDR             R1, [R0,#4]
1CBC6C:  MOV             R0, R4
1CBC6E:  POP.W           {R4,R6,R7,LR}
1CBC72:  BX              R1
