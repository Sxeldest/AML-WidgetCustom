; =========================================================
; Game Engine Function: _Z19RpWorldSectorRenderP13RpWorldSector
; Address            : 0x21C7C4 - 0x21C7D2
; =========================================================

21C7C4:  LDR             R1, =(RwEngineInstance_ptr - 0x21C7CA)
21C7C6:  ADD             R1, PC; RwEngineInstance_ptr
21C7C8:  LDR             R1, [R1]; RwEngineInstance
21C7CA:  LDR             R1, [R1]
21C7CC:  LDR             R1, [R1,#4]
21C7CE:  LDR             R1, [R1,#0x68]
21C7D0:  BX              R1
