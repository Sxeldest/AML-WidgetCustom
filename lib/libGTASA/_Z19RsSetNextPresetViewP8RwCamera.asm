; =========================================================
; Game Engine Function: _Z19RsSetNextPresetViewP8RwCamera
; Address            : 0x4D46D4 - 0x4D470C
; =========================================================

4D46D4:  MOV             R2, R0
4D46D6:  MOVS            R0, #0
4D46D8:  CBZ             R2, locret_4D470A
4D46DA:  LDR             R1, =(dword_9FC940 - 0x4D46E0)
4D46DC:  ADD             R1, PC; dword_9FC940
4D46DE:  LDR             R3, [R1]
4D46E0:  CMP             R3, #0
4D46E2:  IT EQ
4D46E4:  BXEQ            LR
4D46E6:  PUSH            {R7,LR}
4D46E8:  MOV             R7, SP
4D46EA:  LDR             R0, =(dword_6B0350 - 0x4D46F0)
4D46EC:  ADD             R0, PC; dword_6B0350
4D46EE:  LDR             R1, [R0]
4D46F0:  ADDS            R1, #1
4D46F2:  CMP             R1, R3
4D46F4:  IT GE
4D46F6:  MOVGE           R1, #0
4D46F8:  STR             R1, [R0]
4D46FA:  MOV             R0, R2
4D46FC:  BLX             j__Z15RsSetPresetViewP8RwCamerai; RsSetPresetView(RwCamera *,int)
4D4700:  CMP             R0, #0
4D4702:  IT NE
4D4704:  MOVNE           R0, #1
4D4706:  POP.W           {R7,LR}
4D470A:  BX              LR
