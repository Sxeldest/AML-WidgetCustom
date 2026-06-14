; =========================================================
; Game Engine Function: sub_7D460
; Address            : 0x7D460 - 0x7D6F2
; =========================================================

7D460:  PUSH            {R4-R7,LR}
7D462:  ADD             R7, SP, #0xC
7D464:  PUSH.W          {R8-R11}
7D468:  SUB             SP, SP, #4
7D46A:  VPUSH           {D8-D12}
7D46E:  SUB             SP, SP, #0x20
7D470:  MOV             R9, R0
7D472:  LDR             R0, =(__stack_chk_guard_ptr - 0x7D47C)
7D474:  MOV             R6, R2
7D476:  MOV             R5, R1
7D478:  ADD             R0, PC; __stack_chk_guard_ptr
7D47A:  MOVS            R1, #0
7D47C:  LDR             R0, [R0]; __stack_chk_guard
7D47E:  LDR             R0, [R0]
7D480:  STR             R0, [SP,#0x68+var_4C]
7D482:  LDR             R0, [R2,#4]
7D484:  LDRB            R2, [R2]
7D486:  STRD.W          R1, R1, [R9]
7D48A:  ANDS.W          R1, R2, #1
7D48E:  MOV             R3, R0
7D490:  IT EQ
7D492:  LSREQ           R3, R2, #1
7D494:  CMP             R3, #0
7D496:  BEQ.W           loc_7D6D0
7D49A:  VLDR            S22, [R5,#0x74]
7D49E:  VCMP.F32        S22, #0.0
7D4A2:  VMRS            APSR_nzcv, FPSCR
7D4A6:  BNE             loc_7D4C0
7D4A8:  BL              sub_8C514
7D4AC:  LDR.W           R0, [R0,#0x8C]
7D4B0:  LDRB            R2, [R6]
7D4B2:  LDR             R0, [R0,#0x3C]
7D4B4:  AND.W           R1, R2, #1
7D4B8:  LDR             R3, [R0]
7D4BA:  LDR             R0, [R6,#4]
7D4BC:  VLDR            S22, [R3,#0x10]
7D4C0:  VLDR            S24, =0.0
7D4C4:  LSRS            R2, R2, #1
7D4C6:  LDR.W           R8, [R6,#8]
7D4CA:  CMP             R1, #0
7D4CC:  VMOV.F32        S20, S24
7D4D0:  ITE NE
7D4D2:  MOVNE           R2, R0
7D4D4:  ADDEQ.W         R8, R6, #1
7D4D8:  VMOV.F32        S18, S24
7D4DC:  ADD.W           R11, R8, R2
7D4E0:  VMOV.F32        S16, S24
7D4E4:  MOVS            R6, #0
7D4E6:  MOV             R10, R8
7D4E8:  B               loc_7D4F6
7D4EA:  CMP             R0, #0
7D4EC:  BEQ.W           loc_7D650
7D4F0:  MOV             R4, R8
7D4F2:  ADD.W           R8, R8, #1
7D4F6:  LDRB.W          R0, [R8]
7D4FA:  CMP             R0, #9
7D4FC:  BLE             loc_7D574
7D4FE:  CMP             R0, #0xA
7D500:  BEQ             loc_7D5D6
7D502:  CMP             R0, #0x7B ; '{'
7D504:  BNE             loc_7D4F0
7D506:  ADD.W           R4, R8, #7
7D50A:  CMP             R4, R11
7D50C:  BCS             loc_7D4F0
7D50E:  LDRB            R0, [R4]
7D510:  CMP             R0, #0x7D ; '}'
7D512:  BNE             loc_7D4F0
7D514:  CMP             R8, R10
7D516:  BEQ             loc_7D56A
7D518:  BL              sub_8C514
7D51C:  LDR.W           R0, [R0,#0x8C]
7D520:  MOVW            R3, #0xFFFF
7D524:  VLDR            S0, [R5,#0x74]
7D528:  MOVT            R3, #0x7F7F; int
7D52C:  LDR             R0, [R0,#0x3C]
7D52E:  VCMP.F32        S0, #0.0
7D532:  VMRS            APSR_nzcv, FPSCR
7D536:  LDR             R1, [R0]; int
7D538:  IT EQ
7D53A:  VLDREQ          S0, [R1,#0x10]
7D53E:  VMOV            R2, S0; int
7D542:  ADD             R0, SP, #0x68+var_54; int
7D544:  STRD.W          R6, R10, [SP,#0x68+var_68]; float
7D548:  STRD.W          R8, R6, [SP,#0x68+var_60]; int
7D54C:  BL              sub_A3980
7D550:  VLDR            S0, [SP,#0x68+var_54]
7D554:  VCMP.F32        S16, #0.0
7D558:  VLDR            S2, [SP,#0x68+var_50]
7D55C:  VADD.F32        S18, S18, S0
7D560:  VMRS            APSR_nzcv, FPSCR
7D564:  IT EQ
7D566:  VMOVEQ.F32      S16, S2
7D56A:  ADD.W           R10, R8, #8
7D56E:  ADD.W           R8, R4, #1
7D572:  B               loc_7D4F6
7D574:  BNE             loc_7D4EA
7D576:  CMP             R8, R10
7D578:  BEQ             loc_7D5CC
7D57A:  BL              sub_8C514
7D57E:  LDR.W           R0, [R0,#0x8C]
7D582:  MOVW            R3, #0xFFFF
7D586:  VLDR            S0, [R5,#0x74]
7D58A:  MOVT            R3, #0x7F7F; int
7D58E:  LDR             R0, [R0,#0x3C]
7D590:  VCMP.F32        S0, #0.0
7D594:  VMRS            APSR_nzcv, FPSCR
7D598:  LDR             R1, [R0]; int
7D59A:  IT EQ
7D59C:  VLDREQ          S0, [R1,#0x10]
7D5A0:  VMOV            R2, S0; int
7D5A4:  ADD             R0, SP, #0x68+var_54; int
7D5A6:  STRD.W          R6, R10, [SP,#0x68+var_68]; float
7D5AA:  STRD.W          R8, R6, [SP,#0x68+var_60]; int
7D5AE:  BL              sub_A3980
7D5B2:  VLDR            S0, [SP,#0x68+var_54]
7D5B6:  VCMP.F32        S16, #0.0
7D5BA:  VLDR            S2, [SP,#0x68+var_50]
7D5BE:  VADD.F32        S18, S18, S0
7D5C2:  VMRS            APSR_nzcv, FPSCR
7D5C6:  IT EQ
7D5C8:  VMOVEQ.F32      S16, S2
7D5CC:  VADD.F32        S18, S22, S18
7D5D0:  ADD.W           R10, R8, #1
7D5D4:  B               loc_7D4F0
7D5D6:  CMP             R8, R10
7D5D8:  BEQ             loc_7D62C
7D5DA:  BL              sub_8C514
7D5DE:  LDR.W           R0, [R0,#0x8C]
7D5E2:  MOVW            R3, #0xFFFF
7D5E6:  VLDR            S0, [R5,#0x74]
7D5EA:  MOVT            R3, #0x7F7F; int
7D5EE:  LDR             R0, [R0,#0x3C]
7D5F0:  VCMP.F32        S0, #0.0
7D5F4:  VMRS            APSR_nzcv, FPSCR
7D5F8:  LDR             R1, [R0]; int
7D5FA:  IT EQ
7D5FC:  VLDREQ          S0, [R1,#0x10]
7D600:  VMOV            R2, S0; int
7D604:  ADD             R0, SP, #0x68+var_54; int
7D606:  STRD.W          R6, R10, [SP,#0x68+var_68]; float
7D60A:  STRD.W          R8, R6, [SP,#0x68+var_60]; int
7D60E:  BL              sub_A3980
7D612:  VLDR            S0, [SP,#0x68+var_54]
7D616:  VCMP.F32        S16, #0.0
7D61A:  VLDR            S2, [SP,#0x68+var_50]
7D61E:  VADD.F32        S18, S18, S0
7D622:  VMRS            APSR_nzcv, FPSCR
7D626:  IT EQ
7D628:  VMOVEQ.F32      S16, S2
7D62C:  VCMP.F32        S20, S18
7D630:  ADD.W           R10, R8, #1
7D634:  VMRS            APSR_nzcv, FPSCR
7D638:  IT GE
7D63A:  VMOVGE.F32      S18, S20
7D63E:  VADD.F32        S16, S22, S16
7D642:  VSTR            S18, [R9]
7D646:  VMOV.F32        S20, S18
7D64A:  VMOV.F32        S18, S24
7D64E:  B               loc_7D4F0
7D650:  CMP             R8, R10
7D652:  BEQ             loc_7D6A8
7D654:  BL              sub_8C514
7D658:  LDR.W           R0, [R0,#0x8C]
7D65C:  MOVW            R3, #0xFFFF
7D660:  VLDR            S0, [R5,#0x74]
7D664:  MOVT            R3, #0x7F7F; int
7D668:  LDR             R0, [R0,#0x3C]
7D66A:  VCMP.F32        S0, #0.0
7D66E:  VMRS            APSR_nzcv, FPSCR
7D672:  LDR             R1, [R0]; int
7D674:  IT EQ
7D676:  VLDREQ          S0, [R1,#0x10]
7D67A:  VMOV            R2, S0; int
7D67E:  MOVS            R0, #0
7D680:  STRD.W          R0, R10, [SP,#0x68+var_68]; float
7D684:  STRD.W          R8, R0, [SP,#0x68+var_60]; int
7D688:  ADD             R0, SP, #0x68+var_54; int
7D68A:  BL              sub_A3980
7D68E:  VLDR            S0, [SP,#0x68+var_54]
7D692:  VCMP.F32        S16, #0.0
7D696:  VLDR            S2, [SP,#0x68+var_50]
7D69A:  VADD.F32        S18, S18, S0
7D69E:  VMRS            APSR_nzcv, FPSCR
7D6A2:  IT EQ
7D6A4:  VMOVEQ.F32      S16, S2
7D6A8:  VCMP.F32        S16, #0.0
7D6AC:  VLDR            S0, =0.0
7D6B0:  VMRS            APSR_nzcv, FPSCR
7D6B4:  VCMP.F32        S20, S18
7D6B8:  IT LS
7D6BA:  VMOVLS.F32      S16, S0
7D6BE:  VMRS            APSR_nzcv, FPSCR
7D6C2:  IT GE
7D6C4:  VMOVGE.F32      S18, S20
7D6C8:  VSTR            S18, [R9]
7D6CC:  VSTR            S16, [R9,#4]
7D6D0:  LDR             R0, [SP,#0x68+var_4C]
7D6D2:  LDR             R1, =(__stack_chk_guard_ptr - 0x7D6D8)
7D6D4:  ADD             R1, PC; __stack_chk_guard_ptr
7D6D6:  LDR             R1, [R1]; __stack_chk_guard
7D6D8:  LDR             R1, [R1]
7D6DA:  CMP             R1, R0
7D6DC:  ITTTT EQ
7D6DE:  ADDEQ           SP, SP, #0x20 ; ' '
7D6E0:  VPOPEQ          {D8-D12}
7D6E4:  ADDEQ           SP, SP, #4
7D6E6:  POPEQ.W         {R8-R11}
7D6EA:  IT EQ
7D6EC:  POPEQ           {R4-R7,PC}
7D6EE:  BLX             __stack_chk_fail
