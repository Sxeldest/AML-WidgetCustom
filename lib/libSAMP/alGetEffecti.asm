; =========================================================
; Game Engine Function: alGetEffecti
; Address            : 0x1DB3E8 - 0x1DB46C
; =========================================================

1DB3E8:  PUSH            {R4-R7,R11,LR}
1DB3EC:  ADD             R11, SP, #0x10
1DB3F0:  MOV             R5, R2
1DB3F4:  MOV             R6, R1
1DB3F8:  MOV             R7, R0
1DB3FC:  BL              j_GetContextRef
1DB400:  MOV             R4, R0
1DB404:  CMP             R4, #0
1DB408:  POPEQ           {R4-R7,R11,PC}
1DB40C:  LDR             R0, [R4,#0xFC]
1DB410:  MOV             R1, R7
1DB414:  ADD             R0, R0, #0x60 ; '`'
1DB418:  BL              j_LookupUIntMapKey
1DB41C:  CMP             R0, #0
1DB420:  BEQ             loc_1DB43C
1DB424:  MOVW            R1, #0x8001
1DB428:  CMP             R6, R1
1DB42C:  BNE             loc_1DB44C
1DB430:  LDR             R0, [R0]
1DB434:  STR             R0, [R5]
1DB438:  B               loc_1DB460
1DB43C:  MOV             R0, R4
1DB440:  MOVW            R1, #0xA001
1DB444:  BL              j_alSetError
1DB448:  B               loc_1DB460
1DB44C:  LDR             R7, [R0,#0xA8]
1DB450:  MOV             R1, R4
1DB454:  MOV             R2, R6
1DB458:  MOV             R3, R5
1DB45C:  BLX             R7
1DB460:  MOV             R0, R4
1DB464:  POP             {R4-R7,R11,LR}
1DB468:  B               j_ALCcontext_DecRef
