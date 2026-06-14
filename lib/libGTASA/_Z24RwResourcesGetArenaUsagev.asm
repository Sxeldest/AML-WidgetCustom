; =========================================================
; Game Engine Function: _Z24RwResourcesGetArenaUsagev
; Address            : 0x1E5580 - 0x1E55AC
; =========================================================

1E5580:  LDR             R0, =(resourcesModule_ptr - 0x1E5588)
1E5582:  LDR             R1, =(RwEngineInstance_ptr - 0x1E558A)
1E5584:  ADD             R0, PC; resourcesModule_ptr
1E5586:  ADD             R1, PC; RwEngineInstance_ptr
1E5588:  LDR             R0, [R0]; resourcesModule
1E558A:  LDR             R1, [R1]; RwEngineInstance
1E558C:  LDR             R0, [R0]
1E558E:  LDR             R1, [R1]
1E5590:  ADD             R1, R0
1E5592:  LDR             R0, [R1,#8]
1E5594:  LDR             R1, [R1,#0x24]
1E5596:  LDR             R2, [R1]
1E5598:  CMP             R2, R1
1E559A:  IT EQ
1E559C:  BXEQ            LR
1E559E:  LDR             R3, [R2]
1E55A0:  LDR             R2, [R2,#8]
1E55A2:  CMP             R3, R1
1E55A4:  ADD             R0, R2
1E55A6:  MOV             R2, R3
1E55A8:  BNE             loc_1E559E
1E55AA:  BX              LR
