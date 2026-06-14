; =========================================================
; Game Engine Function: _Z26RpAtomicSetDefaultPipelineP10RxPipeline
; Address            : 0x21F72C - 0x21F74A
; =========================================================

21F72C:  LDR             R1, =(_rxPipelineGlobalsOffset_ptr - 0x21F736)
21F72E:  CMP             R0, #0
21F730:  LDR             R2, =(RwEngineInstance_ptr - 0x21F738)
21F732:  ADD             R1, PC; _rxPipelineGlobalsOffset_ptr
21F734:  ADD             R2, PC; RwEngineInstance_ptr
21F736:  LDR             R1, [R1]; _rxPipelineGlobalsOffset
21F738:  LDR             R2, [R2]; RwEngineInstance
21F73A:  LDR             R1, [R1]
21F73C:  LDR             R2, [R2]
21F73E:  ITT EQ
21F740:  ADDEQ           R0, R2, R1
21F742:  LDREQ           R0, [R0,#0x54]
21F744:  ADD             R1, R2
21F746:  STR             R0, [R1,#0x3C]
21F748:  BX              LR
