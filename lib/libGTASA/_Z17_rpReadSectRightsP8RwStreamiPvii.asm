; =========================================================
; Game Engine Function: _Z17_rpReadSectRightsP8RwStreamiPvii
; Address            : 0x212678 - 0x2126AC
; =========================================================

212678:  PUSH            {R4,R5,R7,LR}
21267A:  ADD             R7, SP, #8
21267C:  MOV             R5, R1
21267E:  LDR             R1, =(dword_6BD534 - 0x212688)
212680:  MOVS            R2, #4
212682:  MOV             R4, R0
212684:  ADD             R1, PC; dword_6BD534
212686:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
21268A:  CBZ             R0, loc_2126A6
21268C:  CMP             R5, #8
21268E:  BNE             loc_2126A2
212690:  LDR             R1, =(dword_6BD538 - 0x21269A)
212692:  MOV             R0, R4
212694:  MOVS            R2, #4
212696:  ADD             R1, PC; dword_6BD538
212698:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
21269C:  CMP             R0, #0
21269E:  IT EQ
2126A0:  MOVEQ           R4, #0
2126A2:  MOV             R0, R4
2126A4:  POP             {R4,R5,R7,PC}
2126A6:  MOVS            R4, #0
2126A8:  MOV             R0, R4
2126AA:  POP             {R4,R5,R7,PC}
