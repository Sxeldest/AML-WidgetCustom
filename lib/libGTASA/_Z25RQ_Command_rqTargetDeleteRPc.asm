; =========================================================
; Game Engine Function: _Z25RQ_Command_rqTargetDeleteRPc
; Address            : 0x1D0FD4 - 0x1D101A
; =========================================================

1D0FD4:  PUSH            {R4,R6,R7,LR}
1D0FD6:  ADD             R7, SP, #8
1D0FD8:  LDR             R1, [R0]
1D0FDA:  LDR.W           R4, [R1],#4
1D0FDE:  STR             R1, [R0]
1D0FE0:  LDR             R0, [R4]
1D0FE2:  CMP             R0, #0
1D0FE4:  ITTT NE
1D0FE6:  LDRNE           R1, [R0]
1D0FE8:  LDRNE           R1, [R1,#4]
1D0FEA:  BLXNE           R1
1D0FEC:  ADD.W           R1, R4, #0x18
1D0FF0:  MOVS            R0, #1
1D0FF2:  BLX             glDeleteFramebuffers
1D0FF6:  ADD.W           R1, R4, #0x10
1D0FFA:  MOVS            R0, #1
1D0FFC:  BLX             glDeleteRenderbuffers
1D1000:  ADD.W           R1, R4, #0x14
1D1004:  MOVS            R0, #1
1D1006:  BLX             glDeleteRenderbuffers
1D100A:  CMP             R4, #0
1D100C:  IT EQ
1D100E:  POPEQ           {R4,R6,R7,PC}
1D1010:  MOV             R0, R4; void *
1D1012:  POP.W           {R4,R6,R7,LR}
1D1016:  B.W             j__ZdlPv; operator delete(void *)
