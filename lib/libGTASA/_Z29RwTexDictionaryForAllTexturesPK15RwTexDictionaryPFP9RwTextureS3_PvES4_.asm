; =========================================================
; Game Engine Function: _Z29RwTexDictionaryForAllTexturesPK15RwTexDictionaryPFP9RwTextureS3_PvES4_
; Address            : 0x1DB734 - 0x1DB762
; =========================================================

1DB734:  PUSH            {R4-R7,LR}
1DB736:  ADD             R7, SP, #0xC
1DB738:  PUSH.W          {R8,R9,R11}
1DB73C:  MOV             R8, R0
1DB73E:  MOV             R9, R2
1DB740:  MOV             R5, R8
1DB742:  MOV             R6, R1
1DB744:  LDR.W           R0, [R5,#8]!
1DB748:  CMP             R0, R5
1DB74A:  BEQ             loc_1DB75A
1DB74C:  LDR.W           R4, [R0],#-8
1DB750:  MOV             R1, R9
1DB752:  BLX             R6
1DB754:  CMP             R0, #0
1DB756:  MOV             R0, R4
1DB758:  BNE             loc_1DB748
1DB75A:  MOV             R0, R8
1DB75C:  POP.W           {R8,R9,R11}
1DB760:  POP             {R4-R7,PC}
