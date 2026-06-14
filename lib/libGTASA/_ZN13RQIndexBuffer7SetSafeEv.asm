; =========================================================
; Game Engine Function: _ZN13RQIndexBuffer7SetSafeEv
; Address            : 0x1CBAB8 - 0x1CBB3A
; =========================================================

1CBAB8:  PUSH            {R4,R5,R7,LR}
1CBABA:  ADD             R7, SP, #8
1CBABC:  LDR             R0, =(_ZN14ES2IndexBuffer12curCPUBufferE_ptr - 0x1CBAC2)
1CBABE:  ADD             R0, PC; _ZN14ES2IndexBuffer12curCPUBufferE_ptr
1CBAC0:  LDR             R0, [R0]; ES2IndexBuffer::curCPUBuffer ...
1CBAC2:  LDR             R4, [R0]; ES2IndexBuffer::curCPUBuffer
1CBAC4:  CMP             R4, #0
1CBAC6:  IT EQ
1CBAC8:  POPEQ           {R4,R5,R7,PC}
1CBACA:  LDR             R0, =(_ZN14ES2IndexBuffer13safeCPUBufferE_ptr - 0x1CBAD4)
1CBACC:  LDR             R1, =(_ZN14ES2IndexBuffer10curCPUSizeE_ptr - 0x1CBAD6)
1CBACE:  LDR             R2, =(_ZN14ES2IndexBuffer11safeCPUSizeE_ptr - 0x1CBAD8)
1CBAD0:  ADD             R0, PC; _ZN14ES2IndexBuffer13safeCPUBufferE_ptr
1CBAD2:  ADD             R1, PC; _ZN14ES2IndexBuffer10curCPUSizeE_ptr
1CBAD4:  ADD             R2, PC; _ZN14ES2IndexBuffer11safeCPUSizeE_ptr
1CBAD6:  LDR             R0, [R0]; ES2IndexBuffer::safeCPUBuffer ...
1CBAD8:  LDR             R1, [R1]; ES2IndexBuffer::curCPUSize ...
1CBADA:  LDR             R2, [R2]; ES2IndexBuffer::safeCPUSize ...
1CBADC:  LDR             R0, [R0]; p
1CBADE:  LDR             R5, [R1]; ES2IndexBuffer::curCPUSize
1CBAE0:  LDR             R1, [R2]; ES2IndexBuffer::safeCPUSize
1CBAE2:  CMP             R1, R5
1CBAE4:  BCS             loc_1CBB20
1CBAE6:  CBZ             R0, loc_1CBAFC
1CBAE8:  BLX             free
1CBAEC:  LDR             R0, =(_ZN14ES2IndexBuffer12curCPUBufferE_ptr - 0x1CBAF4)
1CBAEE:  LDR             R1, =(_ZN14ES2IndexBuffer10curCPUSizeE_ptr - 0x1CBAF6)
1CBAF0:  ADD             R0, PC; _ZN14ES2IndexBuffer12curCPUBufferE_ptr
1CBAF2:  ADD             R1, PC; _ZN14ES2IndexBuffer10curCPUSizeE_ptr
1CBAF4:  LDR             R0, [R0]; ES2IndexBuffer::curCPUBuffer ...
1CBAF6:  LDR             R1, [R1]; ES2IndexBuffer::curCPUSize ...
1CBAF8:  LDR             R4, [R0]; ES2IndexBuffer::curCPUBuffer
1CBAFA:  LDR             R5, [R1]; ES2IndexBuffer::curCPUSize
1CBAFC:  MOVW            R2, #0xAAAB
1CBB00:  LSLS            R1, R5, #2
1CBB02:  MOVT            R2, #0xAAAA
1CBB06:  LDR             R0, =(_ZN14ES2IndexBuffer11safeCPUSizeE_ptr - 0x1CBB10)
1CBB08:  UMULL.W         R1, R2, R1, R2
1CBB0C:  ADD             R0, PC; _ZN14ES2IndexBuffer11safeCPUSizeE_ptr
1CBB0E:  LDR             R1, [R0]; ES2IndexBuffer::safeCPUSize ...
1CBB10:  LSRS            R0, R2, #1; byte_count
1CBB12:  STR             R0, [R1]; ES2IndexBuffer::safeCPUSize
1CBB14:  BLX             malloc
1CBB18:  LDR             R1, =(_ZN14ES2IndexBuffer13safeCPUBufferE_ptr - 0x1CBB1E)
1CBB1A:  ADD             R1, PC; _ZN14ES2IndexBuffer13safeCPUBufferE_ptr
1CBB1C:  LDR             R1, [R1]; ES2IndexBuffer::safeCPUBuffer ...
1CBB1E:  STR             R0, [R1]; ES2IndexBuffer::safeCPUBuffer
1CBB20:  MOV             R1, R4; void *
1CBB22:  MOV             R2, R5; size_t
1CBB24:  BLX             memcpy_1
1CBB28:  LDR             R0, =(_ZN14ES2IndexBuffer13safeCPUBufferE_ptr - 0x1CBB30)
1CBB2A:  LDR             R1, =(_ZN14ES2IndexBuffer12curCPUBufferE_ptr - 0x1CBB32)
1CBB2C:  ADD             R0, PC; _ZN14ES2IndexBuffer13safeCPUBufferE_ptr
1CBB2E:  ADD             R1, PC; _ZN14ES2IndexBuffer12curCPUBufferE_ptr
1CBB30:  LDR             R0, [R0]; ES2IndexBuffer::safeCPUBuffer ...
1CBB32:  LDR             R1, [R1]; ES2IndexBuffer::curCPUBuffer ...
1CBB34:  LDR             R0, [R0]; ES2IndexBuffer::safeCPUBuffer
1CBB36:  STR             R0, [R1]; ES2IndexBuffer::curCPUBuffer
1CBB38:  POP             {R4,R5,R7,PC}
