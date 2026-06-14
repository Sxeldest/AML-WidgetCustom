; =========================================================
; Game Engine Function: _Z19_rpReadAtomicRightsP8RwStreamiPvii
; Address            : 0x2138D8 - 0x21390C
; =========================================================

2138D8:  PUSH            {R4,R5,R7,LR}
2138DA:  ADD             R7, SP, #8
2138DC:  MOV             R5, R1
2138DE:  LDR             R1, =(dword_6BD540 - 0x2138E8)
2138E0:  MOVS            R2, #4
2138E2:  MOV             R4, R0
2138E4:  ADD             R1, PC; dword_6BD540
2138E6:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
2138EA:  CBZ             R0, loc_213906
2138EC:  CMP             R5, #8
2138EE:  BNE             loc_213902
2138F0:  LDR             R1, =(dword_6BD544 - 0x2138FA)
2138F2:  MOV             R0, R4
2138F4:  MOVS            R2, #4
2138F6:  ADD             R1, PC; dword_6BD544
2138F8:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
2138FC:  CMP             R0, #0
2138FE:  IT EQ
213900:  MOVEQ           R4, #0
213902:  MOV             R0, R4
213904:  POP             {R4,R5,R7,PC}
213906:  MOVS            R4, #0
213908:  MOV             R0, R4
21390A:  POP             {R4,R5,R7,PC}
