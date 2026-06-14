; =========================================================
; Game Engine Function: _ZN27CPlayerPedDataSaveStructure9ConstructEP14CPlayerPedData
; Address            : 0x484A0E - 0x484A40
; =========================================================

484A0E:  PUSH            {R4,R5,R7,LR}
484A10:  ADD             R7, SP, #8
484A12:  MOV             R4, R1
484A14:  MOV             R5, R0
484A16:  LDR             R0, [R4]
484A18:  MOVS            R2, #0x78 ; 'x'; size_t
484A1A:  LDR             R0, [R0]
484A1C:  STR             R0, [R5]
484A1E:  LDR             R0, [R4]
484A20:  LDR             R0, [R0,#0x2C]
484A22:  STRB            R0, [R5,#4]
484A24:  ADD.W           R0, R5, #8; void *
484A28:  LDR             R1, [R4,#4]; void *
484A2A:  BLX             memcpy_0
484A2E:  LDRB.W          R0, [R4,#0x20]
484A32:  STRB.W          R0, [R5,#0x80]
484A36:  LDR             R0, [R4]
484A38:  LDR             R0, [R0,#0x14]
484A3A:  STR.W           R0, [R5,#0x84]
484A3E:  POP             {R4,R5,R7,PC}
