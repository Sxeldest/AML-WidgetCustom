; =========================================================
; Game Engine Function: alGetEffectfv
; Address            : 0x253AC4 - 0x253B44
; =========================================================

253AC4:  PUSH            {R4-R7,LR}
253AC6:  ADD             R7, SP, #0xC
253AC8:  PUSH.W          {R8}
253ACC:  MOV             R8, R2
253ACE:  MOV             R6, R1
253AD0:  MOV             R5, R0
253AD2:  BLX             j_GetContextRef
253AD6:  MOV             R4, R0
253AD8:  CBZ             R4, loc_253AF6
253ADA:  LDR.W           R0, [R4,#0x88]
253ADE:  MOV             R1, R5
253AE0:  ADDS            R0, #0x64 ; 'd'
253AE2:  BLX             j_LookupUIntMapKey
253AE6:  CBZ             R0, loc_253AFC
253AE8:  LDR.W           R5, [R0,#0xB0]
253AEC:  MOV             R1, R4
253AEE:  MOV             R2, R6
253AF0:  MOV             R3, R8
253AF2:  BLX             R5
253AF4:  B               loc_253B36
253AF6:  POP.W           {R8}
253AFA:  POP             {R4-R7,PC}
253AFC:  LDR             R0, =(TrapALError_ptr - 0x253B02)
253AFE:  ADD             R0, PC; TrapALError_ptr
253B00:  LDR             R0, [R0]; TrapALError
253B02:  LDRB            R0, [R0]
253B04:  CMP             R0, #0
253B06:  ITT NE
253B08:  MOVNE           R0, #5; sig
253B0A:  BLXNE           raise
253B0E:  LDREX.W         R0, [R4,#0x50]
253B12:  CBNZ            R0, loc_253B2E
253B14:  ADD.W           R0, R4, #0x50 ; 'P'
253B18:  MOVW            R1, #0xA001
253B1C:  DMB.W           ISH
253B20:  STREX.W         R2, R1, [R0]
253B24:  CBZ             R2, loc_253B32
253B26:  LDREX.W         R2, [R0]
253B2A:  CMP             R2, #0
253B2C:  BEQ             loc_253B20
253B2E:  CLREX.W
253B32:  DMB.W           ISH
253B36:  MOV             R0, R4
253B38:  POP.W           {R8}
253B3C:  POP.W           {R4-R7,LR}
253B40:  B.W             ALCcontext_DecRef
