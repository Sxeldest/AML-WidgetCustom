; =========================================================
; Game Engine Function: _Z23RsSetPreviousPresetViewP8RwCamera
; Address            : 0x4D4714 - 0x4D474A
; =========================================================

4D4714:  MOV             R2, R0
4D4716:  MOVS            R0, #0
4D4718:  CBZ             R2, locret_4D4748
4D471A:  LDR             R1, =(dword_9FC940 - 0x4D4720)
4D471C:  ADD             R1, PC; dword_9FC940
4D471E:  LDR             R3, [R1]
4D4720:  CMP             R3, #0
4D4722:  IT EQ
4D4724:  BXEQ            LR
4D4726:  PUSH            {R7,LR}
4D4728:  MOV             R7, SP
4D472A:  LDR             R0, =(dword_6B0350 - 0x4D4730)
4D472C:  ADD             R0, PC; dword_6B0350
4D472E:  LDR             R1, [R0]
4D4730:  SUBS            R1, #1
4D4732:  IT LT
4D4734:  SUBLT           R1, R3, #1
4D4736:  STR             R1, [R0]
4D4738:  MOV             R0, R2
4D473A:  BLX             j__Z15RsSetPresetViewP8RwCamerai; RsSetPresetView(RwCamera *,int)
4D473E:  CMP             R0, #0
4D4740:  IT NE
4D4742:  MOVNE           R0, #1
4D4744:  POP.W           {R7,LR}
4D4748:  BX              LR
