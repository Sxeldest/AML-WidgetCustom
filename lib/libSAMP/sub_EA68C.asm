; =========================================================
; Game Engine Function: sub_EA68C
; Address            : 0xEA68C - 0xEA850
; =========================================================

EA68C:  PUSH            {R4-R7,LR}
EA68E:  ADD             R7, SP, #0xC
EA690:  PUSH.W          {R11}
EA694:  SUB             SP, SP, #0x48
EA696:  MOV             R5, R1
EA698:  MOV             R4, R0
EA69A:  LDRD.W          R0, R1, [R1,#0x10]
EA69E:  MOV             R6, R3
EA6A0:  SUBS            R1, #1
EA6A2:  LSRS            R3, R1, #5
EA6A4:  AND.W           R1, R1, #0x1F
EA6A8:  LDR.W           R0, [R0,R3,LSL#2]
EA6AC:  LSRS            R0, R1
EA6AE:  LSLS            R0, R0, #0x1F
EA6B0:  BEQ             loc_EA71C
EA6B2:  MOVS            R0, #0
EA6B4:  LDRB            R1, [R2]
EA6B6:  STRD.W          R0, R0, [SP,#0x58+var_30]
EA6BA:  STRB.W          R0, [SP,#0x58+var_38]
EA6BE:  ADD             R0, SP, #0x58+var_38
EA6C0:  BL              sub_EA862
EA6C4:  CBNZ            R6, loc_EA6DE
EA6C6:  LDRD.W          R1, R2, [R5,#4]
EA6CA:  SUBS            R1, R2, R1
EA6CC:  ADD.W           R0, R5, #0x30 ; '0'
EA6D0:  ADD             R3, SP, #0x58+var_38
EA6D2:  MOVS            R2, #5
EA6D4:  ASRS            R1, R1, #2
EA6D6:  BL              sub_E9460
EA6DA:  CMP             R0, #0
EA6DC:  BEQ             loc_EA7B8
EA6DE:  LDRD.W          R1, R0, [R5,#4]
EA6E2:  CMP             R1, R0
EA6E4:  BEQ             loc_EA724
EA6E6:  LDR.W           R0, [R0,#-4]
EA6EA:  CMP             R0, #0
EA6EC:  BEQ             loc_EA7B8
EA6EE:  LDRB            R1, [R0]
EA6F0:  CMP             R1, #2
EA6F2:  BNE             loc_EA760
EA6F4:  LDR             R6, [R0,#8]
EA6F6:  LDRD.W          R0, R3, [R6,#4]
EA6FA:  CMP             R0, R3
EA6FC:  BCS             loc_EA7C0
EA6FE:  LDRB.W          R1, [SP,#0x58+var_38]
EA702:  STRB            R1, [R0]
EA704:  LDRD.W          R1, R2, [SP,#0x58+var_30]
EA708:  STRD.W          R1, R2, [R0,#8]
EA70C:  MOVS            R1, #0
EA70E:  STRD.W          R1, R1, [SP,#0x58+var_30]
EA712:  ADDS            R0, #0x10
EA714:  STR             R0, [R6,#4]
EA716:  STRB.W          R1, [SP,#0x58+var_38]
EA71A:  B               loc_EA82A
EA71C:  MOVS            R0, #0
EA71E:  STR             R0, [R4,#4]
EA720:  STRB            R0, [R4]
EA722:  B               loc_EA842
EA724:  LDR             R2, [SP,#0x58+var_2C]
EA726:  MOVS            R6, #0
EA728:  LDR             R3, [R5]
EA72A:  LDR             R0, [SP,#0x58+var_30]
EA72C:  LDRB.W          R1, [SP,#0x58+var_38]
EA730:  STRD.W          R6, R6, [SP,#0x58+var_30]
EA734:  STRD.W          R0, R2, [SP,#0x58+var_40]
EA738:  STRB.W          R6, [SP,#0x58+var_38]
EA73C:  LDRB            R0, [R3]
EA73E:  STRB            R1, [R3]
EA740:  STRB.W          R0, [SP,#0x58+var_48]
EA744:  ADD             R0, SP, #0x58+var_48
EA746:  LDRD.W          R12, R2, [R3,#8]
EA74A:  LDRD.W          R1, R6, [SP,#0x58+var_40]
EA74E:  STRD.W          R1, R6, [R3,#8]
EA752:  STRD.W          R12, R2, [SP,#0x58+var_40]
EA756:  BL              sub_E3F7A
EA75A:  MOVS            R0, #1
EA75C:  LDR             R1, [R5]
EA75E:  B               loc_EA7B2
EA760:  LDRD.W          R0, R1, [R5,#0x1C]
EA764:  SUBS            R1, #1
EA766:  LSRS            R2, R1, #5
EA768:  LDR.W           R0, [R0,R2,LSL#2]
EA76C:  STR             R1, [R5,#0x20]
EA76E:  AND.W           R1, R1, #0x1F
EA772:  LSRS            R0, R1
EA774:  LSLS            R0, R0, #0x1F
EA776:  BEQ             loc_EA7B8
EA778:  LDR             R2, [SP,#0x58+var_2C]
EA77A:  MOVS            R6, #0
EA77C:  LDR             R3, [R5,#0x28]
EA77E:  LDR             R0, [SP,#0x58+var_30]
EA780:  LDRB.W          R1, [SP,#0x58+var_38]
EA784:  STRD.W          R6, R6, [SP,#0x58+var_30]
EA788:  STRD.W          R0, R2, [SP,#0x58+var_50]
EA78C:  STRB.W          R6, [SP,#0x58+var_38]
EA790:  LDRB            R0, [R3]
EA792:  STRB            R1, [R3]
EA794:  STRB.W          R0, [SP,#0x58+var_58]
EA798:  MOV             R0, SP
EA79A:  LDRD.W          R12, R2, [R3,#8]
EA79E:  LDRD.W          R1, R6, [SP,#0x58+var_50]
EA7A2:  STRD.W          R1, R6, [R3,#8]
EA7A6:  STRD.W          R12, R2, [SP,#0x58+var_50]
EA7AA:  BL              sub_E3F7A
EA7AE:  LDR             R1, [R5,#0x28]
EA7B0:  MOVS            R0, #1
EA7B2:  STRB            R0, [R4]
EA7B4:  STR             R1, [R4,#4]
EA7B6:  B               loc_EA83C
EA7B8:  MOVS            R0, #0
EA7BA:  STR             R0, [R4,#4]
EA7BC:  STRB            R0, [R4]
EA7BE:  B               loc_EA83C
EA7C0:  LDR.W           R12, [R6]
EA7C4:  MOVS            R1, #1
EA7C6:  SUB.W           R0, R0, R12
EA7CA:  ADD.W           R1, R1, R0,ASR#4
EA7CE:  CMP.W           R1, #0x10000000
EA7D2:  BCS             loc_EA84A
EA7D4:  ASRS            R2, R0, #4
EA7D6:  SUB.W           R0, R3, R12
EA7DA:  MOVW            R3, #0xFFF0
EA7DE:  CMP.W           R1, R0,ASR#3
EA7E2:  IT LS
EA7E4:  ASRLS           R1, R0, #3
EA7E6:  MOVT            R3, #0x7FFF
EA7EA:  CMP             R0, R3
EA7EC:  IT CS
EA7EE:  MOVCS           R1, #0xFFFFFFF
EA7F2:  ADD.W           R3, R6, #8
EA7F6:  ADD             R0, SP, #0x58+var_24
EA7F8:  BL              sub_E5D88
EA7FC:  LDR             R0, [SP,#0x58+var_1C]
EA7FE:  LDRB.W          R1, [SP,#0x58+var_38]
EA802:  STRB            R1, [R0]
EA804:  LDRD.W          R1, R2, [SP,#0x58+var_30]
EA808:  STRD.W          R1, R2, [R0,#8]
EA80C:  MOVS            R1, #0
EA80E:  LDR             R0, [SP,#0x58+var_1C]
EA810:  STRB.W          R1, [SP,#0x58+var_38]
EA814:  ADDS            R0, #0x10
EA816:  STRD.W          R1, R1, [SP,#0x58+var_30]
EA81A:  STR             R0, [SP,#0x58+var_1C]
EA81C:  ADD             R1, SP, #0x58+var_24
EA81E:  MOV             R0, R6
EA820:  BL              sub_E5DD0
EA824:  ADD             R0, SP, #0x58+var_24
EA826:  BL              sub_E5E26
EA82A:  LDR             R0, [R5,#8]
EA82C:  MOVS            R1, #1
EA82E:  STRB            R1, [R4]
EA830:  LDR.W           R0, [R0,#-4]
EA834:  LDR             R0, [R0,#8]
EA836:  LDR             R0, [R0,#4]
EA838:  SUBS            R0, #0x10
EA83A:  STR             R0, [R4,#4]
EA83C:  ADD             R0, SP, #0x58+var_38
EA83E:  BL              sub_E3F7A
EA842:  ADD             SP, SP, #0x48 ; 'H'
EA844:  POP.W           {R11}
EA848:  POP             {R4-R7,PC}
EA84A:  MOV             R0, R6
EA84C:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
