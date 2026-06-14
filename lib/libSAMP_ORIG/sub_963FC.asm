; =========================================================
; Game Engine Function: sub_963FC
; Address            : 0x963FC - 0x965E2
; =========================================================

963FC:  PUSH            {R4-R7,LR}
963FE:  ADD             R7, SP, #0xC
96400:  PUSH.W          {R8,R9,R11}
96404:  SUB             SP, SP, #0x20
96406:  LDR             R4, =(dword_1ACF68 - 0x96410)
96408:  MOV             R8, R0
9640A:  MOV             R5, R1
9640C:  ADD             R4, PC; dword_1ACF68
9640E:  LDR.W           R9, [R4]
96412:  LDR             R0, =(__stack_chk_guard_ptr - 0x96418)
96414:  ADD             R0, PC; __stack_chk_guard_ptr
96416:  LDR             R0, [R0]; __stack_chk_guard
96418:  LDR             R0, [R0]
9641A:  STR             R0, [SP,#0x38+var_1C]
9641C:  MOVW            R0, #0x1A10
96420:  LDRB.W          R0, [R9,R0]
96424:  LSLS            R0, R0, #0x1B
96426:  BPL             loc_964FA
96428:  MOVW            R0, #0x1A44
9642C:  ADD             R0, R9
9642E:  VLDR            S6, [R0]
96432:  VLDR            S2, [R0,#4]
96436:  VCMP.F32        S6, #0.0
9643A:  VLDR            S4, [R0,#0xC]
9643E:  VMRS            APSR_nzcv, FPSCR
96442:  ITTT GE
96444:  VLDRGE          S8, [R0,#8]
96448:  VCMPGE.F32      S8, #0.0
9644C:  VMRSGE          APSR_nzcv, FPSCR
96450:  BGE             loc_96458
96452:  VLDR            S0, [R5,#0x1C]
96456:  B               loc_96478
96458:  VMOV            S0, R2
9645C:  VCMP.F32        S8, S0
96460:  VMRS            APSR_nzcv, FPSCR
96464:  VCMP.F32        S6, S0
96468:  IT MI
9646A:  VMOVMI.F32      S0, S8
9646E:  VMRS            APSR_nzcv, FPSCR
96472:  IT GT
96474:  VMOVGT.F32      S0, S6
96478:  VCMP.F32        S2, #0.0
9647C:  VMRS            APSR_nzcv, FPSCR
96480:  ITT GE
96482:  VCMPGE.F32      S4, #0.0
96486:  VMRSGE          APSR_nzcv, FPSCR
9648A:  BGE             loc_96492
9648C:  VLDR            S6, [R5,#0x20]
96490:  B               loc_964B2
96492:  VMOV            S6, R3
96496:  VCMP.F32        S4, S6
9649A:  VMRS            APSR_nzcv, FPSCR
9649E:  VCMP.F32        S2, S6
964A2:  IT MI
964A4:  VMOVMI.F32      S6, S4
964A8:  VMRS            APSR_nzcv, FPSCR
964AC:  IT GT
964AE:  VMOVGT.F32      S6, S2
964B2:  LDR             R1, [R0,#0x10]
964B4:  CBZ             R1, loc_964E2
964B6:  LDR             R0, [R0,#0x14]
964B8:  MOV             R12, R4
964BA:  LDRD.W          R2, R3, [R5,#0xC]
964BE:  ADD.W           LR, SP, #0x38+var_34
964C2:  LDRD.W          R4, R6, [R5,#0x1C]
964C6:  STR             R0, [SP,#0x38+var_38]
964C8:  MOV             R0, SP
964CA:  STM.W           LR, {R2-R4,R6}
964CE:  MOV             R4, R12
964D0:  VSTR            S6, [SP,#0x38+var_20]
964D4:  VSTR            S0, [SP,#0x38+var_24]
964D8:  BLX             R1
964DA:  VLDR            S0, [SP,#0x38+var_24]
964DE:  VLDR            S6, [SP,#0x38+var_20]
964E2:  VCVT.S32.F32    S2, S6
964E6:  VCVT.S32.F32    S0, S0
964EA:  VCVT.F32.S32    S2, S2
964EE:  VCVT.F32.S32    S0, S0
964F2:  VMOV            R3, S2
964F6:  VMOV            R2, S0
964FA:  LDR             R1, [R5,#8]
964FC:  MOVS            R0, #0x1000040
96502:  TST             R1, R0
96504:  BNE             loc_965C4
96506:  MOVW            R0, #0x1524
9650A:  VMOV            S4, R2
9650E:  ADD             R0, R9
96510:  VLDR            S2, [R0,#8]
96514:  VLDR            S0, [R0,#0xC]
96518:  VCMP.F32        S2, S4
9651C:  VMRS            APSR_nzcv, FPSCR
96520:  IT LS
96522:  VMOVLS.F32      S2, S4
96526:  VMOV            S4, R3
9652A:  VCMP.F32        S0, S4
9652E:  VMRS            APSR_nzcv, FPSCR
96532:  IT LS
96534:  VMOVLS.F32      S0, S4
96538:  VLDR            S4, =0.0
9653C:  LSLS            R2, R1, #0x1F
9653E:  VMOV.F32        S6, S4
96542:  BNE             loc_96560
96544:  LDR             R2, [R4]
96546:  MOVW            R3, #0x1554
9654A:  VLDR            S10, [R5,#0x274]
9654E:  ADD             R2, R3
96550:  VLDR            S6, [R2]
96554:  VLDR            S8, [R2,#0x378]
96558:  VADD.F32        S6, S6, S6
9655C:  VMLA.F32        S6, S8, S10
96560:  VMOV.F32        S8, S4
96564:  LSLS            R1, R1, #0x15
96566:  BPL             loc_9658C
96568:  LDR             R1, [R4]
9656A:  MOVW            R2, #0x1554
9656E:  VLDR            S10, [R5,#0x274]
96572:  ADD             R1, R2
96574:  VLDR            S8, [R5,#0x148]
96578:  VLDR            S14, [R1,#0x378]
9657C:  VLDR            S12, [R1]
96580:  VMLA.F32        S8, S14, S10
96584:  VADD.F32        S10, S12, S12
96588:  VADD.F32        S8, S10, S8
9658C:  VMOV            R2, S2
96590:  VLDR            S10, [R0]
96594:  VMOV.F32        S2, #-1.0
96598:  VADD.F32        S6, S6, S8
9659C:  VADD.F32        S2, S10, S2
965A0:  VCMP.F32        S2, #0.0
965A4:  VMRS            APSR_nzcv, FPSCR
965A8:  IT LS
965AA:  VMOVLS.F32      S2, S4
965AE:  VADD.F32        S2, S6, S2
965B2:  VCMP.F32        S0, S2
965B6:  VMRS            APSR_nzcv, FPSCR
965BA:  IT GE
965BC:  VMOVGE.F32      S2, S0
965C0:  VMOV            R3, S2
965C4:  STRD.W          R2, R3, [R8]
965C8:  LDR             R0, [SP,#0x38+var_1C]
965CA:  LDR             R1, =(__stack_chk_guard_ptr - 0x965D0)
965CC:  ADD             R1, PC; __stack_chk_guard_ptr
965CE:  LDR             R1, [R1]; __stack_chk_guard
965D0:  LDR             R1, [R1]
965D2:  CMP             R1, R0
965D4:  ITTT EQ
965D6:  ADDEQ           SP, SP, #0x20 ; ' '
965D8:  POPEQ.W         {R8,R9,R11}
965DC:  POPEQ           {R4-R7,PC}
965DE:  BLX             __stack_chk_fail
