; =========================================================
; Game Engine Function: alGetBuffer3i
; Address            : 0x247A94 - 0x247B7C
; =========================================================

247A94:  PUSH            {R4-R7,LR}
247A96:  ADD             R7, SP, #0xC
247A98:  PUSH.W          {R8,R9,R11}
247A9C:  MOV             R8, R3
247A9E:  MOV             R6, R2
247AA0:  MOV             R5, R0
247AA2:  LDR.W           R9, [R7,#arg_0]
247AA6:  BLX             j_GetContextRef
247AAA:  MOV             R4, R0
247AAC:  CBZ             R4, loc_247B02
247AAE:  LDR.W           R0, [R4,#0x88]
247AB2:  MOV             R1, R5
247AB4:  ADDS            R0, #0x40 ; '@'
247AB6:  BLX             j_LookupUIntMapKey
247ABA:  CBZ             R0, loc_247B08
247ABC:  LDR             R0, =(TrapALError_ptr - 0x247AC4)
247ABE:  CMP             R6, #0
247AC0:  ADD             R0, PC; TrapALError_ptr
247AC2:  LDR             R0, [R0]; TrapALError
247AC4:  LDRB            R0, [R0]
247AC6:  IT NE
247AC8:  CMPNE.W         R8, #0
247ACC:  BEQ             loc_247B3C
247ACE:  CMP.W           R9, #0
247AD2:  BEQ             loc_247B3C
247AD4:  CMP             R0, #0
247AD6:  ITT NE
247AD8:  MOVNE           R0, #5; sig
247ADA:  BLXNE           raise
247ADE:  LDREX.W         R0, [R4,#0x50]
247AE2:  CMP             R0, #0
247AE4:  BNE             loc_247B66
247AE6:  ADD.W           R0, R4, #0x50 ; 'P'
247AEA:  MOVW            R1, #0xA002
247AEE:  DMB.W           ISH
247AF2:  STREX.W         R2, R1, [R0]
247AF6:  CBZ             R2, loc_247B6A
247AF8:  LDREX.W         R2, [R0]
247AFC:  CMP             R2, #0
247AFE:  BEQ             loc_247AF2
247B00:  B               loc_247B66
247B02:  POP.W           {R8,R9,R11}
247B06:  POP             {R4-R7,PC}
247B08:  LDR             R0, =(TrapALError_ptr - 0x247B0E)
247B0A:  ADD             R0, PC; TrapALError_ptr
247B0C:  LDR             R0, [R0]; TrapALError
247B0E:  LDRB            R0, [R0]
247B10:  CMP             R0, #0
247B12:  ITT NE
247B14:  MOVNE           R0, #5; sig
247B16:  BLXNE           raise
247B1A:  LDREX.W         R0, [R4,#0x50]
247B1E:  CBNZ            R0, loc_247B66
247B20:  ADD.W           R0, R4, #0x50 ; 'P'
247B24:  MOVW            R1, #0xA001
247B28:  DMB.W           ISH
247B2C:  STREX.W         R2, R1, [R0]
247B30:  CBZ             R2, loc_247B6A
247B32:  LDREX.W         R2, [R0]
247B36:  CMP             R2, #0
247B38:  BEQ             loc_247B2C
247B3A:  B               loc_247B66
247B3C:  CMP             R0, #0
247B3E:  ITT NE
247B40:  MOVNE           R0, #5; sig
247B42:  BLXNE           raise
247B46:  LDREX.W         R0, [R4,#0x50]
247B4A:  CBNZ            R0, loc_247B66
247B4C:  ADD.W           R0, R4, #0x50 ; 'P'
247B50:  MOVW            R1, #0xA003
247B54:  DMB.W           ISH
247B58:  STREX.W         R2, R1, [R0]
247B5C:  CBZ             R2, loc_247B6A
247B5E:  LDREX.W         R2, [R0]
247B62:  CMP             R2, #0
247B64:  BEQ             loc_247B58
247B66:  CLREX.W
247B6A:  DMB.W           ISH
247B6E:  MOV             R0, R4
247B70:  POP.W           {R8,R9,R11}
247B74:  POP.W           {R4-R7,LR}
247B78:  B.W             ALCcontext_DecRef
