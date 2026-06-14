; =========================================================
; Game Engine Function: _Z31RwTexDictionaryFindNamedTextureP15RwTexDictionaryPKc
; Address            : 0x1DB9B0 - 0x1DBA0E
; =========================================================

1DB9B0:  PUSH            {R4,R5,R7,LR}
1DB9B2:  ADD             R7, SP, #8
1DB9B4:  LDR.W           R12, [R0,#8]!
1DB9B8:  CMP             R12, R0
1DB9BA:  BEQ             loc_1DBA04
1DB9BC:  ADD.W           LR, R12, #8
1DB9C0:  MOV             R2, R1
1DB9C2:  LDRB.W          R3, [LR]
1DB9C6:  LDRB            R4, [R2]
1DB9C8:  CMP             R3, #0
1DB9CA:  BEQ             loc_1DB9F6
1DB9CC:  CBZ             R4, loc_1DB9F8
1DB9CE:  SUB.W           R5, R4, #0x61 ; 'a'
1DB9D2:  ADDS            R2, #1
1DB9D4:  ADD.W           LR, LR, #1
1DB9D8:  UXTB            R5, R5
1DB9DA:  CMP             R5, #0x1A
1DB9DC:  SUB.W           R5, R3, #0x61 ; 'a'
1DB9E0:  IT CC
1DB9E2:  ADDCC           R4, #0xE0
1DB9E4:  UXTB            R4, R4
1DB9E6:  UXTB            R5, R5
1DB9E8:  CMP             R5, #0x1A
1DB9EA:  IT CC
1DB9EC:  ADDCC           R3, #0xE0
1DB9EE:  UXTB            R3, R3
1DB9F0:  CMP             R3, R4
1DB9F2:  BEQ             loc_1DB9C2
1DB9F4:  B               loc_1DB9F8
1DB9F6:  CBZ             R4, loc_1DBA08
1DB9F8:  LDR.W           R12, [R12]
1DB9FC:  CMP             R12, R0
1DB9FE:  BNE             loc_1DB9BC
1DBA00:  MOVS            R0, #0
1DBA02:  POP             {R4,R5,R7,PC}
1DBA04:  MOVS            R0, #0
1DBA06:  POP             {R4,R5,R7,PC}
1DBA08:  SUB.W           R0, R12, #8
1DBA0C:  POP             {R4,R5,R7,PC}
