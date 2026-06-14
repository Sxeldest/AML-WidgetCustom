; =========================================================
; Game Engine Function: sub_AB3C0
; Address            : 0xAB3C0 - 0xAB706
; =========================================================

AB3C0:  PUSH            {R4-R7,LR}
AB3C2:  ADD             R7, SP, #0xC
AB3C4:  PUSH.W          {R8-R11}
AB3C8:  SUB             SP, SP, #4
AB3CA:  VPUSH           {D8}
AB3CE:  SUB             SP, SP, #0xC0
AB3D0:  MOV             R5, R0
AB3D2:  LDR             R0, =(off_114D5C - 0xAB3D8)
AB3D4:  ADD             R0, PC; off_114D5C
AB3D6:  LDR.W           R9, [R0]; dword_1ACF68
AB3DA:  LDR.W           R10, [R9]
AB3DE:  LDR             R0, =(__stack_chk_guard_ptr - 0xAB3E4)
AB3E0:  ADD             R0, PC; __stack_chk_guard_ptr
AB3E2:  LDR             R0, [R0]; __stack_chk_guard
AB3E4:  LDR             R0, [R0]
AB3E6:  STR             R0, [SP,#0xE8+var_2C]
AB3E8:  MOVW            R0, #0x19AC
AB3EC:  LDR.W           R6, [R10,R0]
AB3F0:  MOVS            R0, #1
AB3F2:  STRB.W          R0, [R6,#0x7C]
AB3F6:  LDRB.W          R0, [R6,#0x7F]
AB3FA:  CMP             R0, #0
AB3FC:  BNE             loc_AB4D6
AB3FE:  MOVW            R0, #0x1554
AB402:  STRD.W          R3, R2, [SP,#0xE8+var_BC]
AB406:  STR             R1, [SP,#0xE8+var_B4]
AB408:  ADD.W           R8, R10, R0
AB40C:  MOV             R0, R6
AB40E:  MOV             R1, R5
AB410:  MOVS            R2, #0
AB412:  BL              sub_8AAD4
AB416:  MOV             R11, R0
AB418:  BL              sub_97224
AB41C:  MOV             R4, R0
AB41E:  MOVS            R0, #0xBF800000
AB424:  MOV             R1, R5; int
AB426:  STR             R0, [SP,#0xE8+var_E8]; float
AB428:  ADD             R0, SP, #0xE8+var_74; int
AB42A:  MOVS            R2, #0; int
AB42C:  MOVS            R3, #1; int
AB42E:  BL              sub_899BC
AB432:  VLDR            S0, [R8]
AB436:  VLDR            S6, [SP,#0xE8+var_70]
AB43A:  VADD.F32        S4, S0, S0
AB43E:  VLDR            S8, [R6,#0xC8]
AB442:  VMOV            R1, S0
AB446:  VLDR            S10, [R6,#0xCC]
AB44A:  VLDR            S2, [SP,#0xE8+var_74]
AB44E:  LDRD.W          R0, R2, [R6,#0xC8]
AB452:  VCMP.F32        S2, #0.0
AB456:  STRD.W          R0, R2, [SP,#0xE8+var_88]
AB45A:  VMRS            APSR_nzcv, FPSCR
AB45E:  VADD.F32        S6, S4, S6
AB462:  VMOV            S4, R4
AB466:  ADD             R4, SP, #0xE8+var_98
AB468:  VADD.F32        S4, S4, S8
AB46C:  VLDR            S8, =0.0
AB470:  VADD.F32        S6, S6, S10
AB474:  VMOV.F32        S10, S8
AB478:  VSTR            S4, [SP,#0xE8+var_80]
AB47C:  VSTR            S6, [SP,#0xE8+var_7C]
AB480:  ITT GT
AB482:  VLDRGT          S10, [R8,#0x14]
AB486:  VADDGT.F32      S10, S2, S10
AB48A:  VADD.F32        S0, S10, S4
AB48E:  VADD.F32        S2, S6, S8
AB492:  STRD.W          R0, R2, [SP,#0xE8+var_98]
AB496:  MOV             R0, R4
AB498:  VSTR            S0, [SP,#0xE8+var_90]
AB49C:  VSTR            S2, [SP,#0xE8+var_8C]
AB4A0:  BL              sub_8B2C0
AB4A4:  ADD             R2, SP, #0xE8+var_88
AB4A6:  MOV             R0, R4
AB4A8:  MOV             R1, R11
AB4AA:  BL              sub_8B314
AB4AE:  CBZ             R0, loc_AB4D6
AB4B0:  LDR             R0, [R7,#s1]; s1
AB4B2:  STRD.W          R8, R5, [SP,#0xE8+var_C8]
AB4B6:  CBZ             R0, loc_AB4FC
AB4B8:  LDR             R4, [SP,#0xE8+var_B4]
AB4BA:  CMP             R4, #4
AB4BC:  BNE             loc_AB50C
AB4BE:  LDR             R1, =(aD - 0xAB4C6); "%d" ...
AB4C0:  MOV             R8, R0
AB4C2:  ADD             R1, PC; "%d"
AB4C4:  BLX             strcmp
AB4C8:  CMP             R0, #0
AB4CA:  BEQ.W           loc_AB5D0
AB4CE:  MOV             R0, R8
AB4D0:  BL              sub_A8554
AB4D4:  B               loc_AB50C
AB4D6:  MOVS            R4, #0
AB4D8:  LDR             R0, [SP,#0xE8+var_2C]
AB4DA:  LDR             R1, =(__stack_chk_guard_ptr - 0xAB4E0)
AB4DC:  ADD             R1, PC; __stack_chk_guard_ptr
AB4DE:  LDR             R1, [R1]; __stack_chk_guard
AB4E0:  LDR             R1, [R1]
AB4E2:  CMP             R1, R0
AB4E4:  ITTTT EQ
AB4E6:  MOVEQ           R0, R4
AB4E8:  ADDEQ           SP, SP, #0xC0
AB4EA:  VPOPEQ          {D8}
AB4EE:  ADDEQ           SP, SP, #4
AB4F0:  ITT EQ
AB4F2:  POPEQ.W         {R8-R11}
AB4F6:  POPEQ           {R4-R7,PC}
AB4F8:  BLX             __stack_chk_fail
AB4FC:  LDR             R0, =(unk_1115FC - 0xAB504)
AB4FE:  LDR             R4, [SP,#0xE8+var_B4]
AB500:  ADD             R0, PC; unk_1115FC
AB502:  ADD.W           R1, R4, R4,LSL#1
AB506:  ADD.W           R0, R0, R1,LSL#2
AB50A:  LDR             R0, [R0,#4]
AB50C:  STR             R0, [SP,#0xE8+var_C0]
AB50E:  ADD             R0, SP, #0xE8+var_88
AB510:  MOV             R1, R11
AB512:  BL              sub_8B914
AB516:  MOV             R8, R0
AB518:  LDR.W           R0, [R9]
AB51C:  MOVW            R1, #0x19D0
AB520:  LDR             R1, [R0,R1]
AB522:  CMP             R1, R11
AB524:  BNE             loc_AB532
AB526:  MOVW            R1, #0x2CA8
AB52A:  ADD             R0, R1
AB52C:  LDR             R0, [R0]
AB52E:  CMP             R0, R11
AB530:  BEQ             loc_AB5A6
AB532:  MOV             R0, R6
AB534:  MOV             R1, R11
AB536:  BL              sub_8BA6C
AB53A:  MOV             R9, R0
AB53C:  CMP.W           R8, #0
AB540:  BEQ             loc_AB54E
AB542:  LDRB.W          R4, [R10,#0x3D8]
AB546:  CMP             R4, #0
AB548:  IT NE
AB54A:  MOVNE           R4, #1
AB54C:  B               loc_AB550
AB54E:  MOVS            R4, #0
AB550:  LDR             R5, [SP,#0xE8+var_C8]
AB552:  ORRS.W          R0, R9, R4
AB556:  BNE             loc_AB568
AB558:  LDR.W           R0, [R5,#0x568]
AB55C:  CMP             R0, R11
AB55E:  ITT NE
AB560:  LDRNE.W         R0, [R5,#0x574]
AB564:  CMPNE           R0, R11
AB566:  BNE             loc_AB5BE
AB568:  MOV             R0, R11
AB56A:  MOV             R1, R6
AB56C:  BL              sub_8AF74
AB570:  MOV             R0, R11
AB572:  MOV             R1, R6
AB574:  BL              sub_8AFEC
AB578:  MOV             R0, R6
AB57A:  BL              sub_8C628
AB57E:  MOVS            R0, #0xC
AB580:  CMP.W           R9, #0
AB584:  STR.W           R0, [R5,#0x490]
AB588:  BNE             loc_AB59E
AB58A:  CMP             R4, #0
AB58C:  ITT NE
AB58E:  LDRBNE.W        R0, [R10,#0xF8]
AB592:  CMPNE           R0, #0
AB594:  BNE             loc_AB59E
AB596:  LDR.W           R0, [R5,#0x574]
AB59A:  CMP             R0, R11
AB59C:  BNE             loc_AB5BE
AB59E:  MOV             R0, R6
AB5A0:  BL              sub_8BB40
AB5A4:  LDR             R4, [SP,#0xE8+var_B4]
AB5A6:  LDR             R0, [SP,#0xE8+var_B8]
AB5A8:  MOV             R1, R11
AB5AA:  STR             R0, [SP,#0xE8+var_E8]
AB5AC:  MOV             R3, R4
AB5AE:  LDR             R0, [SP,#0xE8+var_C0]
AB5B0:  LDR             R2, [SP,#0xE8+s]
AB5B2:  STR             R0, [SP,#0xE8+var_E4]
AB5B4:  ADD             R0, SP, #0xE8+var_88
AB5B6:  BL              sub_A864C
AB5BA:  MOV             R4, R0
AB5BC:  B               loc_AB4D8
AB5BE:  LDR.W           R0, [R5,#0x47C]
AB5C2:  ADD             R1, SP, #0xE8+var_88
AB5C4:  VLDR            S16, [R7,#arg_8]
AB5C8:  CMP             R0, R11
AB5CA:  BNE             loc_AB5D6
AB5CC:  MOVS            R0, #9
AB5CE:  B               loc_AB5E2
AB5D0:  STR.W           R8, [SP,#0xE8+var_C0]
AB5D4:  B               loc_AB50E
AB5D6:  LDR.W           R2, [R5,#0x468]
AB5DA:  MOVS            R0, #7
AB5DC:  CMP             R2, R11
AB5DE:  IT EQ
AB5E0:  MOVEQ           R0, #8
AB5E2:  ADDS            R1, #8
AB5E4:  STR             R1, [SP,#0xE8+var_CC]
AB5E6:  MOV.W           R1, #0x3F800000
AB5EA:  BL              sub_88C10
AB5EE:  ADD.W           R8, SP, #0xE8+var_88
AB5F2:  MOV             R9, R0
AB5F4:  MOV             R1, R11
AB5F6:  MOVS            R2, #1
AB5F8:  MOV             R0, R8
AB5FA:  MOV.W           R10, #1
AB5FE:  BL              sub_8A1F8
AB602:  ADD             R3, SP, #0xE8+var_88
AB604:  LDR             R4, [R5,#4]
AB606:  STRD.W          R9, R10, [SP,#0xE8+var_E8]; int
AB60A:  LDM             R3, {R0-R3}; int
AB60C:  STR             R4, [SP,#0xE8+var_E0]; float
AB60E:  BL              sub_89B34
AB612:  ADR             R0, dword_AB710
AB614:  ADD.W           R10, SP, #0xE8+var_A8
AB618:  VLD1.64         {D16-D17}, [R0@128]
AB61C:  MOVS            R0, #0
AB61E:  MOV             R1, R11; int
AB620:  STRD.W          R0, R10, [SP,#0xE8+var_D8]; int
AB624:  LDR             R0, [SP,#0xE8+var_BC]
AB626:  LDRD.W          R5, R2, [SP,#0xE8+var_B8]; int
AB62A:  STR             R0, [SP,#0xE8+var_E8]; int
AB62C:  LDR             R0, [R7,#arg_0]
AB62E:  STR             R0, [SP,#0xE8+var_E4]; int
AB630:  MOV             R3, R5; int
AB632:  LDR             R0, [SP,#0xE8+var_C0]
AB634:  STR             R0, [SP,#0xE8+var_E0]; int
AB636:  MOV             R0, R8; int
AB638:  VST1.64         {D16-D17}, [R10]
AB63C:  VSTR            S16, [SP,#0xE8+var_DC]
AB640:  BL              sub_A87D4
AB644:  CMP             R0, #0
AB646:  MOV             R4, R0
AB648:  ITT NE
AB64A:  MOVNE           R0, R11
AB64C:  BLNE            sub_8B0DC
AB650:  VLDR            S0, [SP,#0xE8+var_A8]
AB654:  VLDR            S2, [SP,#0xE8+var_A0]
AB658:  VCMP.F32        S2, S0
AB65C:  VMRS            APSR_nzcv, FPSCR
AB660:  BLE             loc_AB696
AB662:  LDR             R5, [SP,#0xE8+var_C8]
AB664:  MOVS            R0, #0x13
AB666:  ADD.W           R8, R10, #8
AB66A:  LDR.W           R6, [R6,#0x27C]
AB66E:  LDR.W           R1, [R5,#0x47C]
AB672:  CMP             R1, R11
AB674:  MOV.W           R1, #0x3F800000
AB678:  IT EQ
AB67A:  MOVEQ           R0, #0x14
AB67C:  BL              sub_88C10
AB680:  MOV             R3, R0; int
AB682:  LDR             R0, [R5,#0x38]
AB684:  MOVS            R1, #0xF
AB686:  MOV             R2, R8; int
AB688:  STRD.W          R0, R1, [SP,#0xE8+var_E8]; float
AB68C:  ADD             R1, SP, #0xE8+var_A8; int
AB68E:  MOV             R0, R6; int
AB690:  LDR             R5, [SP,#0xE8+var_B8]
AB692:  BL              sub_9D624
AB696:  ADD             R6, SP, #0xE8+var_6C
AB698:  LDR             R2, [SP,#0xE8+var_B4]
AB69A:  LDR             R0, [SP,#0xE8+var_C0]
AB69C:  MOVS            R1, #0x40 ; '@'
AB69E:  STR             R0, [SP,#0xE8+var_E8]
AB6A0:  MOV             R0, R6
AB6A2:  MOV             R3, R5
AB6A4:  BL              sub_A819C
AB6A8:  MOV.W           R1, #0x3F000000
AB6AC:  ADD             R2, SP, #0xE8+var_B0
AB6AE:  STRD.W          R1, R1, [SP,#0xE8+var_B0]
AB6B2:  MOVS            R1, #0
AB6B4:  STRD.W          R1, R2, [SP,#0xE8+var_E8]; int
AB6B8:  ADDS            R3, R6, R0; int
AB6BA:  STR             R1, [SP,#0xE8+var_E0]; int
AB6BC:  ADD             R0, SP, #0xE8+var_88; int
AB6BE:  LDR             R1, [SP,#0xE8+var_CC]; int
AB6C0:  MOV             R2, R6; int
AB6C2:  BL              sub_89A94
AB6C6:  VLDR            S0, [SP,#0xE8+var_74]
AB6CA:  LDR             R2, [SP,#0xE8+s]; s
AB6CC:  VCMP.F32        S0, #0.0
AB6D0:  VMRS            APSR_nzcv, FPSCR
AB6D4:  BLE.W           loc_AB4D8
AB6D8:  LDR             R0, [SP,#0xE8+var_C8]
AB6DA:  MOVS            R3, #1
AB6DC:  VLDR            S0, [SP,#0xE8+var_84]
AB6E0:  VLDR            S2, [SP,#0xE8+var_80]
AB6E4:  VLDR            S4, [R0]
AB6E8:  VLDR            S6, [R0,#0x14]
AB6EC:  VADD.F32        S0, S0, S4
AB6F0:  STR             R3, [SP,#0xE8+var_E8]; int
AB6F2:  VADD.F32        S2, S2, S6
AB6F6:  MOVS            R3, #0; int
AB6F8:  VMOV            R1, S0; int
AB6FC:  VMOV            R0, S2; int
AB700:  BL              sub_89110
AB704:  B               loc_AB4D8
