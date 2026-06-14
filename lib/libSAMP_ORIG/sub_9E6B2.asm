; =========================================================
; Game Engine Function: sub_9E6B2
; Address            : 0x9E6B2 - 0x9E6E2
; =========================================================

9E6B2:  MOVS            R1, #0
9E6B4:  MOVS            R2, #1
9E6B6:  VMOV.I32        Q8, #0
9E6BA:  STRD.W          R1, R2, [R0,#0xC]
9E6BE:  MOV.W           R2, #0xFFFFFFFF
9E6C2:  STRB            R1, [R0]
9E6C4:  STR             R2, [R0,#0x58]
9E6C6:  ADD.W           R2, R0, #0x14
9E6CA:  VST1.32         {D16-D17}, [R2]!
9E6CE:  VST1.32         {D16-D17}, [R2]!
9E6D2:  VST1.32         {D16-D17}, [R2]!
9E6D6:  VST1.32         {D16-D17}, [R2]!
9E6DA:  STRD.W          R1, R1, [R0,#4]
9E6DE:  STR             R1, [R2]
9E6E0:  BX              LR
