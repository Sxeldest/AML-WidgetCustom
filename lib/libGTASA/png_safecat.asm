; =========================================================
; Game Engine Function: png_safecat
; Address            : 0x1F2438 - 0x1F2468
; =========================================================

1F2438:  CBZ             R0, loc_1F2464
1F243A:  CMP             R2, R1
1F243C:  BCS             loc_1F2464
1F243E:  CMP             R3, #0
1F2440:  ITT NE
1F2442:  SUBNE.W         R12, R1, #1
1F2446:  CMPNE           R12, R2
1F2448:  BLS             loc_1F2460
1F244A:  LDRB            R1, [R3]
1F244C:  CBZ             R1, loc_1F2460
1F244E:  ADDS            R3, #1
1F2450:  STRB            R1, [R0,R2]
1F2452:  ADDS            R2, #1
1F2454:  CMP             R2, R12
1F2456:  BCS             loc_1F2460
1F2458:  LDRB.W          R1, [R3],#1
1F245C:  CMP             R1, #0
1F245E:  BNE             loc_1F2450
1F2460:  MOVS            R1, #0
1F2462:  STRB            R1, [R0,R2]
1F2464:  MOV             R0, R2
1F2466:  BX              LR
