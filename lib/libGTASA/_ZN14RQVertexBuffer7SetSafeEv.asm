; =========================================================
; Game Engine Function: _ZN14RQVertexBuffer7SetSafeEv
; Address            : 0x1CB814 - 0x1CB896
; =========================================================

1CB814:  PUSH            {R4,R5,R7,LR}
1CB816:  ADD             R7, SP, #8
1CB818:  LDR             R0, =(_ZN15ES2VertexBuffer12curCPUBufferE_ptr - 0x1CB81E)
1CB81A:  ADD             R0, PC; _ZN15ES2VertexBuffer12curCPUBufferE_ptr
1CB81C:  LDR             R0, [R0]; ES2VertexBuffer::curCPUBuffer ...
1CB81E:  LDR             R4, [R0]; ES2VertexBuffer::curCPUBuffer
1CB820:  CMP             R4, #0
1CB822:  IT EQ
1CB824:  POPEQ           {R4,R5,R7,PC}
1CB826:  LDR             R0, =(_ZN15ES2VertexBuffer13safeCPUBufferE_ptr - 0x1CB830)
1CB828:  LDR             R1, =(_ZN15ES2VertexBuffer10curCPUSizeE_ptr - 0x1CB832)
1CB82A:  LDR             R2, =(_ZN15ES2VertexBuffer11safeCPUSizeE_ptr - 0x1CB834)
1CB82C:  ADD             R0, PC; _ZN15ES2VertexBuffer13safeCPUBufferE_ptr
1CB82E:  ADD             R1, PC; _ZN15ES2VertexBuffer10curCPUSizeE_ptr
1CB830:  ADD             R2, PC; _ZN15ES2VertexBuffer11safeCPUSizeE_ptr
1CB832:  LDR             R0, [R0]; ES2VertexBuffer::safeCPUBuffer ...
1CB834:  LDR             R1, [R1]; ES2VertexBuffer::curCPUSize ...
1CB836:  LDR             R2, [R2]; ES2VertexBuffer::safeCPUSize ...
1CB838:  LDR             R0, [R0]; p
1CB83A:  LDR             R5, [R1]; ES2VertexBuffer::curCPUSize
1CB83C:  LDR             R1, [R2]; ES2VertexBuffer::safeCPUSize
1CB83E:  CMP             R1, R5
1CB840:  BCS             loc_1CB87C
1CB842:  CBZ             R0, loc_1CB858
1CB844:  BLX             free
1CB848:  LDR             R0, =(_ZN15ES2VertexBuffer12curCPUBufferE_ptr - 0x1CB850)
1CB84A:  LDR             R1, =(_ZN15ES2VertexBuffer10curCPUSizeE_ptr - 0x1CB852)
1CB84C:  ADD             R0, PC; _ZN15ES2VertexBuffer12curCPUBufferE_ptr
1CB84E:  ADD             R1, PC; _ZN15ES2VertexBuffer10curCPUSizeE_ptr
1CB850:  LDR             R0, [R0]; ES2VertexBuffer::curCPUBuffer ...
1CB852:  LDR             R1, [R1]; ES2VertexBuffer::curCPUSize ...
1CB854:  LDR             R4, [R0]; ES2VertexBuffer::curCPUBuffer
1CB856:  LDR             R5, [R1]; ES2VertexBuffer::curCPUSize
1CB858:  MOVW            R2, #0xAAAB
1CB85C:  LSLS            R1, R5, #2
1CB85E:  MOVT            R2, #0xAAAA
1CB862:  LDR             R0, =(_ZN15ES2VertexBuffer11safeCPUSizeE_ptr - 0x1CB86C)
1CB864:  UMULL.W         R1, R2, R1, R2
1CB868:  ADD             R0, PC; _ZN15ES2VertexBuffer11safeCPUSizeE_ptr
1CB86A:  LDR             R1, [R0]; ES2VertexBuffer::safeCPUSize ...
1CB86C:  LSRS            R0, R2, #1; byte_count
1CB86E:  STR             R0, [R1]; ES2VertexBuffer::safeCPUSize
1CB870:  BLX             malloc
1CB874:  LDR             R1, =(_ZN15ES2VertexBuffer13safeCPUBufferE_ptr - 0x1CB87A)
1CB876:  ADD             R1, PC; _ZN15ES2VertexBuffer13safeCPUBufferE_ptr
1CB878:  LDR             R1, [R1]; ES2VertexBuffer::safeCPUBuffer ...
1CB87A:  STR             R0, [R1]; ES2VertexBuffer::safeCPUBuffer
1CB87C:  MOV             R1, R4; void *
1CB87E:  MOV             R2, R5; size_t
1CB880:  BLX             memcpy_1
1CB884:  LDR             R0, =(_ZN15ES2VertexBuffer13safeCPUBufferE_ptr - 0x1CB88C)
1CB886:  LDR             R1, =(_ZN15ES2VertexBuffer12curCPUBufferE_ptr - 0x1CB88E)
1CB888:  ADD             R0, PC; _ZN15ES2VertexBuffer13safeCPUBufferE_ptr
1CB88A:  ADD             R1, PC; _ZN15ES2VertexBuffer12curCPUBufferE_ptr
1CB88C:  LDR             R0, [R0]; ES2VertexBuffer::safeCPUBuffer ...
1CB88E:  LDR             R1, [R1]; ES2VertexBuffer::curCPUBuffer ...
1CB890:  LDR             R0, [R0]; ES2VertexBuffer::safeCPUBuffer
1CB892:  STR             R0, [R1]; ES2VertexBuffer::curCPUBuffer
1CB894:  POP             {R4,R5,R7,PC}
