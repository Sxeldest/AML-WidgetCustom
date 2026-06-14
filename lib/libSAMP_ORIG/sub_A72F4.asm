; =========================================================
; Game Engine Function: sub_A72F4
; Address            : 0xA72F4 - 0xA74E8
; =========================================================

A72F4:  PUSH            {R4-R7,LR}
A72F6:  ADD             R7, SP, #0xC
A72F8:  PUSH.W          {R8-R11}
A72FC:  SUB             SP, SP, #4
A72FE:  VPUSH           {D8-D9}
A7302:  SUB             SP, SP, #0x40
A7304:  MOV             R11, R0
A7306:  LDR             R0, =(off_114D5C - 0xA730E)
A7308:  MOV             R6, R1
A730A:  ADD             R0, PC; off_114D5C
A730C:  LDR             R0, [R0]; dword_1ACF68
A730E:  LDR             R0, [R0]
A7310:  LDR             R1, =(__stack_chk_guard_ptr - 0xA7316)
A7312:  ADD             R1, PC; __stack_chk_guard_ptr
A7314:  LDR             R1, [R1]; __stack_chk_guard
A7316:  LDR             R1, [R1]
A7318:  STR             R1, [SP,#0x70+var_34]
A731A:  MOVW            R1, #0x19AC
A731E:  LDR             R5, [R0,R1]
A7320:  MOVS            R1, #1
A7322:  STRB.W          R1, [R5,#0x7C]
A7326:  LDRB.W          R1, [R5,#0x7F]
A732A:  CBZ             R1, loc_A7330
A732C:  MOVS            R6, #0
A732E:  B               loc_A74C4
A7330:  MOVW            R1, #0x1550
A7334:  ADD.W           R9, R0, R1
A7338:  MOV             R0, R11
A733A:  MOV             R10, R3
A733C:  STR             R2, [SP,#0x70+var_60]
A733E:  LDR             R4, [R7,#arg_0]
A7340:  BL              sub_97B74
A7344:  LDR             R1, =(aImage - 0xA734E); "#image" ...
A7346:  MOV             R0, R5
A7348:  MOVS            R2, #0
A734A:  ADD             R1, PC; "#image"
A734C:  BL              sub_8AAD4
A7350:  MOV             R8, R0
A7352:  BL              sub_97DAC
A7356:  CMP             R4, #0
A7358:  BMI             loc_A7368
A735A:  VMOV            S0, R4
A735E:  VCVT.F32.S32    S18, S0
A7362:  VMOV.F32        S16, S18
A7366:  B               loc_A7370
A7368:  VLDR            S18, [R9]
A736C:  VLDR            S16, [R9,#4]
A7370:  VLDR            S0, [R6]
A7374:  VADD.F32        S8, S16, S16
A7378:  VLDR            S2, [R6,#4]
A737C:  VADD.F32        S12, S18, S18
A7380:  VLDR            S4, [R5,#0xC8]
A7384:  ADD             R4, SP, #0x70+var_48
A7386:  VLDR            S6, [R5,#0xCC]
A738A:  MOVS            R6, #0
A738C:  VADD.F32        S14, S4, S0
A7390:  LDRD.W          R0, R1, [R5,#0xC8]
A7394:  VADD.F32        S10, S6, S2
A7398:  STRD.W          R0, R1, [SP,#0x70+var_48]
A739C:  VADD.F32        S6, S16, S6
A73A0:  MOV             R0, R4
A73A2:  VADD.F32        S4, S18, S4
A73A6:  MOVS            R1, #0
A73A8:  VADD.F32        S8, S8, S10
A73AC:  VADD.F32        S10, S12, S14
A73B0:  VSTR            S6, [SP,#0x70+var_54]
A73B4:  VADD.F32        S2, S6, S2
A73B8:  VSTR            S4, [SP,#0x70+var_58]
A73BC:  VADD.F32        S0, S4, S0
A73C0:  VSTR            S8, [SP,#0x70+var_3C]
A73C4:  VSTR            S10, [SP,#0x70+var_40]
A73C8:  VSTR            S2, [SP,#0x70+var_4C]
A73CC:  VSTR            S0, [SP,#0x70+var_50]
A73D0:  BL              sub_8B2C0
A73D4:  MOV             R0, R4
A73D6:  MOV             R1, R8
A73D8:  MOVS            R2, #0
A73DA:  BL              sub_8B314
A73DE:  CMP             R0, #0
A73E0:  BEQ             loc_A74C4
A73E2:  ADD             R0, SP, #0x70+var_58
A73E4:  SUB.W           R2, R7, #-var_59
A73E8:  ADD.W           R4, R0, #8
A73EC:  ADD             R0, SP, #0x70+var_48
A73EE:  SUB.W           R3, R7, #-var_5A
A73F2:  MOV             R1, R8
A73F4:  STR.W           R10, [SP,#0x70+var_64]
A73F8:  STR             R6, [SP,#0x70+var_70]
A73FA:  BL              sub_A634C
A73FE:  MOV             R6, R0
A7400:  LDRB.W          R0, [R7,#var_59]
A7404:  MOVS            R1, #0x16
A7406:  LDRB.W          R2, [R7,#var_5A]
A740A:  CMP             R0, #0
A740C:  IT EQ
A740E:  MOVEQ           R1, #0x15
A7410:  MOV             R0, R1
A7412:  IT NE
A7414:  MOVNE           R0, #0x17
A7416:  CMP             R2, #0
A7418:  IT EQ
A741A:  MOVEQ           R0, R1
A741C:  MOV.W           R1, #0x3F800000
A7420:  BL              sub_88C10
A7424:  MOV             R10, R0
A7426:  ADD             R0, SP, #0x70+var_48
A7428:  MOV             R1, R8
A742A:  MOVS            R2, #1
A742C:  MOV             R8, R4
A742E:  BL              sub_8A1F8
A7432:  VCMP.F32        S18, S16
A7436:  ADD             R3, SP, #0x70+var_48
A7438:  VMRS            APSR_nzcv, FPSCR
A743C:  IT MI
A743E:  VMOVMI.F32      S16, S18
A7442:  VLDR            S0, [R9,#8]
A7446:  MOVS            R4, #1
A7448:  VLDR            S2, =0.0
A744C:  VCMP.F32        S16, S0
A7450:  VMRS            APSR_nzcv, FPSCR
A7454:  VCMP.F32        S16, #0.0
A7458:  IT GT
A745A:  VMOVGT.F32      S16, S0
A745E:  VMRS            APSR_nzcv, FPSCR
A7462:  IT MI
A7464:  VMOVMI.F32      S16, S2
A7468:  LDM             R3, {R0-R3}; int
A746A:  STR.W           R10, [SP,#0x70+var_70]; int
A746E:  STR             R4, [SP,#0x70+var_6C]; int
A7470:  VSTR            S16, [SP,#0x70+var_68]
A7474:  BL              sub_89B34
A7478:  LDR             R0, [R7,#arg_4]
A747A:  VLDR            S0, [R0,#0xC]
A747E:  VCMP.F32        S0, #0.0
A7482:  VMRS            APSR_nzcv, FPSCR
A7486:  BLE             loc_A74A4
A7488:  LDR.W           R4, [R5,#0x27C]
A748C:  BL              sub_88D28
A7490:  MOV             R3, R0; int
A7492:  MOVS            R0, #0xF
A7494:  MOVS            R1, #0
A7496:  MOV             R2, R8; int
A7498:  STRD.W          R1, R0, [SP,#0x70+var_70]; float
A749C:  ADD             R1, SP, #0x70+var_58; int
A749E:  MOV             R0, R4; int
A74A0:  BL              sub_9D624
A74A4:  LDR             R0, [R7,#arg_8]
A74A6:  LDR.W           R4, [R5,#0x27C]
A74AA:  BL              sub_88D28
A74AE:  LDR             R1, [SP,#0x70+var_60]
A74B0:  ADD             R2, SP, #0x70+var_58
A74B2:  STR             R1, [SP,#0x70+var_70]
A74B4:  MOV             R3, R8
A74B6:  LDR             R1, [SP,#0x70+var_64]
A74B8:  STRD.W          R1, R0, [SP,#0x70+var_6C]
A74BC:  MOV             R0, R4
A74BE:  MOV             R1, R11
A74C0:  BL              sub_9DF08
A74C4:  LDR             R0, [SP,#0x70+var_34]
A74C6:  LDR             R1, =(__stack_chk_guard_ptr - 0xA74CC)
A74C8:  ADD             R1, PC; __stack_chk_guard_ptr
A74CA:  LDR             R1, [R1]; __stack_chk_guard
A74CC:  LDR             R1, [R1]
A74CE:  CMP             R1, R0
A74D0:  ITTTT EQ
A74D2:  MOVEQ           R0, R6
A74D4:  ADDEQ           SP, SP, #0x40 ; '@'
A74D6:  VPOPEQ          {D8-D9}
A74DA:  ADDEQ           SP, SP, #4
A74DC:  ITT EQ
A74DE:  POPEQ.W         {R8-R11}
A74E2:  POPEQ           {R4-R7,PC}
A74E4:  BLX             __stack_chk_fail
