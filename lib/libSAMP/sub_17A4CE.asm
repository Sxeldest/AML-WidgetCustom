; =========================================================
; Game Engine Function: sub_17A4CE
; Address            : 0x17A4CE - 0x17A5BE
; =========================================================

17A4CE:  PUSH            {R4-R7,LR}
17A4D0:  ADD             R7, SP, #0xC
17A4D2:  PUSH.W          {R11}
17A4D6:  VPUSH           {D8-D15}
17A4DA:  CMP             R2, #0x10
17A4DC:  BGT             loc_17A5B4
17A4DE:  VMOV.F32        S18, S4
17A4E2:  ADDS            R6, R2, #1
17A4E4:  VADD.F32        S4, S3, S3
17A4E8:  MOV             R4, R1
17A4EA:  VMOV.F32        S24, S2
17A4EE:  MOV             R5, R0
17A4F0:  VADD.F32        S2, S2, S2
17A4F4:  VMOV.F32        S20, S6
17A4F8:  VMOV.F32        S16, S5
17A4FC:  VMOV.F32        S22, S3
17A500:  VMOV.F32        S30, #0.25
17A504:  VADD.F32        S4, S4, S1
17A508:  VMOV.F32        S17, #0.5
17A50C:  VADD.F32        S2, S2, S0
17A510:  VADD.F32        S4, S4, S16
17A514:  VADD.F32        S2, S2, S18
17A518:  VADD.F32        S6, S1, S16
17A51C:  VMUL.F32        S26, S4, S30
17A520:  VMUL.F32        S28, S2, S30
17A524:  VADD.F32        S4, S0, S18
17A528:  VMOV.F32        S2, S26
17A52C:  VNMLS.F32       S2, S6, S17
17A530:  VMOV.F32        S6, S28
17A534:  VNMLS.F32       S6, S4, S17
17A538:  VMUL.F32        S2, S2, S2
17A53C:  VMLA.F32        S2, S6, S6
17A540:  VCMP.F32        S2, S20
17A544:  VMRS            APSR_nzcv, FPSCR
17A548:  BLE             loc_17A5A0
17A54A:  VADD.F32        S2, S0, S24
17A54E:  MOV             R0, R5
17A550:  VADD.F32        S4, S1, S22
17A554:  MOV             R1, R4
17A556:  VMOV.F32        S5, S26
17A55A:  MOV             R2, R6
17A55C:  VMOV.F32        S6, S20
17A560:  VMUL.F32        S2, S2, S17
17A564:  VMUL.F32        S3, S4, S17
17A568:  VMOV.F32        S4, S28
17A56C:  BL              sub_17A4CE
17A570:  VADD.F32        S0, S22, S16
17A574:  ADDS            R6, #1
17A576:  VADD.F32        S2, S24, S18
17A57A:  CMP             R6, #0x12
17A57C:  VMOV.F32        S1, S26
17A580:  VMUL.F32        S22, S0, S17
17A584:  VMUL.F32        S24, S2, S17
17A588:  VADD.F32        S0, S22, S22
17A58C:  VADD.F32        S2, S24, S24
17A590:  VADD.F32        S4, S0, S26
17A594:  VADD.F32        S2, S2, S28
17A598:  VMOV.F32        S0, S28
17A59C:  BNE             loc_17A510
17A59E:  B               loc_17A5B4
17A5A0:  LDR             R0, [R4]
17A5A2:  CBZ             R5, loc_17A5B0
17A5A4:  ADD.W           R1, R5, R0,LSL#3
17A5A8:  VSTR            S18, [R1]
17A5AC:  VSTR            S16, [R1,#4]
17A5B0:  ADDS            R0, #1
17A5B2:  STR             R0, [R4]
17A5B4:  VPOP            {D8-D15}
17A5B8:  POP.W           {R11}
17A5BC:  POP             {R4-R7,PC}
