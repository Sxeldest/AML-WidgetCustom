; =========================================================
; Game Engine Function: _ZN7CMatrixC2ERKS_
; Address            : 0x44EA8C - 0x44EAC6
; =========================================================

44EA8C:  MOVS            R2, #0
44EA8E:  ADD.W           R3, R1, #0x20 ; ' '
44EA92:  STRD.W          R2, R2, [R0,#0x40]
44EA96:  MOV             R2, R1
44EA98:  ADDS            R1, #0x30 ; '0'
44EA9A:  VLD1.32         {D16-D17}, [R2]!
44EA9E:  VLD1.32         {D20-D21}, [R1]
44EAA2:  ADD.W           R1, R0, #0x30 ; '0'
44EAA6:  VLD1.32         {D18-D19}, [R3]
44EAAA:  VLD1.32         {D22-D23}, [R2]
44EAAE:  VST1.32         {D20-D21}, [R1]
44EAB2:  ADD.W           R1, R0, #0x20 ; ' '
44EAB6:  VST1.32         {D18-D19}, [R1]
44EABA:  MOV             R1, R0
44EABC:  VST1.32         {D16-D17}, [R1]!
44EAC0:  VST1.32         {D22-D23}, [R1]
44EAC4:  BX              LR
