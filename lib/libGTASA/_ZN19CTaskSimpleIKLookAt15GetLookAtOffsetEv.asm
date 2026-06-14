; =========================================================
; Game Engine Function: _ZN19CTaskSimpleIKLookAt15GetLookAtOffsetEv
; Address            : 0x4F04AC - 0x4F04BA
; =========================================================

4F04AC:  VLDR            D16, [R1,#0x30]
4F04B0:  LDR             R1, [R1,#0x38]
4F04B2:  STR             R1, [R0,#8]
4F04B4:  VSTR            D16, [R0]
4F04B8:  BX              LR
