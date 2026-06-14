; =========================================================
; Game Engine Function: sub_60BF6
; Address            : 0x60BF6 - 0x60C32
; =========================================================

60BF6:  LDRB            R1, [R0,#0x13]
60BF8:  CMP             R1, #0
60BFA:  IT EQ
60BFC:  BXEQ            LR
60BFE:  MOVS            R2, #0x11
60C00:  MOV             R3, R0
60C02:  VMOV.I8         Q9, #0x5A ; 'Z'
60C06:  VLD1.8          {D16-D17}, [R3],R2
60C0A:  EOR.W           R1, R1, #0x5A ; 'Z'
60C0E:  VEOR            Q8, Q8, Q9
60C12:  LDRB            R2, [R0,#0x12]
60C14:  STRB            R1, [R0,#0x13]
60C16:  EOR.W           R2, R2, #0x5A ; 'Z'
60C1A:  STRB            R2, [R0,#0x12]
60C1C:  VST1.8          {D16-D17}, [R0]!
60C20:  LDRB            R1, [R3]
60C22:  LDRB            R2, [R0]
60C24:  EOR.W           R1, R1, #0x5A ; 'Z'
60C28:  STRB            R1, [R3]
60C2A:  EOR.W           R1, R2, #0x5A ; 'Z'
60C2E:  STRB            R1, [R0]
60C30:  BX              LR
