; =========================================================
; Game Engine Function: sub_7C0AC
; Address            : 0x7C0AC - 0x7C0F6
; =========================================================

7C0AC:  LDRB.W          R1, [R0,#0x22]
7C0B0:  CMP             R1, #0
7C0B2:  IT EQ
7C0B4:  BXEQ            LR
7C0B6:  VMOV.I8         Q8, #0x5A ; 'Z'
7C0BA:  MOVS            R1, #0x22 ; '"'
7C0BC:  MOV             R2, R0
7C0BE:  VLD1.8          {D18-D19}, [R2],R1
7C0C2:  MOVS            R1, #0x11
7C0C4:  VEOR            Q9, Q9, Q8
7C0C8:  VST1.8          {D18-D19}, [R0]!
7C0CC:  MOV             R3, R0
7C0CE:  VLD1.8          {D18-D19}, [R3],R1
7C0D2:  VEOR            Q8, Q9, Q8
7C0D6:  LDRB            R1, [R2]
7C0D8:  LDRB.W          R12, [R3]
7C0DC:  VST1.8          {D16-D17}, [R0]!
7C0E0:  EOR.W           R1, R1, #0x5A ; 'Z'
7C0E4:  STRB            R1, [R2]
7C0E6:  EOR.W           R2, R12, #0x5A ; 'Z'
7C0EA:  LDRB            R1, [R0]
7C0EC:  STRB            R2, [R3]
7C0EE:  EOR.W           R1, R1, #0x5A ; 'Z'
7C0F2:  STRB            R1, [R0]
7C0F4:  BX              LR
