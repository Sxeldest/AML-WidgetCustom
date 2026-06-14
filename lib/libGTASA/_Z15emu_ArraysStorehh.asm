; =========================================================
; Game Engine Function: _Z15emu_ArraysStorehh
; Address            : 0x1BCEC0 - 0x1BCEDE
; =========================================================

1BCEC0:  PUSH            {R4,R5,R7,LR}
1BCEC2:  ADD             R7, SP, #8
1BCEC4:  MOV             R5, R0
1BCEC6:  MOVS            R0, #0xC0; unsigned int
1BCEC8:  MOV             R4, R1
1BCECA:  BLX             _Znwj; operator new(uint)
1BCECE:  LDR             R1, =(staticState_ptr - 0x1BCED8)
1BCED0:  MOV             R2, R5; unsigned __int8
1BCED2:  MOV             R3, R4; unsigned __int8
1BCED4:  ADD             R1, PC; staticState_ptr
1BCED6:  LDR             R1, [R1]; staticState ; ArrayState *
1BCED8:  POP.W           {R4,R5,R7,LR}
1BCEDC:  B               _ZN10ArrayStateC2ERKS_hh; ArrayState::ArrayState(ArrayState const&,uchar,uchar)
