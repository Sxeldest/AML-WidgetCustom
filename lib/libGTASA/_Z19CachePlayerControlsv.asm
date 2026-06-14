; =========================================================
; Game Engine Function: _Z19CachePlayerControlsv
; Address            : 0x2A8FB0 - 0x2A8FC6
; =========================================================

2A8FB0:  PUSH            {R7,LR}
2A8FB2:  MOV             R7, SP
2A8FB4:  MOVS            R0, #0; this
2A8FB6:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
2A8FBA:  LDR             R1, =(word_6E03BA - 0x2A8FC4)
2A8FBC:  LDRH.W          R0, [R0,#0x110]
2A8FC0:  ADD             R1, PC; word_6E03BA
2A8FC2:  STRH            R0, [R1]
2A8FC4:  POP             {R7,PC}
