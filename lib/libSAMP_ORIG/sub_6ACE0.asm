; =========================================================
; Game Engine Function: sub_6ACE0
; Address            : 0x6ACE0 - 0x6ACF2
; =========================================================

6ACE0:  VMOV.I32        Q8, #0
6ACE4:  MOVS            R1, #0xF
6ACE6:  MOV             R2, R0
6ACE8:  VST1.8          {D16-D17}, [R2],R1
6ACEC:  MOVS            R1, #0
6ACEE:  STR             R1, [R2]
6ACF0:  BX              LR
