; =========================================================
; Game Engine Function: _ZN27CPlayerPedDataSaveStructure7ExtractEP14CPlayerPedData
; Address            : 0x484A40 - 0x484A72
; =========================================================

484A40:  PUSH            {R4,R5,R7,LR}
484A42:  ADD             R7, SP, #8
484A44:  MOV             R4, R1
484A46:  MOV             R5, R0
484A48:  LDR             R0, [R4]
484A4A:  MOVS            R2, #0x78 ; 'x'; size_t
484A4C:  LDR             R1, [R5]
484A4E:  STR             R1, [R0]
484A50:  LDR             R0, [R4]
484A52:  LDRB            R1, [R5,#4]
484A54:  STR             R1, [R0,#0x2C]
484A56:  ADD.W           R1, R5, #8; void *
484A5A:  LDR             R0, [R4,#4]; void *
484A5C:  BLX             memcpy_0
484A60:  LDR             R0, [R4]
484A62:  LDRB.W          R1, [R5,#0x80]
484A66:  STRB.W          R1, [R4,#0x20]
484A6A:  LDR.W           R1, [R5,#0x84]
484A6E:  STR             R1, [R0,#0x14]
484A70:  POP             {R4,R5,R7,PC}
