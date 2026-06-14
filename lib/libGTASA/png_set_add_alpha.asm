; =========================================================
; Game Engine Function: png_set_add_alpha
; Address            : 0x2032DC - 0x203354
; =========================================================

2032DC:  PUSH            {R4,R6,R7,LR}
2032DE:  ADD             R7, SP, #8
2032E0:  MOV             R4, R0
2032E2:  CMP             R4, #0
2032E4:  IT EQ
2032E6:  POPEQ           {R4,R6,R7,PC}
2032E8:  LDRB.W          R0, [R4,#0x135]
2032EC:  LSLS            R0, R0, #0x18
2032EE:  BMI             loc_203306
2032F0:  LDRB.W          R0, [R4,#0x20F]
2032F4:  CMP             R0, #2
2032F6:  BEQ             loc_20330C
2032F8:  CBNZ            R0, loc_203330
2032FA:  LDRB.W          R0, [R4,#0x210]
2032FE:  CMP             R0, #7
203300:  BLS             loc_203336
203302:  MOVS            R0, #2
203304:  B               loc_20330E
203306:  STRH.W          R1, [R4,#0x218]
20330A:  B               loc_203312
20330C:  MOVS            R0, #4
20330E:  STRB.W          R0, [R4,#0x214]
203312:  LDRD.W          R0, R1, [R4,#0x138]
203316:  CMP             R2, #1
203318:  ORR.W           R1, R1, #0x8000
20331C:  STR.W           R1, [R4,#0x13C]
203320:  ITE NE
203322:  BICNE.W         R0, R0, #0x80
203326:  ORREQ.W         R0, R0, #0x80
20332A:  STR.W           R0, [R4,#0x138]
20332E:  B               loc_203340
203330:  LDR             R1, =(aPngSetFillerIn - 0x203336); "png_set_filler: inappropriate color typ"...
203332:  ADD             R1, PC; "png_set_filler: inappropriate color typ"...
203334:  B               loc_20333A
203336:  LDR             R1, =(aPngSetFillerIs - 0x20333C); "png_set_filler is invalid for low bit d"...
203338:  ADD             R1, PC; "png_set_filler is invalid for low bit d"...
20333A:  MOV             R0, R4
20333C:  BLX             j_png_app_error
203340:  LDR.W           R0, [R4,#0x13C]
203344:  TST.W           R0, #0x8000
203348:  ITT NE
20334A:  ORRNE.W         R0, R0, #0x1000000
20334E:  STRNE.W         R0, [R4,#0x13C]
203352:  POP             {R4,R6,R7,PC}
