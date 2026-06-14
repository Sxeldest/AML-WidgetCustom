; =========================================================
; Game Engine Function: sub_6ADF8
; Address            : 0x6ADF8 - 0x6AE0E
; =========================================================

6ADF8:  VMOV.I32        Q8, #0
6ADFC:  MOV             R1, R0
6ADFE:  MOVS            R2, #0xF
6AE00:  VST1.8          {D16-D17}, [R1]!
6AE04:  VST1.8          {D16-D17}, [R1],R2
6AE08:  VST1.8          {D16-D17}, [R1]
6AE0C:  BX              LR
