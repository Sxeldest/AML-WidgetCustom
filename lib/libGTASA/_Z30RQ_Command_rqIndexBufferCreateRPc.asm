; =========================================================
; Game Engine Function: _Z30RQ_Command_rqIndexBufferCreateRPc
; Address            : 0x1CBB64 - 0x1CBB88
; =========================================================

1CBB64:  PUSH            {R4,R6,R7,LR}
1CBB66:  ADD             R7, SP, #8
1CBB68:  LDR             R1, [R0]
1CBB6A:  LDR.W           R4, [R1],#4
1CBB6E:  STR             R1, [R0]
1CBB70:  MOVS            R0, #1
1CBB72:  ADD.W           R1, R4, #0xC
1CBB76:  BLX             glGenBuffers
1CBB7A:  LDR             R1, [R4,#0xC]
1CBB7C:  MOVW            R0, #0x8893
1CBB80:  POP.W           {R4,R6,R7,LR}
1CBB84:  B.W             j_glBindBuffer
