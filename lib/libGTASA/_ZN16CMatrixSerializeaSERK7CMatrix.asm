; =========================================================
; Game Engine Function: _ZN16CMatrixSerializeaSERK7CMatrix
; Address            : 0x44EBEC - 0x44EC24
; =========================================================

44EBEC:  MOV             R2, R1
44EBEE:  VLD1.32         {D16-D17}, [R2]!
44EBF2:  VLD1.32         {D18-D19}, [R2]
44EBF6:  ADD.W           R2, R1, #0x20 ; ' '
44EBFA:  ADDS            R1, #0x30 ; '0'
44EBFC:  VLD1.32         {D22-D23}, [R1]
44EC00:  MOVS            R1, #0
44EC02:  VLD1.32         {D20-D21}, [R2]
44EC06:  STR             R1, [R0,#0x40]
44EC08:  ADD.W           R1, R0, #0x30 ; '0'
44EC0C:  VST1.32         {D22-D23}, [R1]
44EC10:  ADD.W           R1, R0, #0x20 ; ' '
44EC14:  VST1.32         {D20-D21}, [R1]
44EC18:  MOV             R1, R0
44EC1A:  VST1.32         {D16-D17}, [R1]!
44EC1E:  VST1.32         {D18-D19}, [R1]
44EC22:  BX              LR
