; =========================================================
; Game Engine Function: _Z14_rwCameraClosePvii
; Address            : 0x1D59B0 - 0x1D59EC
; =========================================================

1D59B0:  PUSH            {R4,R6,R7,LR}
1D59B2:  ADD             R7, SP, #8
1D59B4:  MOV             R4, R0
1D59B6:  LDR             R0, =(RwEngineInstance_ptr - 0x1D59BE)
1D59B8:  LDR             R1, =(dword_6BCD28 - 0x1D59C0)
1D59BA:  ADD             R0, PC; RwEngineInstance_ptr
1D59BC:  ADD             R1, PC; dword_6BCD28
1D59BE:  LDR             R0, [R0]; RwEngineInstance
1D59C0:  LDR             R1, [R1]
1D59C2:  LDR             R0, [R0]
1D59C4:  LDR             R0, [R0,R1]
1D59C6:  CBZ             R0, loc_1D59DE
1D59C8:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
1D59CC:  LDR             R0, =(RwEngineInstance_ptr - 0x1D59D6)
1D59CE:  MOVS            R2, #0
1D59D0:  LDR             R1, =(dword_6BCD28 - 0x1D59D8)
1D59D2:  ADD             R0, PC; RwEngineInstance_ptr
1D59D4:  ADD             R1, PC; dword_6BCD28
1D59D6:  LDR             R0, [R0]; RwEngineInstance
1D59D8:  LDR             R1, [R1]
1D59DA:  LDR             R0, [R0]
1D59DC:  STR             R2, [R0,R1]
1D59DE:  LDR             R0, =(dword_6BCD2C - 0x1D59E4)
1D59E0:  ADD             R0, PC; dword_6BCD2C
1D59E2:  LDR             R1, [R0]
1D59E4:  SUBS            R1, #1
1D59E6:  STR             R1, [R0]
1D59E8:  MOV             R0, R4
1D59EA:  POP             {R4,R6,R7,PC}
