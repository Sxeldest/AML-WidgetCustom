; =========================================================
; Game Engine Function: _Z27RQ_Command_rqIndexBufferCPURPc
; Address            : 0x1CBC00 - 0x1CBC3E
; =========================================================

1CBC00:  PUSH            {R4,R6,R7,LR}
1CBC02:  ADD             R7, SP, #8
1CBC04:  LDR             R2, [R0]
1CBC06:  LDR.W           R12, =(_ZN14ES2IndexBuffer12curCPUBufferE_ptr - 0x1CBC16)
1CBC0A:  LDR.W           LR, =(_ZN14ES2IndexBuffer10curCPUSizeE_ptr - 0x1CBC18)
1CBC0E:  LDR.W           R1, [R2],#7
1CBC12:  ADD             R12, PC; _ZN14ES2IndexBuffer12curCPUBufferE_ptr
1CBC14:  ADD             LR, PC; _ZN14ES2IndexBuffer10curCPUSizeE_ptr
1CBC16:  BIC.W           R2, R2, #3
1CBC1A:  LDR.W           R12, [R12]; ES2IndexBuffer::curCPUBuffer ...
1CBC1E:  ADDS            R3, R1, #3
1CBC20:  LDR.W           LR, [LR]; ES2IndexBuffer::curCPUSize ...
1CBC24:  TST.W           R1, #3
1CBC28:  MOV             R4, R1
1CBC2A:  IT NE
1CBC2C:  BICNE.W         R4, R3, #3
1CBC30:  ADDS            R3, R2, R4
1CBC32:  STR             R3, [R0]
1CBC34:  STR.W           R1, [LR]; ES2IndexBuffer::curCPUSize
1CBC38:  STR.W           R2, [R12]; ES2IndexBuffer::curCPUBuffer
1CBC3C:  POP             {R4,R6,R7,PC}
