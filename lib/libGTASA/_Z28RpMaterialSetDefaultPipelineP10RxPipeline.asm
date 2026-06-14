; =========================================================
; Game Engine Function: _Z28RpMaterialSetDefaultPipelineP10RxPipeline
; Address            : 0x21F754 - 0x21F772
; =========================================================

21F754:  LDR             R1, =(_rxPipelineGlobalsOffset_ptr - 0x21F75E)
21F756:  CMP             R0, #0
21F758:  LDR             R2, =(RwEngineInstance_ptr - 0x21F760)
21F75A:  ADD             R1, PC; _rxPipelineGlobalsOffset_ptr
21F75C:  ADD             R2, PC; RwEngineInstance_ptr
21F75E:  LDR             R1, [R1]; _rxPipelineGlobalsOffset
21F760:  LDR             R2, [R2]; RwEngineInstance
21F762:  LDR             R1, [R1]
21F764:  LDR             R2, [R2]
21F766:  ITT EQ
21F768:  ADDEQ           R0, R2, R1
21F76A:  LDREQ           R0, [R0,#0x5C]
21F76C:  ADD             R1, R2
21F76E:  STR             R0, [R1,#0x44]
21F770:  BX              LR
