; =========================================================
; Game Engine Function: _ZN15CAEStreamThread16GetTrackPlayTimeEv
; Address            : 0x3AA706 - 0x3AA71C
; =========================================================

3AA706:  LDRB            R1, [R0,#0x1D]
3AA708:  CBZ             R1, loc_3AA710
3AA70A:  MOV             R0, #0xFFFFFFF8
3AA70E:  BX              LR
3AA710:  LDR             R0, [R0,#0x10]
3AA712:  CMP             R0, #0
3AA714:  BEQ             loc_3AA70A
3AA716:  LDR             R1, [R0]
3AA718:  LDR             R1, [R1,#0x10]
3AA71A:  BX              R1
