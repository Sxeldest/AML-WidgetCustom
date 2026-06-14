; =========================================================
; Game Engine Function: sub_6AE46
; Address            : 0x6AE46 - 0x6AE8C
; =========================================================

6AE46:  LDRB            R1, [R0,#0x14]
6AE48:  CMP             R1, #0
6AE4A:  IT EQ
6AE4C:  BXEQ            LR
6AE4E:  MOVS            R2, #0x11
6AE50:  MOV             R3, R0
6AE52:  VMOV.I8         Q9, #0x5A ; 'Z'
6AE56:  VLD1.8          {D16-D17}, [R3],R2
6AE5A:  EOR.W           R1, R1, #0x5A ; 'Z'
6AE5E:  VEOR            Q8, Q8, Q9
6AE62:  LDRB            R2, [R0,#0x12]
6AE64:  LDRB.W          R12, [R0,#0x13]
6AE68:  STRB            R1, [R0,#0x14]
6AE6A:  EOR.W           R1, R2, #0x5A ; 'Z'
6AE6E:  STRB            R1, [R0,#0x12]
6AE70:  EOR.W           R2, R12, #0x5A ; 'Z'
6AE74:  STRB            R2, [R0,#0x13]
6AE76:  VST1.8          {D16-D17}, [R0]!
6AE7A:  LDRB            R1, [R3]
6AE7C:  LDRB            R2, [R0]
6AE7E:  EOR.W           R1, R1, #0x5A ; 'Z'
6AE82:  STRB            R1, [R3]
6AE84:  EOR.W           R1, R2, #0x5A ; 'Z'
6AE88:  STRB            R1, [R0]
6AE8A:  BX              LR
