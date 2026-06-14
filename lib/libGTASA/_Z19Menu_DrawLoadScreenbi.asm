; =========================================================
; Game Engine Function: _Z19Menu_DrawLoadScreenbi
; Address            : 0x2A9054 - 0x2A906C
; =========================================================

2A9054:  PUSH            {R7,LR}
2A9056:  MOV             R7, SP
2A9058:  EOR.W           R1, R0, #1; unsigned int
2A905C:  BLX             j__ZN14CLoadingScreen16DoPCScreenChangeEjj; CLoadingScreen::DoPCScreenChange(uint,uint)
2A9060:  LDR             R0, =(skipFrame_ptr - 0x2A9068)
2A9062:  MOVS            R1, #1
2A9064:  ADD             R0, PC; skipFrame_ptr
2A9066:  LDR             R0, [R0]; skipFrame
2A9068:  STR             R1, [R0]
2A906A:  POP             {R7,PC}
