; =========================================================
; Game Engine Function: _ZN9CPathFind30TidyUpNodeSwitchesAfterMissionEv
; Address            : 0x31868A - 0x31869A
; =========================================================

31868A:  MOVW            R1, #0x35A8
31868E:  LDR             R2, [R0,R1]
318690:  CMP             R2, #0x36 ; '6'
318692:  IT GE
318694:  MOVGE           R2, #0x36 ; '6'
318696:  STR             R2, [R0,R1]
318698:  BX              LR
