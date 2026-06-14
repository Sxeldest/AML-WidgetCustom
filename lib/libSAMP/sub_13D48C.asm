; =========================================================
; Game Engine Function: sub_13D48C
; Address            : 0x13D48C - 0x13D634
; =========================================================

13D48C:  PUSH            {R4-R7,LR}
13D48E:  ADD             R7, SP, #0xC
13D490:  PUSH.W          {R8-R10}
13D494:  VPUSH           {D8-D12}
13D498:  SUB             SP, SP, #8
13D49A:  MOV             R9, R0
13D49C:  LDR             R0, [R2,#4]
13D49E:  MOV             R8, R2
13D4A0:  LDRB            R2, [R2]
13D4A2:  MOV             R5, R1
13D4A4:  MOVS            R1, #0
13D4A6:  STRD.W          R1, R1, [R9]
13D4AA:  ANDS.W          R1, R2, #1
13D4AE:  MOV             R3, R0
13D4B0:  IT EQ
13D4B2:  LSREQ           R3, R2, #1
13D4B4:  CMP             R3, #0
13D4B6:  BEQ.W           loc_13D628
13D4BA:  VLDR            S18, [R5,#0x74]
13D4BE:  VCMP.F32        S18, #0.0
13D4C2:  VMRS            APSR_nzcv, FPSCR
13D4C6:  BNE             loc_13D4E4
13D4C8:  BL              sub_167F4C
13D4CC:  LDR.W           R0, [R0,#0x8C]
13D4D0:  LDRB.W          R2, [R8]
13D4D4:  LDR             R0, [R0,#0x3C]
13D4D6:  AND.W           R1, R2, #1
13D4DA:  LDR             R3, [R0]
13D4DC:  LDR.W           R0, [R8,#4]
13D4E0:  VLDR            S18, [R3,#0x10]
13D4E4:  VLDR            S24, =0.0
13D4E8:  LSRS            R2, R2, #1
13D4EA:  LDR.W           R4, [R8,#8]
13D4EE:  CMP             R1, #0
13D4F0:  VMOV.F32        S22, S24
13D4F4:  ITE NE
13D4F6:  MOVNE           R2, R0
13D4F8:  ADDEQ.W         R4, R8, #1
13D4FC:  VMOV.F32        S20, S24
13D500:  ADD.W           R10, R4, R2
13D504:  VMOV.F32        S16, S24
13D508:  MOV             R8, SP
13D50A:  MOV             R2, R4
13D50C:  LDRB            R0, [R4]
13D50E:  CMP             R0, #9
13D510:  BLE             loc_13D554
13D512:  CMP             R0, #0xA
13D514:  BEQ             loc_13D586
13D516:  CMP             R0, #0x7B ; '{'
13D518:  BNE             loc_13D5D2
13D51A:  ADDS            R6, R4, #7
13D51C:  CMP             R6, R10
13D51E:  BCS             loc_13D5D2
13D520:  LDRB            R0, [R6]
13D522:  CMP             R0, #0x7D ; '}'
13D524:  BNE             loc_13D5D2
13D526:  CMP             R4, R2
13D528:  BEQ             loc_13D54E
13D52A:  MOV             R0, R8
13D52C:  MOV             R1, R5
13D52E:  MOV             R3, R4
13D530:  BL              sub_13D66C
13D534:  VLDR            S0, [SP,#0x48+var_48]
13D538:  VCMP.F32        S16, #0.0
13D53C:  VLDR            S2, [SP,#0x48+var_44]
13D540:  VADD.F32        S20, S20, S0
13D544:  VMRS            APSR_nzcv, FPSCR
13D548:  IT EQ
13D54A:  VMOVEQ.F32      S16, S2
13D54E:  ADD.W           R2, R4, #8
13D552:  B               loc_13D5D4
13D554:  BNE             loc_13D5D0
13D556:  CMP             R4, R2
13D558:  BEQ             loc_13D57E
13D55A:  MOV             R0, R8
13D55C:  MOV             R1, R5
13D55E:  MOV             R3, R4
13D560:  BL              sub_13D66C
13D564:  VLDR            S0, [SP,#0x48+var_48]
13D568:  VCMP.F32        S16, #0.0
13D56C:  VLDR            S2, [SP,#0x48+var_44]
13D570:  VADD.F32        S20, S20, S0
13D574:  VMRS            APSR_nzcv, FPSCR
13D578:  IT EQ
13D57A:  VMOVEQ.F32      S16, S2
13D57E:  VADD.F32        S20, S18, S20
13D582:  ADDS            R2, R4, #1
13D584:  B               loc_13D5D2
13D586:  CMP             R4, R2
13D588:  BEQ             loc_13D5AE
13D58A:  MOV             R0, R8
13D58C:  MOV             R1, R5
13D58E:  MOV             R3, R4
13D590:  BL              sub_13D66C
13D594:  VLDR            S0, [SP,#0x48+var_48]
13D598:  VCMP.F32        S16, #0.0
13D59C:  VLDR            S2, [SP,#0x48+var_44]
13D5A0:  VADD.F32        S20, S20, S0
13D5A4:  VMRS            APSR_nzcv, FPSCR
13D5A8:  IT EQ
13D5AA:  VMOVEQ.F32      S16, S2
13D5AE:  VCMP.F32        S22, S20
13D5B2:  ADDS            R2, R4, #1
13D5B4:  VMRS            APSR_nzcv, FPSCR
13D5B8:  IT GE
13D5BA:  VMOVGE.F32      S20, S22
13D5BE:  VADD.F32        S16, S18, S16
13D5C2:  VSTR            S20, [R9]
13D5C6:  VMOV.F32        S22, S20
13D5CA:  VMOV.F32        S20, S24
13D5CE:  B               loc_13D5D2
13D5D0:  CBZ             R0, loc_13D5D8
13D5D2:  MOV             R6, R4
13D5D4:  ADDS            R4, R6, #1
13D5D6:  B               loc_13D50C
13D5D8:  CMP             R4, R2
13D5DA:  BEQ             loc_13D600
13D5DC:  MOV             R0, SP
13D5DE:  MOV             R1, R5
13D5E0:  MOV             R3, R4
13D5E2:  BL              sub_13D66C
13D5E6:  VLDR            S0, [SP,#0x48+var_48]
13D5EA:  VCMP.F32        S16, #0.0
13D5EE:  VLDR            S2, [SP,#0x48+var_44]
13D5F2:  VADD.F32        S20, S20, S0
13D5F6:  VMRS            APSR_nzcv, FPSCR
13D5FA:  IT EQ
13D5FC:  VMOVEQ.F32      S16, S2
13D600:  VCMP.F32        S16, #0.0
13D604:  VLDR            S0, =0.0
13D608:  VMRS            APSR_nzcv, FPSCR
13D60C:  VCMP.F32        S22, S20
13D610:  IT LS
13D612:  VMOVLS.F32      S16, S0
13D616:  VMRS            APSR_nzcv, FPSCR
13D61A:  IT GE
13D61C:  VMOVGE.F32      S20, S22
13D620:  VSTR            S20, [R9]
13D624:  VSTR            S16, [R9,#4]
13D628:  ADD             SP, SP, #8
13D62A:  VPOP            {D8-D12}
13D62E:  POP.W           {R8-R10}
13D632:  POP             {R4-R7,PC}
