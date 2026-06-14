; =========================================================
; Game Engine Function: sub_6AE28
; Address            : 0x6AE28 - 0x6AE3E
; =========================================================

6AE28:  VMOV.I32        Q8, #0
6AE2C:  MOV             R1, R0
6AE2E:  MOVS            R2, #0xE
6AE30:  VST1.8          {D16-D17}, [R1]!
6AE34:  VST1.8          {D16-D17}, [R1],R2
6AE38:  VST1.8          {D16-D17}, [R1]
6AE3C:  BX              LR
