; =========================================================
; Game Engine Function: _Z28RQ_Command_rqVertexBufferCPURPc
; Address            : 0x1CB960 - 0x1CB99E
; =========================================================

1CB960:  PUSH            {R4,R6,R7,LR}
1CB962:  ADD             R7, SP, #8
1CB964:  LDR             R2, [R0]
1CB966:  LDR.W           R12, =(_ZN15ES2VertexBuffer12curCPUBufferE_ptr - 0x1CB976)
1CB96A:  LDR.W           LR, =(_ZN15ES2VertexBuffer10curCPUSizeE_ptr - 0x1CB978)
1CB96E:  LDR.W           R1, [R2],#7
1CB972:  ADD             R12, PC; _ZN15ES2VertexBuffer12curCPUBufferE_ptr
1CB974:  ADD             LR, PC; _ZN15ES2VertexBuffer10curCPUSizeE_ptr
1CB976:  BIC.W           R2, R2, #3
1CB97A:  LDR.W           R12, [R12]; ES2VertexBuffer::curCPUBuffer ...
1CB97E:  ADDS            R3, R1, #3
1CB980:  LDR.W           LR, [LR]; ES2VertexBuffer::curCPUSize ...
1CB984:  TST.W           R1, #3
1CB988:  MOV             R4, R1
1CB98A:  IT NE
1CB98C:  BICNE.W         R4, R3, #3
1CB990:  ADDS            R3, R2, R4
1CB992:  STR             R3, [R0]
1CB994:  STR.W           R1, [LR]; ES2VertexBuffer::curCPUSize
1CB998:  STR.W           R2, [R12]; ES2VertexBuffer::curCPUBuffer
1CB99C:  POP             {R4,R6,R7,PC}
