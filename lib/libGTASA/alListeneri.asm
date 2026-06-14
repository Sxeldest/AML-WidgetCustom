; =========================================================
; Game Engine Function: alListeneri
; Address            : 0x255668 - 0x2556BC
; =========================================================

255668:  PUSH            {R4,R6,R7,LR}
25566A:  ADD             R7, SP, #8
25566C:  BLX             j_GetContextRef
255670:  MOV             R4, R0
255672:  CMP             R4, #0
255674:  IT EQ
255676:  POPEQ           {R4,R6,R7,PC}
255678:  LDR             R0, =(TrapALError_ptr - 0x25567E)
25567A:  ADD             R0, PC; TrapALError_ptr
25567C:  LDR             R0, [R0]; TrapALError
25567E:  LDRB            R0, [R0]
255680:  CMP             R0, #0
255682:  ITT NE
255684:  MOVNE           R0, #5; sig
255686:  BLXNE           raise
25568A:  LDREX.W         R0, [R4,#0x50]
25568E:  CBNZ            R0, loc_2556AA
255690:  ADD.W           R0, R4, #0x50 ; 'P'
255694:  MOVW            R1, #0xA002
255698:  DMB.W           ISH
25569C:  STREX.W         R2, R1, [R0]
2556A0:  CBZ             R2, loc_2556AE
2556A2:  LDREX.W         R2, [R0]
2556A6:  CMP             R2, #0
2556A8:  BEQ             loc_25569C
2556AA:  CLREX.W
2556AE:  DMB.W           ISH
2556B2:  MOV             R0, R4
2556B4:  POP.W           {R4,R6,R7,LR}
2556B8:  B.W             ALCcontext_DecRef
