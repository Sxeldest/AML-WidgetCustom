; =========================================================
; Game Engine Function: gzsetparams
; Address            : 0x20C44C - 0x20C4A8
; =========================================================

20C44C:  PUSH            {R4-R7,LR}
20C44E:  ADD             R7, SP, #0xC
20C450:  PUSH.W          {R8}
20C454:  MOV             R6, R0
20C456:  MOV             R4, R2
20C458:  MOV             R5, R1
20C45A:  CBZ             R6, loc_20C49E
20C45C:  LDRB.W          R0, [R6,#0x5C]
20C460:  CMP             R0, #0x77 ; 'w'
20C462:  BNE             loc_20C49E
20C464:  LDR             R0, [R6,#0x10]
20C466:  CBNZ            R0, loc_20C48C
20C468:  LDR             R3, [R6,#0x40]; s
20C46A:  MOVS            R1, #1; size
20C46C:  LDR             R0, [R6,#0x48]; ptr
20C46E:  MOV.W           R2, #0x4000; n
20C472:  STR             R0, [R6,#0xC]
20C474:  MOV.W           R8, #0x4000
20C478:  BLX             fwrite
20C47C:  CMP.W           R0, #0x4000
20C480:  ITT NE
20C482:  MOVNE.W         R0, #0xFFFFFFFF
20C486:  STRNE           R0, [R6,#0x38]
20C488:  STR.W           R8, [R6,#0x10]
20C48C:  MOV             R0, R6
20C48E:  MOV             R1, R5
20C490:  MOV             R2, R4
20C492:  POP.W           {R8}
20C496:  POP.W           {R4-R7,LR}
20C49A:  B.W             j_j_deflateParams
20C49E:  MOV             R0, #0xFFFFFFFE
20C4A2:  POP.W           {R8}
20C4A6:  POP             {R4-R7,PC}
