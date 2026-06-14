; =========================================================
; Game Engine Function: alGetError
; Address            : 0x2541A8 - 0x2541EE
; =========================================================

2541A8:  PUSH            {R4,R6,R7,LR}
2541AA:  ADD             R7, SP, #8
2541AC:  BLX             j_GetContextRef
2541B0:  CBZ             R0, loc_2541D4
2541B2:  ADD.W           R1, R0, #0x50 ; 'P'
2541B6:  MOVS            R2, #0
2541B8:  DMB.W           ISH
2541BC:  LDREX.W         R4, [R1]
2541C0:  STREX.W         R3, R2, [R1]
2541C4:  CMP             R3, #0
2541C6:  BNE             loc_2541BC
2541C8:  DMB.W           ISH
2541CC:  BLX             j_ALCcontext_DecRef
2541D0:  MOV             R0, R4
2541D2:  POP             {R4,R6,R7,PC}
2541D4:  LDR             R0, =(TrapALError_ptr - 0x2541DA)
2541D6:  ADD             R0, PC; TrapALError_ptr
2541D8:  LDR             R0, [R0]; TrapALError
2541DA:  LDRB            R0, [R0]
2541DC:  CMP             R0, #0
2541DE:  ITT NE
2541E0:  MOVNE           R0, #5; sig
2541E2:  BLXNE           raise
2541E6:  MOVW            R4, #0xA004
2541EA:  MOV             R0, R4
2541EC:  POP             {R4,R6,R7,PC}
