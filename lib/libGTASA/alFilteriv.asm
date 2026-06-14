; =========================================================
; Game Engine Function: alFilteriv
; Address            : 0x254AE8 - 0x254B84
; =========================================================

254AE8:  PUSH            {R4-R7,LR}
254AEA:  ADD             R7, SP, #0xC
254AEC:  PUSH.W          {R8}
254AF0:  MOV             R4, R0
254AF2:  MOV             R5, R2
254AF4:  MOV             R6, R1
254AF6:  MOVW            R0, #0x8001
254AFA:  CMP             R6, R0
254AFC:  BNE             loc_254B10
254AFE:  LDR             R2, [R5]
254B00:  MOV             R0, R4
254B02:  MOVW            R1, #0x8001
254B06:  POP.W           {R8}
254B0A:  POP.W           {R4-R7,LR}
254B0E:  B               alFilteri
254B10:  BLX             j_GetContextRef
254B14:  MOV             R8, R0
254B16:  CMP.W           R8, #0
254B1A:  BEQ             loc_254B36
254B1C:  LDR.W           R0, [R8,#0x88]
254B20:  MOV             R1, R4
254B22:  ADDS            R0, #0x88
254B24:  BLX             j_LookupUIntMapKey
254B28:  CBZ             R0, loc_254B3C
254B2A:  LDR             R4, [R0,#0x10]
254B2C:  MOV             R1, R8
254B2E:  MOV             R2, R6
254B30:  MOV             R3, R5
254B32:  BLX             R4
254B34:  B               loc_254B76
254B36:  POP.W           {R8}
254B3A:  POP             {R4-R7,PC}
254B3C:  LDR             R0, =(TrapALError_ptr - 0x254B42)
254B3E:  ADD             R0, PC; TrapALError_ptr
254B40:  LDR             R0, [R0]; TrapALError
254B42:  LDRB            R0, [R0]
254B44:  CMP             R0, #0
254B46:  ITT NE
254B48:  MOVNE           R0, #5; sig
254B4A:  BLXNE           raise
254B4E:  LDREX.W         R0, [R8,#0x50]
254B52:  CBNZ            R0, loc_254B6E
254B54:  ADD.W           R0, R8, #0x50 ; 'P'
254B58:  MOVW            R1, #0xA001
254B5C:  DMB.W           ISH
254B60:  STREX.W         R2, R1, [R0]
254B64:  CBZ             R2, loc_254B72
254B66:  LDREX.W         R2, [R0]
254B6A:  CMP             R2, #0
254B6C:  BEQ             loc_254B60
254B6E:  CLREX.W
254B72:  DMB.W           ISH
254B76:  MOV             R0, R8
254B78:  POP.W           {R8}
254B7C:  POP.W           {R4-R7,LR}
254B80:  B.W             ALCcontext_DecRef
