; =========================================================
; Game Engine Function: _Z31RQ_Command_rqVertexBufferSelectRPc
; Address            : 0x1CB8E4 - 0x1CB912
; =========================================================

1CB8E4:  LDR             R2, [R0]
1CB8E6:  LDR.W           R1, [R2],#4
1CB8EA:  STR             R2, [R0]
1CB8EC:  CBZ             R1, loc_1CB908
1CB8EE:  PUSH            {R7,LR}
1CB8F0:  MOV             R7, SP
1CB8F2:  LDR             R1, [R1,#8]
1CB8F4:  MOVW            R0, #0x8892
1CB8F8:  BLX             glBindBuffer
1CB8FC:  LDR             R0, =(_ZN15ES2VertexBuffer12curCPUBufferE_ptr - 0x1CB904)
1CB8FE:  MOVS            R1, #0
1CB900:  ADD             R0, PC; _ZN15ES2VertexBuffer12curCPUBufferE_ptr
1CB902:  LDR             R0, [R0]; ES2VertexBuffer::curCPUBuffer ...
1CB904:  STR             R1, [R0]; ES2VertexBuffer::curCPUBuffer
1CB906:  POP             {R7,PC}
1CB908:  MOVW            R0, #0x8892
1CB90C:  MOVS            R1, #0
1CB90E:  B.W             j_glBindBuffer
