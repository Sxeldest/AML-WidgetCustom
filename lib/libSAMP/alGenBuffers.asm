; =========================================================
; Game Engine Function: alGenBuffers
; Address            : 0x1CE39C - 0x1CE4B4
; =========================================================

1CE39C:  PUSH            {R4-R11,LR}
1CE3A0:  ADD             R11, SP, #0x1C
1CE3A4:  SUB             SP, SP, #4
1CE3A8:  MOV             R9, R1
1CE3AC:  MOV             R7, R0
1CE3B0:  BL              j_GetContextRef
1CE3B4:  MOV             R10, R0
1CE3B8:  CMP             R10, #0
1CE3BC:  BEQ             loc_1CE3F8
1CE3C0:  CMP             R7, #0
1CE3C4:  BLT             loc_1CE3DC
1CE3C8:  CMP             R9, #0
1CE3CC:  BNE             loc_1CE400
1CE3D0:  BIC             R0, R7, #0xC0000000
1CE3D4:  CMP             R0, #0
1CE3D8:  BEQ             loc_1CE400
1CE3DC:  MOV             R0, R10
1CE3E0:  MOVW            R1, #0xA003
1CE3E4:  BL              j_alSetError
1CE3E8:  MOV             R0, R10
1CE3EC:  SUB             SP, R11, #0x1C
1CE3F0:  POP             {R4-R11,LR}
1CE3F4:  B               j_ALCcontext_DecRef
1CE3F8:  SUB             SP, R11, #0x1C
1CE3FC:  POP             {R4-R11,PC}
1CE400:  CMP             R7, #1
1CE404:  BLT             loc_1CE3E8
1CE408:  LDR             R0, [R10,#0xFC]
1CE40C:  MOV             R6, #0
1CE410:  ADD             R8, R0, #0x3C ; '<'
1CE414:  MOV             R0, #1; nmemb
1CE418:  MOV             R1, #0x48 ; 'H'; size
1CE41C:  BL              calloc
1CE420:  MOV             R5, R0
1CE424:  CMP             R5, #0
1CE428:  BEQ             loc_1CE498
1CE42C:  ADD             R0, R5, #0x30 ; '0'
1CE430:  BL              j_RWLockInit
1CE434:  ADD             R0, R5, #0x44 ; 'D'
1CE438:  BL              j_NewThunkEntry
1CE43C:  LDR             R1, [R5,#0x44]
1CE440:  MOV             R4, R0
1CE444:  CMP             R4, #0
1CE448:  BNE             loc_1CE47C
1CE44C:  MOV             R0, R8
1CE450:  MOV             R2, R5
1CE454:  BL              j_InsertUIntMapEntry
1CE458:  LDR             R1, [R5,#0x44]
1CE45C:  MOV             R4, R0
1CE460:  CMP             R4, #0
1CE464:  BNE             loc_1CE47C
1CE468:  STR             R1, [R9,R6,LSL#2]
1CE46C:  ADD             R6, R6, #1
1CE470:  CMP             R6, R7
1CE474:  BLT             loc_1CE414
1CE478:  B               loc_1CE3E8
1CE47C:  MOV             R0, R1
1CE480:  BL              j_FreeThunkEntry
1CE484:  MOV             R0, R5; ptr
1CE488:  BL              free
1CE48C:  MOV             R0, R10
1CE490:  MOV             R1, R4
1CE494:  B               loc_1CE4A0
1CE498:  MOV             R0, R10
1CE49C:  MOVW            R1, #0xA005
1CE4A0:  BL              j_alSetError
1CE4A4:  MOV             R0, R6
1CE4A8:  MOV             R1, R9
1CE4AC:  BL              j_alDeleteBuffers
1CE4B0:  B               loc_1CE3E8
