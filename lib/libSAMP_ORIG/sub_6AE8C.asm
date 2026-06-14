; =========================================================
; Game Engine Function: sub_6AE8C
; Address            : 0x6AE8C - 0x6AEC0
; =========================================================

6AE8C:  LDRB            R1, [R0,#0x12]
6AE8E:  CMP             R1, #0
6AE90:  IT EQ
6AE92:  BXEQ            LR
6AE94:  VMOV.I8         Q8, #0x5A ; 'Z'
6AE98:  MOVS            R2, #0x11
6AE9A:  MOV             R3, R0
6AE9C:  EOR.W           R1, R1, #0x5A ; 'Z'
6AEA0:  VLD1.8          {D18-D19}, [R3],R2
6AEA4:  VEOR            Q8, Q9, Q8
6AEA8:  STRB            R1, [R0,#0x12]
6AEAA:  LDRB            R2, [R3]
6AEAC:  VST1.8          {D16-D17}, [R0]!
6AEB0:  EOR.W           R2, R2, #0x5A ; 'Z'
6AEB4:  LDRB            R1, [R0]
6AEB6:  STRB            R2, [R3]
6AEB8:  EOR.W           R1, R1, #0x5A ; 'Z'
6AEBC:  STRB            R1, [R0]
6AEBE:  BX              LR
