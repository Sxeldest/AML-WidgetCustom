; =========================================================
; Game Engine Function: _Z30RQ_Command_rqIndexBufferSelectRPc
; Address            : 0x1CBB88 - 0x1CBBB4
; =========================================================

1CBB88:  PUSH            {R7,LR}
1CBB8A:  MOV             R7, SP
1CBB8C:  LDR             R2, [R0]
1CBB8E:  LDR.W           R1, [R2],#4
1CBB92:  STR             R2, [R0]
1CBB94:  CBZ             R1, loc_1CBB9E
1CBB96:  LDR             R1, [R1,#0xC]
1CBB98:  MOVW            R0, #0x8893
1CBB9C:  B               loc_1CBBA4
1CBB9E:  MOVW            R0, #0x8893
1CBBA2:  MOVS            R1, #0
1CBBA4:  BLX             glBindBuffer
1CBBA8:  LDR             R0, =(_ZN14ES2IndexBuffer12curCPUBufferE_ptr - 0x1CBBB0)
1CBBAA:  MOVS            R1, #0
1CBBAC:  ADD             R0, PC; _ZN14ES2IndexBuffer12curCPUBufferE_ptr
1CBBAE:  LDR             R0, [R0]; ES2IndexBuffer::curCPUBuffer ...
1CBBB0:  STR             R1, [R0]; ES2IndexBuffer::curCPUBuffer
1CBBB2:  POP             {R7,PC}
