; =========================================================
; Game Engine Function: _Z16_rwResourcesOpenPvii
; Address            : 0x1E4FAC - 0x1E4FF4
; =========================================================

1E4FAC:  LDR             R2, =(RwEngineInstance_ptr - 0x1E4FB4)
1E4FAE:  LDR             R3, =(resourcesModule_ptr - 0x1E4FB6)
1E4FB0:  ADD             R2, PC; RwEngineInstance_ptr
1E4FB2:  ADD             R3, PC; resourcesModule_ptr
1E4FB4:  LDR             R2, [R2]; RwEngineInstance
1E4FB6:  LDR             R3, [R3]; resourcesModule
1E4FB8:  LDR             R2, [R2]
1E4FBA:  STR             R1, [R3]
1E4FBC:  LDR.W           R3, [R2,#0x14C]
1E4FC0:  STR             R3, [R2,R1]
1E4FC2:  ADDS            R2, R2, R1
1E4FC4:  ADD.W           R1, R2, #0x10
1E4FC8:  ADD.W           R3, R2, #0x18
1E4FCC:  STRD.W          R1, R1, [R2,#0x10]
1E4FD0:  STRD.W          R3, R3, [R2,#0x18]
1E4FD4:  STRD.W          R3, R1, [R2,#0x20]
1E4FD8:  MOV.W           R1, #0
1E4FDC:  STRD.W          R1, R1, [R2,#4]
1E4FE0:  BEQ             loc_1E4FF0
1E4FE2:  LDR             R1, =(resourcesModule_ptr - 0x1E4FE8)
1E4FE4:  ADD             R1, PC; resourcesModule_ptr
1E4FE6:  LDR             R1, [R1]; resourcesModule
1E4FE8:  LDR             R2, [R1,#(dword_6BD080 - 0x6BD07C)]
1E4FEA:  ADDS            R2, #1
1E4FEC:  STR             R2, [R1,#(dword_6BD080 - 0x6BD07C)]
1E4FEE:  MOV             R1, R0
1E4FF0:  MOV             R0, R1
1E4FF2:  BX              LR
