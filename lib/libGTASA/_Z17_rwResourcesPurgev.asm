; =========================================================
; Game Engine Function: _Z17_rwResourcesPurgev
; Address            : 0x1E51A0 - 0x1E522C
; =========================================================

1E51A0:  LDR             R0, =(resourcesModule_ptr - 0x1E51A8)
1E51A2:  LDR             R1, =(RwEngineInstance_ptr - 0x1E51AA)
1E51A4:  ADD             R0, PC; resourcesModule_ptr
1E51A6:  ADD             R1, PC; RwEngineInstance_ptr
1E51A8:  LDR             R0, [R0]; resourcesModule
1E51AA:  LDR             R1, [R1]; RwEngineInstance
1E51AC:  LDR             R2, [R0]
1E51AE:  LDR             R3, [R1]
1E51B0:  ADDS            R0, R3, R2
1E51B2:  LDRD.W          R1, R12, [R0,#0x20]
1E51B6:  LDR             R0, [R1]
1E51B8:  CMP             R0, R1
1E51BA:  BEQ             loc_1E51FE
1E51BC:  LDR.W           R2, [R12]
1E51C0:  CMP             R2, R12
1E51C2:  BEQ             loc_1E51D8
1E51C4:  LDR.W           R2, [R12,#4]
1E51C8:  STR             R0, [R2]
1E51CA:  STR             R2, [R0,#4]
1E51CC:  LDR             R0, [R1,#4]
1E51CE:  STR.W           R12, [R0]
1E51D2:  STR.W           R0, [R12,#4]
1E51D6:  B               loc_1E51EA
1E51D8:  STR.W           R0, [R12]
1E51DC:  STR.W           R12, [R0,#4]
1E51E0:  LDR             R0, [R1,#4]
1E51E2:  STR.W           R0, [R12,#4]
1E51E6:  STR.W           R12, [R0]
1E51EA:  LDR             R0, =(RwEngineInstance_ptr - 0x1E51F2)
1E51EC:  LDR             R2, =(resourcesModule_ptr - 0x1E51F8)
1E51EE:  ADD             R0, PC; RwEngineInstance_ptr
1E51F0:  STRD.W          R1, R1, [R1]
1E51F4:  ADD             R2, PC; resourcesModule_ptr
1E51F6:  LDR             R0, [R0]; RwEngineInstance
1E51F8:  LDR             R2, [R2]; resourcesModule
1E51FA:  LDR             R3, [R0]
1E51FC:  LDR             R2, [R2]
1E51FE:  PUSH            {R7,LR}
1E5200:  MOV             R7, SP
1E5202:  LDR             R0, =(resourcesModule_ptr - 0x1E520E)
1E5204:  ADD             R2, R3
1E5206:  LDR.W           LR, =(RwEngineInstance_ptr - 0x1E5212)
1E520A:  ADD             R0, PC; resourcesModule_ptr
1E520C:  STR             R1, [R2,#0x24]
1E520E:  ADD             LR, PC; RwEngineInstance_ptr
1E5210:  LDR             R0, [R0]; resourcesModule
1E5212:  LDR.W           R3, [LR]; RwEngineInstance
1E5216:  LDR             R1, [R0]
1E5218:  LDR             R2, [R3]
1E521A:  ADD             R1, R2
1E521C:  STR.W           R12, [R1,#0x20]
1E5220:  LDR             R0, [R0]
1E5222:  LDR             R1, [R3]
1E5224:  ADD             R0, R1
1E5226:  MOVS            R1, #0
1E5228:  STR             R1, [R0,#8]
1E522A:  POP             {R7,PC}
