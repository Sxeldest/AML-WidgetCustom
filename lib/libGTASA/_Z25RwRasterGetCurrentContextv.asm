; =========================================================
; Game Engine Function: _Z25RwRasterGetCurrentContextv
; Address            : 0x1DA6EC - 0x1DA704
; =========================================================

1DA6EC:  LDR             R0, =(RwEngineInstance_ptr - 0x1DA6F4)
1DA6EE:  LDR             R1, =(dword_6BCF30 - 0x1DA6F6)
1DA6F0:  ADD             R0, PC; RwEngineInstance_ptr
1DA6F2:  ADD             R1, PC; dword_6BCF30
1DA6F4:  LDR             R0, [R0]; RwEngineInstance
1DA6F6:  LDR             R1, [R1]
1DA6F8:  LDR             R0, [R0]
1DA6FA:  ADD             R0, R1
1DA6FC:  LDR             R1, [R0,#0x28]
1DA6FE:  LDR.W           R0, [R0,R1,LSL#2]
1DA702:  BX              LR
