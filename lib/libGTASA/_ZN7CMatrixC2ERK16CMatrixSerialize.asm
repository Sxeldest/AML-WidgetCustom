; =========================================================
; Game Engine Function: _ZN7CMatrixC2ERK16CMatrixSerialize
; Address            : 0x44EB3C - 0x44EB76
; =========================================================

44EB3C:  MOVS            R2, #0
44EB3E:  ADD.W           R3, R1, #0x20 ; ' '
44EB42:  STRD.W          R2, R2, [R0,#0x40]
44EB46:  MOV             R2, R1
44EB48:  ADDS            R1, #0x30 ; '0'
44EB4A:  VLD1.32         {D16-D17}, [R2]!
44EB4E:  VLD1.32         {D20-D21}, [R1]
44EB52:  ADD.W           R1, R0, #0x30 ; '0'
44EB56:  VLD1.32         {D18-D19}, [R3]
44EB5A:  VLD1.32         {D22-D23}, [R2]
44EB5E:  VST1.32         {D20-D21}, [R1]
44EB62:  ADD.W           R1, R0, #0x20 ; ' '
44EB66:  VST1.32         {D18-D19}, [R1]
44EB6A:  MOV             R1, R0
44EB6C:  VST1.32         {D16-D17}, [R1]!
44EB70:  VST1.32         {D22-D23}, [R1]
44EB74:  BX              LR
