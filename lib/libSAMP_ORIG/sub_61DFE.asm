; =========================================================
; Game Engine Function: sub_61DFE
; Address            : 0x61DFE - 0x61E52
; =========================================================

61DFE:  PUSH            {R7,LR}
61E00:  MOV             R7, SP
61E02:  LDRB            R1, [R0,#0x15]
61E04:  CMP             R1, #0
61E06:  IT EQ
61E08:  POPEQ           {R7,PC}
61E0A:  MOVS            R2, #0x11
61E0C:  MOV             R3, R0
61E0E:  VMOV.I8         Q9, #0x5A ; 'Z'
61E12:  VLD1.8          {D16-D17}, [R3],R2
61E16:  EOR.W           R1, R1, #0x5A ; 'Z'
61E1A:  LDRB            R2, [R0,#0x12]
61E1C:  VEOR            Q8, Q8, Q9
61E20:  LDRB.W          R12, [R0,#0x13]
61E24:  LDRB.W          LR, [R0,#0x14]
61E28:  STRB            R1, [R0,#0x15]
61E2A:  EOR.W           R1, R2, #0x5A ; 'Z'
61E2E:  STRB            R1, [R0,#0x12]
61E30:  EOR.W           R1, R12, #0x5A ; 'Z'
61E34:  STRB            R1, [R0,#0x13]
61E36:  EOR.W           R2, LR, #0x5A ; 'Z'
61E3A:  STRB            R2, [R0,#0x14]
61E3C:  VST1.8          {D16-D17}, [R0]!
61E40:  LDRB            R1, [R3]
61E42:  LDRB            R2, [R0]
61E44:  EOR.W           R1, R1, #0x5A ; 'Z'
61E48:  STRB            R1, [R3]
61E4A:  EOR.W           R1, R2, #0x5A ; 'Z'
61E4E:  STRB            R1, [R0]
61E50:  POP             {R7,PC}
