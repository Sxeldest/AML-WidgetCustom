; =========================================================
; Game Engine Function: _Z11_rwES2fseekPvli
; Address            : 0x1E2798 - 0x1E27C6
; =========================================================

1E2798:  PUSH            {R4,R5,R7,LR}
1E279A:  ADD             R7, SP, #8
1E279C:  MOV             R5, R1
1E279E:  MOV             R4, R0
1E27A0:  CMP             R2, #1
1E27A2:  BNE             loc_1E27AC
1E27A4:  MOV             R0, R4; void *
1E27A6:  BLX             j__Z18OS_FileGetPositionPv; OS_FileGetPosition(void *)
1E27AA:  B               loc_1E27AE
1E27AC:  MOVS            R0, #0
1E27AE:  ADDS            R1, R0, R5; offset
1E27B0:  MOV             R0, R4; this
1E27B2:  BLX             j__Z18OS_FileSetPositionPvi; OS_FileSetPosition(void *,int)
1E27B6:  LDR             R1, =(dword_6BD01C - 0x1E27BE)
1E27B8:  CMP             R0, #0
1E27BA:  ADD             R1, PC; dword_6BD01C
1E27BC:  STR             R0, [R1]
1E27BE:  IT NE
1E27C0:  MOVNE.W         R0, #0xFFFFFFFF
1E27C4:  POP             {R4,R5,R7,PC}
