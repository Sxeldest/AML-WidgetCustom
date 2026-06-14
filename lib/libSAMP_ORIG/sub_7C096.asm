; =========================================================
; Game Engine Function: sub_7C096
; Address            : 0x7C096 - 0x7C0AC
; =========================================================

7C096:  VMOV.I32        Q8, #0
7C09A:  MOV             R1, R0
7C09C:  MOVS            R2, #0xF
7C09E:  VST1.8          {D16-D17}, [R1]!
7C0A2:  VST1.8          {D16-D17}, [R1],R2
7C0A6:  MOVS            R2, #0
7C0A8:  STR             R2, [R1]
7C0AA:  BX              LR
