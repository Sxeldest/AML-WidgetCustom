; =========================================================
; Game Engine Function: alGetBufferfv
; Address            : 0x1D635C - 0x1D63E0
; =========================================================

1D635C:  PUSH            {R4-R6,R10,R11,LR}
1D6360:  ADD             R11, SP, #0x10
1D6364:  MOV             R5, R0
1D6368:  MOVW            R0, #0x200B
1D636C:  MOV             R6, R2
1D6370:  CMP             R1, R0
1D6374:  BNE             loc_1D638C
1D6378:  MOV             R0, R5
1D637C:  MOVW            R1, #0x200B
1D6380:  MOV             R2, R6
1D6384:  POP             {R4-R6,R10,R11,LR}
1D6388:  B               j_alGetBufferf
1D638C:  BL              j_GetContextRef
1D6390:  MOV             R4, R0
1D6394:  CMP             R4, #0
1D6398:  POPEQ           {R4-R6,R10,R11,PC}
1D639C:  CMP             R6, #0
1D63A0:  BEQ             loc_1D63C8
1D63A4:  LDR             R0, [R4,#0xFC]
1D63A8:  MOV             R1, R5
1D63AC:  ADD             R0, R0, #0x3C ; '<'
1D63B0:  BL              j_LookupUIntMapKey
1D63B4:  CMP             R0, #0
1D63B8:  MOV             R0, R4
1D63BC:  MOVWNE          R1, #0xA002
1D63C0:  MOVWEQ          R1, #0xA001
1D63C4:  B               loc_1D63D0
1D63C8:  MOV             R0, R4
1D63CC:  MOVW            R1, #0xA003
1D63D0:  BL              j_alSetError
1D63D4:  MOV             R0, R4
1D63D8:  POP             {R4-R6,R10,R11,LR}
1D63DC:  B               j_ALCcontext_DecRef
