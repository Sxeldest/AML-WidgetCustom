; =========================================================
; Game Engine Function: sub_18B5E0
; Address            : 0x18B5E0 - 0x18B6AA
; =========================================================

18B5E0:  PUSH            {R4-R7,LR}
18B5E2:  ADD             R7, SP, #0xC
18B5E4:  PUSH.W          {R8-R11}
18B5E8:  SUB             SP, SP, #0x5C
18B5EA:  MOV             R9, R0
18B5EC:  ADD             R0, SP, #0x78+var_54
18B5EE:  MOV             R11, R3
18B5F0:  MOV             R10, R2
18B5F2:  MOV             R5, R1
18B5F4:  BL              sub_F06B2
18B5F8:  BL              sub_F0734
18B5FC:  ADD.W           LR, R7, #8
18B600:  LDRB            R2, [R0]
18B602:  MOV             R8, R0
18B604:  MOV             R12, R5
18B606:  LDM.W           LR, {R1,R6,LR}
18B60A:  LSLS            R2, R2, #0x1F
18B60C:  BNE             loc_18B616
18B60E:  MOVS            R2, #0
18B610:  STRH.W          R2, [R8]
18B614:  B               loc_18B62E
18B616:  LDR.W           R2, [R8,#8]
18B61A:  MOVS            R3, #0
18B61C:  STRB            R3, [R2]
18B61E:  LDRB.W          R0, [R8]
18B622:  LDR.W           R2, [R8]
18B626:  STR.W           R3, [R8,#4]
18B62A:  LSLS            R0, R0, #0x1F
18B62C:  BNE             loc_18B632
18B62E:  MOVS            R2, #9
18B630:  B               loc_18B638
18B632:  SUBS            R0, R2, #2
18B634:  BIC.W           R2, R0, #1
18B638:  LDR             R3, [R6]
18B63A:  MOVS            R0, #0
18B63C:  LDR             R6, [R7,#arg_C]
18B63E:  LDR             R4, [R7,#arg_10]
18B640:  LDR             R1, [R1]
18B642:  LDR.W           R5, [LR]
18B646:  LDR             R6, [R6]
18B648:  LDR             R4, [R4]
18B64A:  STR             R0, [SP,#0x78+var_24]
18B64C:  STR             R0, [SP,#0x78+var_2C]
18B64E:  STR             R0, [SP,#0x78+var_34]
18B650:  STR             R0, [SP,#0x78+var_3C]
18B652:  STR             R0, [SP,#0x78+var_44]
18B654:  STR.W           R11, [SP,#0x78+var_50]
18B658:  STR             R4, [SP,#0x78+var_28]
18B65A:  STR             R6, [SP,#0x78+var_30]
18B65C:  STR             R5, [SP,#0x78+var_38]
18B65E:  STR             R3, [SP,#0x78+var_40]
18B660:  STR             R1, [SP,#0x78+var_48]
18B662:  MOVW            R3, #:lower16:loc_12121C
18B666:  ADD             R1, SP, #0x78+var_50
18B668:  MOVT            R3, #:upper16:loc_12121C
18B66C:  STRD.W          R1, R0, [SP,#0x78+var_68]
18B670:  STRD.W          R3, R0, [SP,#0x78+var_70]
18B674:  ADD             R0, SP, #0x78+var_5C
18B676:  MOV             R1, R8
18B678:  MOV             R3, R12
18B67A:  STR.W           R10, [SP,#0x78+var_78]
18B67E:  BL              sub_DCA40
18B682:  MOV             R0, R9; int
18B684:  LDRB.W          R6, [R8]
18B688:  LDRD.W          R2, R1, [R8,#4]
18B68C:  ANDS.W          R3, R6, #1
18B690:  ITT EQ
18B692:  ADDEQ.W         R1, R8, #1; text
18B696:  LSREQ           R2, R6, #1
18B698:  BL              sub_ED4F8
18B69C:  ADD             R0, SP, #0x78+var_54
18B69E:  BL              sub_F0720
18B6A2:  ADD             SP, SP, #0x5C ; '\'
18B6A4:  POP.W           {R8-R11}
18B6A8:  POP             {R4-R7,PC}
