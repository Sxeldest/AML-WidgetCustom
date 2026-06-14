; =========================================================
; Game Engine Function: _ZN4llmo3mem3lib4loadEPKc
; Address            : 0x1E2B50 - 0x1E2B5C
; =========================================================

1E2B50:  PUSH            {R7,LR}
1E2B52:  MOV             R7, SP
1E2B54:  MOVS            R1, #0; mode
1E2B56:  BLX             dlopen
1E2B5A:  POP             {R7,PC}
