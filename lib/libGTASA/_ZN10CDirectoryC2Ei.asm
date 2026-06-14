; =========================================================
; Game Engine Function: _ZN10CDirectoryC2Ei
; Address            : 0x3EAB2E - 0x3EAB5C
; =========================================================

3EAB2E:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CDirectory::CDirectory(int)'
3EAB30:  ADD             R7, SP, #8
3EAB32:  MOV             R4, R0
3EAB34:  MOVS            R0, #0x20 ; ' '
3EAB36:  UMULL.W         R0, R2, R1, R0
3EAB3A:  MOVS            R3, #0
3EAB3C:  STRD.W          R1, R3, [R4,#4]
3EAB40:  CMP             R2, #0
3EAB42:  IT NE
3EAB44:  MOVNE           R2, #1
3EAB46:  CMP             R2, #0
3EAB48:  IT NE
3EAB4A:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
3EAB4E:  BLX             _Znaj; operator new[](uint)
3EAB52:  STR             R0, [R4]
3EAB54:  MOVS            R0, #1
3EAB56:  STRB            R0, [R4,#0xC]
3EAB58:  MOV             R0, R4
3EAB5A:  POP             {R4,R6,R7,PC}
