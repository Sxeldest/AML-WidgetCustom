; =========================================================
; Game Engine Function: _ZN7CMatrix14CopyOnlyMatrixERKS_
; Address            : 0x44EE24 - 0x44EE56
; =========================================================

44EE24:  MOV             R2, R1
44EE26:  ADD.W           R3, R1, #0x20 ; ' '
44EE2A:  ADDS            R1, #0x30 ; '0'
44EE2C:  VLD1.32         {D16-D17}, [R2]!
44EE30:  VLD1.32         {D22-D23}, [R1]
44EE34:  ADD.W           R1, R0, #0x30 ; '0'
44EE38:  VLD1.32         {D18-D19}, [R3]
44EE3C:  VLD1.32         {D20-D21}, [R2]
44EE40:  VST1.32         {D22-D23}, [R1]
44EE44:  ADD.W           R1, R0, #0x20 ; ' '
44EE48:  VST1.32         {D18-D19}, [R1]
44EE4C:  VST1.32         {D16-D17}, [R0]!
44EE50:  VST1.32         {D20-D21}, [R0]
44EE54:  BX              LR
