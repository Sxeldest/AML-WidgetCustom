; =========================================================
; Game Engine Function: alIsSource
; Address            : 0x1CB350 - 0x1CB3A0
; =========================================================

1CB350:  PUSH            {R4,R5,R11,LR}
1CB354:  ADD             R11, SP, #8
1CB358:  MOV             R4, R0
1CB35C:  BL              j_GetContextRef
1CB360:  MOV             R5, R0
1CB364:  CMP             R5, #0
1CB368:  BEQ             loc_1CB394
1CB36C:  ADD             R0, R5, #0x7C ; '|'
1CB370:  MOV             R1, R4
1CB374:  BL              j_LookupUIntMapKey
1CB378:  MOV             R4, R0
1CB37C:  MOV             R0, R5
1CB380:  BL              j_ALCcontext_DecRef
1CB384:  CMP             R4, #0
1CB388:  MOVWNE          R4, #1
1CB38C:  MOV             R0, R4
1CB390:  POP             {R4,R5,R11,PC}
1CB394:  MOV             R4, #0
1CB398:  MOV             R0, R4
1CB39C:  POP             {R4,R5,R11,PC}
