; =========================================================
; Game Engine Function: _Z21RwRasterUnlockPaletteP8RwRaster
; Address            : 0x1DA82C - 0x1DA84A
; =========================================================

1DA82C:  PUSH            {R4,R6,R7,LR}
1DA82E:  ADD             R7, SP, #8
1DA830:  MOV             R4, R0
1DA832:  LDR             R0, =(RwEngineInstance_ptr - 0x1DA83C)
1DA834:  MOV             R1, R4
1DA836:  MOVS            R2, #0
1DA838:  ADD             R0, PC; RwEngineInstance_ptr
1DA83A:  LDR             R0, [R0]; RwEngineInstance
1DA83C:  LDR             R0, [R0]
1DA83E:  LDR.W           R3, [R0,#0xA8]
1DA842:  MOVS            R0, #0
1DA844:  BLX             R3
1DA846:  MOV             R0, R4
1DA848:  POP             {R4,R6,R7,PC}
