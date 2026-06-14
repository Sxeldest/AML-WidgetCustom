; =========================================================
; Game Engine Function: sub_6AE0E
; Address            : 0x6AE0E - 0x6AE28
; =========================================================

6AE0E:  VMOV.I32        Q8, #0
6AE12:  MOV             R1, R0
6AE14:  MOVS            R2, #9
6AE16:  VST1.8          {D16-D17}, [R1]!
6AE1A:  VST1.8          {D16-D17}, [R1]!
6AE1E:  VST1.8          {D16-D17}, [R1],R2
6AE22:  VST1.8          {D16-D17}, [R1]
6AE26:  BX              LR
