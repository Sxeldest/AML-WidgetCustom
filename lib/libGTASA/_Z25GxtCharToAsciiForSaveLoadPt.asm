; =========================================================
; Game Engine Function: _Z25GxtCharToAsciiForSaveLoadPt
; Address            : 0x54D738 - 0x54D78A
; =========================================================

54D738:  PUSH            {R7,LR}
54D73A:  MOV             R7, SP
54D73C:  MOV.W           R12, #0
54D740:  CBZ             R0, loc_54D77A
54D742:  LDR.W           LR, =(unk_A01BC2 - 0x54D74C)
54D746:  MOVS            R2, #0
54D748:  ADD             LR, PC; unk_A01BC2
54D74A:  LDRH.W          R3, [R0,R2,LSL#1]
54D74E:  CBZ             R3, loc_54D77E
54D750:  CMP             R3, #0x2F ; '/'
54D752:  MOV             R1, R3
54D754:  IT EQ
54D756:  MOVEQ           R1, #0x20 ; ' '
54D758:  CMP             R3, #0x7E ; '~'
54D75A:  IT HI
54D75C:  MOVHI           R1, #0x20 ; ' '
54D75E:  CMP             R3, #0x2A ; '*'
54D760:  IT EQ
54D762:  MOVEQ           R1, #0x20 ; ' '
54D764:  CMP             R3, #0x3F ; '?'
54D766:  IT EQ
54D768:  MOVEQ           R1, #0x20 ; ' '
54D76A:  CMP             R2, #0xFF
54D76C:  STRB.W          R1, [LR,R2]
54D770:  ADD.W           R1, R2, #1
54D774:  MOV             R2, R1
54D776:  BLT             loc_54D74A
54D778:  B               loc_54D780
54D77A:  MOVS            R1, #0
54D77C:  B               loc_54D780
54D77E:  MOV             R1, R2
54D780:  LDR             R0, =(unk_A01BC2 - 0x54D786)
54D782:  ADD             R0, PC; unk_A01BC2
54D784:  STRB.W          R12, [R0,R1]
54D788:  POP             {R7,PC}
