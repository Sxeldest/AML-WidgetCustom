; =========================================================
; Game Engine Function: sub_EA484
; Address            : 0xEA484 - 0xEA64E
; =========================================================

EA484:  PUSH            {R4-R7,LR}
EA486:  ADD             R7, SP, #0xC
EA488:  PUSH.W          {R11}
EA48C:  SUB             SP, SP, #0x48
EA48E:  MOV             R5, R1
EA490:  MOV             R4, R0
EA492:  LDRD.W          R0, R1, [R1,#0x10]
EA496:  MOV             R6, R3
EA498:  SUBS            R1, #1
EA49A:  LSRS            R3, R1, #5
EA49C:  AND.W           R1, R1, #0x1F
EA4A0:  LDR.W           R0, [R0,R3,LSL#2]
EA4A4:  LSRS            R0, R1
EA4A6:  LSLS            R0, R0, #0x1F
EA4A8:  BEQ             loc_EA51A
EA4AA:  VLDR            D16, [R2]
EA4AE:  MOVS            R0, #0
EA4B0:  STRD.W          R0, R0, [SP,#0x58+var_30]
EA4B4:  VMOV            R2, R3, D16
EA4B8:  STRB.W          R0, [SP,#0x58+var_38]
EA4BC:  ADD             R0, SP, #0x58+var_38
EA4BE:  BL              sub_EA660
EA4C2:  CBNZ            R6, loc_EA4DC
EA4C4:  LDRD.W          R1, R2, [R5,#4]
EA4C8:  SUBS            R1, R2, R1
EA4CA:  ADD.W           R0, R5, #0x30 ; '0'
EA4CE:  ADD             R3, SP, #0x58+var_38
EA4D0:  MOVS            R2, #5
EA4D2:  ASRS            R1, R1, #2
EA4D4:  BL              sub_E9460
EA4D8:  CMP             R0, #0
EA4DA:  BEQ             loc_EA5B6
EA4DC:  LDRD.W          R1, R0, [R5,#4]
EA4E0:  CMP             R1, R0
EA4E2:  BEQ             loc_EA522
EA4E4:  LDR.W           R0, [R0,#-4]
EA4E8:  CMP             R0, #0
EA4EA:  BEQ             loc_EA5B6
EA4EC:  LDRB            R1, [R0]
EA4EE:  CMP             R1, #2
EA4F0:  BNE             loc_EA55E
EA4F2:  LDR             R6, [R0,#8]
EA4F4:  LDRD.W          R0, R3, [R6,#4]
EA4F8:  CMP             R0, R3
EA4FA:  BCS             loc_EA5BE
EA4FC:  LDRB.W          R1, [SP,#0x58+var_38]
EA500:  STRB            R1, [R0]
EA502:  LDRD.W          R1, R2, [SP,#0x58+var_30]
EA506:  STRD.W          R1, R2, [R0,#8]
EA50A:  MOVS            R1, #0
EA50C:  STRD.W          R1, R1, [SP,#0x58+var_30]
EA510:  ADDS            R0, #0x10
EA512:  STR             R0, [R6,#4]
EA514:  STRB.W          R1, [SP,#0x58+var_38]
EA518:  B               loc_EA628
EA51A:  MOVS            R0, #0
EA51C:  STR             R0, [R4,#4]
EA51E:  STRB            R0, [R4]
EA520:  B               loc_EA640
EA522:  LDR             R2, [SP,#0x58+var_2C]
EA524:  MOVS            R6, #0
EA526:  LDR             R3, [R5]
EA528:  LDR             R0, [SP,#0x58+var_30]
EA52A:  LDRB.W          R1, [SP,#0x58+var_38]
EA52E:  STRD.W          R6, R6, [SP,#0x58+var_30]
EA532:  STRD.W          R0, R2, [SP,#0x58+var_40]
EA536:  STRB.W          R6, [SP,#0x58+var_38]
EA53A:  LDRB            R0, [R3]
EA53C:  STRB            R1, [R3]
EA53E:  STRB.W          R0, [SP,#0x58+var_48]
EA542:  ADD             R0, SP, #0x58+var_48
EA544:  LDRD.W          R12, R2, [R3,#8]
EA548:  LDRD.W          R1, R6, [SP,#0x58+var_40]
EA54C:  STRD.W          R1, R6, [R3,#8]
EA550:  STRD.W          R12, R2, [SP,#0x58+var_40]
EA554:  BL              sub_E3F7A
EA558:  MOVS            R0, #1
EA55A:  LDR             R1, [R5]
EA55C:  B               loc_EA5B0
EA55E:  LDRD.W          R0, R1, [R5,#0x1C]
EA562:  SUBS            R1, #1
EA564:  LSRS            R2, R1, #5
EA566:  LDR.W           R0, [R0,R2,LSL#2]
EA56A:  STR             R1, [R5,#0x20]
EA56C:  AND.W           R1, R1, #0x1F
EA570:  LSRS            R0, R1
EA572:  LSLS            R0, R0, #0x1F
EA574:  BEQ             loc_EA5B6
EA576:  LDR             R2, [SP,#0x58+var_2C]
EA578:  MOVS            R6, #0
EA57A:  LDR             R3, [R5,#0x28]
EA57C:  LDR             R0, [SP,#0x58+var_30]
EA57E:  LDRB.W          R1, [SP,#0x58+var_38]
EA582:  STRD.W          R6, R6, [SP,#0x58+var_30]
EA586:  STRD.W          R0, R2, [SP,#0x58+var_50]
EA58A:  STRB.W          R6, [SP,#0x58+var_38]
EA58E:  LDRB            R0, [R3]
EA590:  STRB            R1, [R3]
EA592:  STRB.W          R0, [SP,#0x58+var_58]
EA596:  MOV             R0, SP
EA598:  LDRD.W          R12, R2, [R3,#8]
EA59C:  LDRD.W          R1, R6, [SP,#0x58+var_50]
EA5A0:  STRD.W          R1, R6, [R3,#8]
EA5A4:  STRD.W          R12, R2, [SP,#0x58+var_50]
EA5A8:  BL              sub_E3F7A
EA5AC:  LDR             R1, [R5,#0x28]
EA5AE:  MOVS            R0, #1
EA5B0:  STRB            R0, [R4]
EA5B2:  STR             R1, [R4,#4]
EA5B4:  B               loc_EA63A
EA5B6:  MOVS            R0, #0
EA5B8:  STR             R0, [R4,#4]
EA5BA:  STRB            R0, [R4]
EA5BC:  B               loc_EA63A
EA5BE:  LDR.W           R12, [R6]
EA5C2:  MOVS            R1, #1
EA5C4:  SUB.W           R0, R0, R12
EA5C8:  ADD.W           R1, R1, R0,ASR#4
EA5CC:  CMP.W           R1, #0x10000000
EA5D0:  BCS             loc_EA648
EA5D2:  ASRS            R2, R0, #4
EA5D4:  SUB.W           R0, R3, R12
EA5D8:  MOVW            R3, #0xFFF0
EA5DC:  CMP.W           R1, R0,ASR#3
EA5E0:  IT LS
EA5E2:  ASRLS           R1, R0, #3
EA5E4:  MOVT            R3, #0x7FFF
EA5E8:  CMP             R0, R3
EA5EA:  IT CS
EA5EC:  MOVCS           R1, #0xFFFFFFF
EA5F0:  ADD.W           R3, R6, #8
EA5F4:  ADD             R0, SP, #0x58+var_24
EA5F6:  BL              sub_E5D88
EA5FA:  LDR             R0, [SP,#0x58+var_1C]
EA5FC:  LDRB.W          R1, [SP,#0x58+var_38]
EA600:  STRB            R1, [R0]
EA602:  LDRD.W          R1, R2, [SP,#0x58+var_30]
EA606:  STRD.W          R1, R2, [R0,#8]
EA60A:  MOVS            R1, #0
EA60C:  LDR             R0, [SP,#0x58+var_1C]
EA60E:  STRB.W          R1, [SP,#0x58+var_38]
EA612:  ADDS            R0, #0x10
EA614:  STRD.W          R1, R1, [SP,#0x58+var_30]
EA618:  STR             R0, [SP,#0x58+var_1C]
EA61A:  ADD             R1, SP, #0x58+var_24
EA61C:  MOV             R0, R6
EA61E:  BL              sub_E5DD0
EA622:  ADD             R0, SP, #0x58+var_24
EA624:  BL              sub_E5E26
EA628:  LDR             R0, [R5,#8]
EA62A:  MOVS            R1, #1
EA62C:  STRB            R1, [R4]
EA62E:  LDR.W           R0, [R0,#-4]
EA632:  LDR             R0, [R0,#8]
EA634:  LDR             R0, [R0,#4]
EA636:  SUBS            R0, #0x10
EA638:  STR             R0, [R4,#4]
EA63A:  ADD             R0, SP, #0x58+var_38
EA63C:  BL              sub_E3F7A
EA640:  ADD             SP, SP, #0x48 ; 'H'
EA642:  POP.W           {R11}
EA646:  POP             {R4-R7,PC}
EA648:  MOV             R0, R6
EA64A:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
