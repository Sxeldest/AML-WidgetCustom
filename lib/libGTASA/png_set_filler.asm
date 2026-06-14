; =========================================================
; Game Engine Function: png_set_filler
; Address            : 0x203274 - 0x2032D2
; =========================================================

203274:  CMP             R0, #0
203276:  IT EQ
203278:  BXEQ            LR
20327A:  LDRB.W          R3, [R0,#0x135]
20327E:  LSLS            R3, R3, #0x18
203280:  BMI             loc_203298
203282:  LDRB.W          R1, [R0,#0x20F]
203286:  CMP             R1, #2
203288:  BEQ             loc_20329E
20328A:  CBNZ            R1, loc_2032C2
20328C:  LDRB.W          R1, [R0,#0x210]
203290:  CMP             R1, #7
203292:  BLS             loc_2032CA
203294:  MOVS            R1, #2
203296:  B               loc_2032A0
203298:  STRH.W          R1, [R0,#0x218]
20329C:  B               loc_2032A4
20329E:  MOVS            R1, #4
2032A0:  STRB.W          R1, [R0,#0x214]
2032A4:  LDRD.W          R1, R3, [R0,#0x138]
2032A8:  CMP             R2, #1
2032AA:  ORR.W           R3, R3, #0x8000
2032AE:  STR.W           R3, [R0,#0x13C]
2032B2:  ITE NE
2032B4:  BICNE.W         R1, R1, #0x80
2032B8:  ORREQ.W         R1, R1, #0x80
2032BC:  STR.W           R1, [R0,#0x138]
2032C0:  BX              LR
2032C2:  LDR             R1, =(aPngSetFillerIn - 0x2032C8); "png_set_filler: inappropriate color typ"...
2032C4:  ADD             R1, PC; "png_set_filler: inappropriate color typ"...
2032C6:  B.W             j_j_png_app_error
2032CA:  LDR             R1, =(aPngSetFillerIs - 0x2032D0); "png_set_filler is invalid for low bit d"...
2032CC:  ADD             R1, PC; "png_set_filler is invalid for low bit d"...
2032CE:  B.W             j_j_png_app_error
