; =========================================================
; Game Engine Function: _ZN5CDateC2Ev
; Address            : 0x4D3A64 - 0x4D3A76
; =========================================================

4D3A64:  VMOV.I32        Q8, #0
4D3A68:  MOVS            R1, #0
4D3A6A:  MOV             R2, R0
4D3A6C:  STR             R1, [R0,#0x14]
4D3A6E:  VST1.32         {D16-D17}, [R2]!
4D3A72:  STR             R1, [R2]
4D3A74:  BX              LR
