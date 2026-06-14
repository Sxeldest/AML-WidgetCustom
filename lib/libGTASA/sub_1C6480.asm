; =========================================================
; Game Engine Function: sub_1C6480
; Address            : 0x1C6480 - 0x1C64B4
; =========================================================

1C6480:  PUSH            {R4,R6,R7,LR}
1C6482:  ADD             R7, SP, #8
1C6484:  MOV             R4, R0
1C6486:  LDR             R0, =(MatFXInfo_ptr - 0x1C648C)
1C6488:  ADD             R0, PC; MatFXInfo_ptr
1C648A:  LDR             R0, [R0]; MatFXInfo
1C648C:  LDR             R1, [R0,#(dword_6B7240 - 0x6B723C)]
1C648E:  SUBS            R1, #1
1C6490:  STR             R1, [R0,#(dword_6B7240 - 0x6B723C)]
1C6492:  IT EQ
1C6494:  BLXEQ           j__Z24_rpMatFXPipelinesDestroyv; _rpMatFXPipelinesDestroy(void)
1C6498:  LDR             R0, =(MatFXInfo_ptr - 0x1C649E)
1C649A:  ADD             R0, PC; MatFXInfo_ptr
1C649C:  LDR             R0, [R0]; MatFXInfo
1C649E:  LDR             R0, [R0,#(dword_6B7244 - 0x6B723C)]
1C64A0:  CBZ             R0, loc_1C64B0
1C64A2:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
1C64A6:  LDR             R0, =(MatFXInfo_ptr - 0x1C64AE)
1C64A8:  MOVS            R1, #0
1C64AA:  ADD             R0, PC; MatFXInfo_ptr
1C64AC:  LDR             R0, [R0]; MatFXInfo
1C64AE:  STR             R1, [R0,#(dword_6B7244 - 0x6B723C)]
1C64B0:  MOV             R0, R4
1C64B2:  POP             {R4,R6,R7,PC}
