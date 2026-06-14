; =========================================================
; Game Engine Function: sub_6AC7C
; Address            : 0x6AC7C - 0x6AC92
; =========================================================

6AC7C:  VMOV.I32        Q8, #0
6AC80:  MOVS            R2, #0xD
6AC82:  MOV             R3, R0
6AC84:  MOVS            R1, #0
6AC86:  VST1.8          {D16-D17}, [R3],R2
6AC8A:  STR.W           R1, [R0,#0x11]
6AC8E:  STR             R1, [R3]
6AC90:  BX              LR
