; =========================================================
; Game Engine Function: _Z18_rpReadWorldRightsP8RwStreamiPvii
; Address            : 0x2125F4 - 0x212628
; =========================================================

2125F4:  PUSH            {R4,R5,R7,LR}
2125F6:  ADD             R7, SP, #8
2125F8:  MOV             R5, R1
2125FA:  LDR             R1, =(dword_6BD52C - 0x212604)
2125FC:  MOVS            R2, #4
2125FE:  MOV             R4, R0
212600:  ADD             R1, PC; dword_6BD52C
212602:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
212606:  CBZ             R0, loc_212622
212608:  CMP             R5, #8
21260A:  BNE             loc_21261E
21260C:  LDR             R1, =(dword_6BD530 - 0x212616)
21260E:  MOV             R0, R4
212610:  MOVS            R2, #4
212612:  ADD             R1, PC; dword_6BD530
212614:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
212618:  CMP             R0, #0
21261A:  IT EQ
21261C:  MOVEQ           R4, #0
21261E:  MOV             R0, R4
212620:  POP             {R4,R5,R7,PC}
212622:  MOVS            R4, #0
212624:  MOV             R0, R4
212626:  POP             {R4,R5,R7,PC}
