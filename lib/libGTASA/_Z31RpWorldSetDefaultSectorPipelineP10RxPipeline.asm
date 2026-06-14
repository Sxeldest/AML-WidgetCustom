; =========================================================
; Game Engine Function: _Z31RpWorldSetDefaultSectorPipelineP10RxPipeline
; Address            : 0x21F704 - 0x21F722
; =========================================================

21F704:  LDR             R1, =(_rxPipelineGlobalsOffset_ptr - 0x21F70E)
21F706:  CMP             R0, #0
21F708:  LDR             R2, =(RwEngineInstance_ptr - 0x21F710)
21F70A:  ADD             R1, PC; _rxPipelineGlobalsOffset_ptr
21F70C:  ADD             R2, PC; RwEngineInstance_ptr
21F70E:  LDR             R1, [R1]; _rxPipelineGlobalsOffset
21F710:  LDR             R2, [R2]; RwEngineInstance
21F712:  LDR             R1, [R1]
21F714:  LDR             R2, [R2]
21F716:  ITT EQ
21F718:  ADDEQ           R0, R2, R1
21F71A:  LDREQ           R0, [R0,#0x58]
21F71C:  ADD             R1, R2
21F71E:  STR             R0, [R1,#0x40]
21F720:  BX              LR
