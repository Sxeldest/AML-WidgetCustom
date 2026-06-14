; =========================================================
; Game Engine Function: sub_E9484
; Address            : 0xE9484 - 0xE9644
; =========================================================

E9484:  PUSH            {R4-R7,LR}
E9486:  ADD             R7, SP, #0xC
E9488:  PUSH.W          {R11}
E948C:  SUB             SP, SP, #0x48
E948E:  MOV             R5, R1
E9490:  MOV             R4, R0
E9492:  LDRD.W          R0, R1, [R1,#0x10]
E9496:  MOV             R6, R3
E9498:  SUBS            R1, #1
E949A:  LSRS            R3, R1, #5
E949C:  AND.W           R1, R1, #0x1F
E94A0:  LDR.W           R0, [R0,R3,LSL#2]
E94A4:  LSRS            R0, R1
E94A6:  LSLS            R0, R0, #0x1F
E94A8:  BEQ             loc_E9510
E94AA:  ADD             R0, SP, #0x58+var_38
E94AC:  LDRB            R1, [R2]
E94AE:  ADDS            R0, #8
E94B0:  STRB.W          R1, [SP,#0x58+var_38]
E94B4:  BL              sub_E5EF8
E94B8:  CBNZ            R6, loc_E94D2
E94BA:  LDRD.W          R1, R2, [R5,#4]
E94BE:  SUBS            R1, R2, R1
E94C0:  ADD.W           R0, R5, #0x30 ; '0'
E94C4:  ADD             R3, SP, #0x58+var_38
E94C6:  MOVS            R2, #5
E94C8:  ASRS            R1, R1, #2
E94CA:  BL              sub_E9460
E94CE:  CMP             R0, #0
E94D0:  BEQ             loc_E95AC
E94D2:  LDRD.W          R1, R0, [R5,#4]
E94D6:  CMP             R1, R0
E94D8:  BEQ             loc_E9518
E94DA:  LDR.W           R0, [R0,#-4]
E94DE:  CMP             R0, #0
E94E0:  BEQ             loc_E95AC
E94E2:  LDRB            R1, [R0]
E94E4:  CMP             R1, #2
E94E6:  BNE             loc_E9554
E94E8:  LDR             R6, [R0,#8]
E94EA:  LDRD.W          R0, R3, [R6,#4]
E94EE:  CMP             R0, R3
E94F0:  BCS             loc_E95B4
E94F2:  LDRB.W          R1, [SP,#0x58+var_38]
E94F6:  STRB            R1, [R0]
E94F8:  LDRD.W          R1, R2, [SP,#0x58+var_30]
E94FC:  STRD.W          R1, R2, [R0,#8]
E9500:  MOVS            R1, #0
E9502:  STRD.W          R1, R1, [SP,#0x58+var_30]
E9506:  ADDS            R0, #0x10
E9508:  STR             R0, [R6,#4]
E950A:  STRB.W          R1, [SP,#0x58+var_38]
E950E:  B               loc_E961E
E9510:  MOVS            R0, #0
E9512:  STR             R0, [R4,#4]
E9514:  STRB            R0, [R4]
E9516:  B               loc_E9636
E9518:  LDR             R2, [SP,#0x58+var_2C]
E951A:  MOVS            R6, #0
E951C:  LDR             R3, [R5]
E951E:  LDR             R0, [SP,#0x58+var_30]
E9520:  LDRB.W          R1, [SP,#0x58+var_38]
E9524:  STRD.W          R6, R6, [SP,#0x58+var_30]
E9528:  STRD.W          R0, R2, [SP,#0x58+var_40]
E952C:  STRB.W          R6, [SP,#0x58+var_38]
E9530:  LDRB            R0, [R3]
E9532:  STRB            R1, [R3]
E9534:  STRB.W          R0, [SP,#0x58+var_48]
E9538:  ADD             R0, SP, #0x58+var_48
E953A:  LDRD.W          R12, R2, [R3,#8]
E953E:  LDRD.W          R1, R6, [SP,#0x58+var_40]
E9542:  STRD.W          R1, R6, [R3,#8]
E9546:  STRD.W          R12, R2, [SP,#0x58+var_40]
E954A:  BL              sub_E3F7A
E954E:  MOVS            R0, #1
E9550:  LDR             R1, [R5]
E9552:  B               loc_E95A6
E9554:  LDRD.W          R0, R1, [R5,#0x1C]
E9558:  SUBS            R1, #1
E955A:  LSRS            R2, R1, #5
E955C:  LDR.W           R0, [R0,R2,LSL#2]
E9560:  STR             R1, [R5,#0x20]
E9562:  AND.W           R1, R1, #0x1F
E9566:  LSRS            R0, R1
E9568:  LSLS            R0, R0, #0x1F
E956A:  BEQ             loc_E95AC
E956C:  LDR             R2, [SP,#0x58+var_2C]
E956E:  MOVS            R6, #0
E9570:  LDR             R3, [R5,#0x28]
E9572:  LDR             R0, [SP,#0x58+var_30]
E9574:  LDRB.W          R1, [SP,#0x58+var_38]
E9578:  STRD.W          R6, R6, [SP,#0x58+var_30]
E957C:  STRD.W          R0, R2, [SP,#0x58+var_50]
E9580:  STRB.W          R6, [SP,#0x58+var_38]
E9584:  LDRB            R0, [R3]
E9586:  STRB            R1, [R3]
E9588:  STRB.W          R0, [SP,#0x58+var_58]
E958C:  MOV             R0, SP
E958E:  LDRD.W          R12, R2, [R3,#8]
E9592:  LDRD.W          R1, R6, [SP,#0x58+var_50]
E9596:  STRD.W          R1, R6, [R3,#8]
E959A:  STRD.W          R12, R2, [SP,#0x58+var_50]
E959E:  BL              sub_E3F7A
E95A2:  LDR             R1, [R5,#0x28]
E95A4:  MOVS            R0, #1
E95A6:  STRB            R0, [R4]
E95A8:  STR             R1, [R4,#4]
E95AA:  B               loc_E9630
E95AC:  MOVS            R0, #0
E95AE:  STR             R0, [R4,#4]
E95B0:  STRB            R0, [R4]
E95B2:  B               loc_E9630
E95B4:  LDR.W           R12, [R6]
E95B8:  MOVS            R1, #1
E95BA:  SUB.W           R0, R0, R12
E95BE:  ADD.W           R1, R1, R0,ASR#4
E95C2:  CMP.W           R1, #0x10000000
E95C6:  BCS             loc_E963E
E95C8:  ASRS            R2, R0, #4
E95CA:  SUB.W           R0, R3, R12
E95CE:  MOVW            R3, #0xFFF0
E95D2:  CMP.W           R1, R0,ASR#3
E95D6:  IT LS
E95D8:  ASRLS           R1, R0, #3
E95DA:  MOVT            R3, #0x7FFF
E95DE:  CMP             R0, R3
E95E0:  IT CS
E95E2:  MOVCS           R1, #0xFFFFFFF
E95E6:  ADD.W           R3, R6, #8
E95EA:  ADD             R0, SP, #0x58+var_24
E95EC:  BL              sub_E5D88
E95F0:  LDR             R0, [SP,#0x58+var_1C]
E95F2:  LDRB.W          R1, [SP,#0x58+var_38]
E95F6:  STRB            R1, [R0]
E95F8:  LDRD.W          R1, R2, [SP,#0x58+var_30]
E95FC:  STRD.W          R1, R2, [R0,#8]
E9600:  MOVS            R1, #0
E9602:  LDR             R0, [SP,#0x58+var_1C]
E9604:  STRB.W          R1, [SP,#0x58+var_38]
E9608:  ADDS            R0, #0x10
E960A:  STRD.W          R1, R1, [SP,#0x58+var_30]
E960E:  STR             R0, [SP,#0x58+var_1C]
E9610:  ADD             R1, SP, #0x58+var_24
E9612:  MOV             R0, R6
E9614:  BL              sub_E5DD0
E9618:  ADD             R0, SP, #0x58+var_24
E961A:  BL              sub_E5E26
E961E:  LDR             R0, [R5,#8]
E9620:  MOVS            R1, #1
E9622:  STRB            R1, [R4]
E9624:  LDR.W           R0, [R0,#-4]
E9628:  LDR             R0, [R0,#8]
E962A:  LDR             R0, [R0,#4]
E962C:  SUBS            R0, #0x10
E962E:  STR             R0, [R4,#4]
E9630:  ADD             R0, SP, #0x58+var_38
E9632:  BL              sub_E3F7A
E9636:  ADD             SP, SP, #0x48 ; 'H'
E9638:  POP.W           {R11}
E963C:  POP             {R4-R7,PC}
E963E:  MOV             R0, R6
E9640:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
