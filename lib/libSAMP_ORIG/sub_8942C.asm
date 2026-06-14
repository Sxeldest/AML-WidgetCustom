; =========================================================
; Game Engine Function: sub_8942C
; Address            : 0x8942C - 0x895BE
; =========================================================

8942C:  PUSH            {R4-R7,LR}
8942E:  ADD             R7, SP, #0xC
89430:  PUSH.W          {R8-R10}
89434:  SUB             SP, SP, #0x20
89436:  LDR             R6, =(dword_1ACF68 - 0x89442)
89438:  MOV             R10, R2
8943A:  LDR             R2, =(__stack_chk_guard_ptr - 0x89444)
8943C:  MOV             R5, R3
8943E:  ADD             R6, PC; dword_1ACF68
89440:  ADD             R2, PC; __stack_chk_guard_ptr
89442:  LDR             R2, [R2]; __stack_chk_guard
89444:  LDR             R2, [R2]
89446:  STR             R2, [SP,#0x38+var_1C]
89448:  LDR             R4, [R6]
8944A:  STR             R0, [SP,#0x38+var_24]
8944C:  MOVW            R0, #0x19AC
89450:  STR             R1, [SP,#0x38+var_20]
89452:  LDR.W           R9, [R4,R0]
89456:  CBZ             R3, loc_8945E
89458:  CMP             R5, R10
8945A:  BNE             loc_8946E
8945C:  B               loc_895A4
8945E:  MOV             R0, R10; s
89460:  BLX             strlen
89464:  ADD.W           R5, R10, R0
89468:  CMP             R5, R10
8946A:  BEQ.W           loc_895A4
8946E:  MOVW            R1, #0x2D20
89472:  ADD.W           R8, R4, R1
89476:  LDR             R1, [R6]
89478:  MOVW            R2, #0x1518
8947C:  VMOV.F32        S2, #1.0
89480:  MOVW            R0, #0x18C4
89484:  ADD             R1, R2
89486:  VLDR            S0, [R7,#arg_0]
8948A:  ADD             R0, R4
8948C:  MOVS            R3, #0
8948E:  VLDR            S4, [R1]
89492:  VLDR            S12, [R1,#0xB8]
89496:  VLDR            S8, [R1,#0xB0]
8949A:  VMUL.F32        S4, S12, S4
8949E:  VLDR            S6, [R1,#0xAC]
894A2:  VLDR            S10, [R1,#0xB4]
894A6:  VCMP.F32        S8, S2
894AA:  VMRS            APSR_nzcv, FPSCR
894AE:  VMOV.F32        S12, S8
894B2:  VCMP.F32        S6, S2
894B6:  IT GT
894B8:  VMOVGT.F32      S12, S2
894BC:  VMRS            APSR_nzcv, FPSCR
894C0:  VMOV.F32        S14, S6
894C4:  VCMP.F32        S10, S2
894C8:  IT GT
894CA:  VMOVGT.F32      S14, S2
894CE:  VMRS            APSR_nzcv, FPSCR
894D2:  VMOV.F32        S1, S10
894D6:  VCMP.F32        S4, S2
894DA:  IT GT
894DC:  VMOVGT.F32      S1, S2
894E0:  VMRS            APSR_nzcv, FPSCR
894E4:  VCMP.F32        S8, #0.0
894E8:  VMOV.F32        S8, #0.5
894EC:  VMOV.F32        S3, S4
894F0:  IT GT
894F2:  VMOVGT.F32      S3, S2
894F6:  VMRS            APSR_nzcv, FPSCR
894FA:  VCMP.F32        S6, #0.0
894FE:  VLDR            S2, =0.0
89502:  IT MI
89504:  VMOVMI.F32      S12, S2
89508:  VMRS            APSR_nzcv, FPSCR
8950C:  VCMP.F32        S10, #0.0
89510:  IT MI
89512:  VMOVMI.F32      S14, S2
89516:  VMRS            APSR_nzcv, FPSCR
8951A:  VCMP.F32        S4, #0.0
8951E:  VMOV.F32        S4, S8
89522:  IT MI
89524:  VMOVMI.F32      S1, S2
89528:  VMOV.F32        S6, S8
8952C:  VMRS            APSR_nzcv, FPSCR
89530:  IT MI
89532:  VMOVMI.F32      S3, S2
89536:  VLDR            S2, =255.0
8953A:  VMOV.F32        S10, S8
8953E:  LDRD.W          R1, R2, [R0]; int
89542:  VMLA.F32        S8, S3, S2
89546:  LDR.W           R0, [R9,#0x27C]; int
8954A:  VSTR            S0, [SP,#0x38+var_2C]
8954E:  VMLA.F32        S4, S12, S2
89552:  STR             R3, [SP,#0x38+var_28]; int
89554:  VMLA.F32        S6, S14, S2
89558:  STR             R5, [SP,#0x38+var_30]; int
8955A:  VMLA.F32        S10, S1, S2
8955E:  VCVT.S32.F32    S2, S4
89562:  VCVT.S32.F32    S0, S6
89566:  VCVT.S32.F32    S4, S10
8956A:  VMOV            R3, S2
8956E:  VMOV            R6, S0
89572:  VCVT.S32.F32    S0, S8
89576:  ORR.W           R3, R6, R3,LSL#8
8957A:  VMOV            R6, S4
8957E:  ORR.W           R3, R3, R6,LSL#16
89582:  VMOV            R6, S0
89586:  ORR.W           R3, R3, R6,LSL#24
8958A:  STRD.W          R3, R10, [SP,#0x38+var_38]; int
8958E:  ADD             R3, SP, #0x38+var_24; int
89590:  BL              sub_9D89C
89594:  LDRB.W          R0, [R8]
89598:  CBZ             R0, loc_895A4
8959A:  ADD             R0, SP, #0x38+var_24; int
8959C:  MOV             R1, R10; s
8959E:  MOV             R2, R5
895A0:  BL              sub_892E0
895A4:  LDR             R0, [SP,#0x38+var_1C]
895A6:  LDR             R1, =(__stack_chk_guard_ptr - 0x895AC)
895A8:  ADD             R1, PC; __stack_chk_guard_ptr
895AA:  LDR             R1, [R1]; __stack_chk_guard
895AC:  LDR             R1, [R1]
895AE:  CMP             R1, R0
895B0:  ITTT EQ
895B2:  ADDEQ           SP, SP, #0x20 ; ' '
895B4:  POPEQ.W         {R8-R10}
895B8:  POPEQ           {R4-R7,PC}
895BA:  BLX             __stack_chk_fail
