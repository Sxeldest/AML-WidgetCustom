; =========================================================
; Game Engine Function: _ZN10CPlaceableC2Ev
; Address            : 0x4086BC - 0x4086D6
; =========================================================

4086BC:  LDR             R1, =(_ZTV10CPlaceable_ptr - 0x4086C8); Alternative name is 'CPlaceable::CPlaceable(void)'
4086BE:  VMOV.I32        Q8, #0
4086C2:  ADDS            R2, R0, #4
4086C4:  ADD             R1, PC; _ZTV10CPlaceable_ptr
4086C6:  VST1.32         {D16-D17}, [R2]
4086CA:  MOVS            R2, #0
4086CC:  LDR             R1, [R1]; `vtable for'CPlaceable ...
4086CE:  STR             R2, [R0,#0x14]
4086D0:  ADDS            R1, #8
4086D2:  STR             R1, [R0]
4086D4:  BX              LR
