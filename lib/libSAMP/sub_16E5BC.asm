; =========================================================
; Game Engine Function: sub_16E5BC
; Address            : 0x16E5BC - 0x16E7BA
; =========================================================

16E5BC:  PUSH            {R4-R7,LR}
16E5BE:  ADD             R7, SP, #0xC
16E5C0:  PUSH.W          {R8-R11}
16E5C4:  SUB             SP, SP, #0x24
16E5C6:  LDR             R0, =(dword_381B58 - 0x16E5D4)
16E5C8:  MOV.W           R1, #0x1960
16E5CC:  MOVW            R2, #0x15B8
16E5D0:  ADD             R0, PC; dword_381B58
16E5D2:  STR             R0, [SP,#0x40+var_28]
16E5D4:  LDR.W           R8, [R0]
16E5D8:  MOVW            R0, #0x1964
16E5DC:  ADD.W           R4, R8, R2
16E5E0:  MOVW            R2, #0x1C08
16E5E4:  LDR.W           R0, [R8,R0]
16E5E8:  ADD.W           R5, R8, R2
16E5EC:  LDR.W           R1, [R8,R1]
16E5F0:  CMP             R0, R1
16E5F2:  BEQ             loc_16E5FC
16E5F4:  BL              sub_16DE84
16E5F8:  LDR.W           R0, [R4,#0x3A8]
16E5FC:  MOVS            R1, #0
16E5FE:  STR.W           R0, [R4,#0x3B0]
16E602:  MOV             R0, R5
16E604:  STRD.W          R1, R1, [R8,#0x360]
16E608:  STR.W           R1, [R8,#0x368]
16E60C:  BL              sub_16E7C0
16E610:  LDR             R0, [R5,#0x34]
16E612:  CBZ             R0, loc_16E622
16E614:  MOVW            R0, #0x1C24
16E618:  ADD.W           R1, R8, R0
16E61C:  MOV             R0, R5
16E61E:  BL              sub_16E87C
16E622:  LDR.W           R2, [R4,#0x53C]
16E626:  MOVW            R0, #0x1BDC
16E62A:  MOVW            R1, #0x1BF8
16E62E:  CBZ             R2, loc_16E642
16E630:  LDRB            R3, [R2,#9]
16E632:  LSLS            R3, R3, #0x1A
16E634:  ITE PL
16E636:  LDRPL.W         R6, [R2,#0x2FC]
16E63A:  MOVMI           R6, #0
16E63C:  LDR.W           R10, [R4,#0x544]
16E640:  B               loc_16E648
16E642:  MOVS            R6, #0
16E644:  MOV.W           R10, #0
16E648:  STR             R6, [SP,#0x40+var_24]
16E64A:  ADD.W           R9, R8, R0
16E64E:  ADD.W           R0, R8, R1
16E652:  STR             R0, [SP,#0x40+var_38]
16E654:  ADD.W           R0, R8, #0x1C00
16E658:  STR             R0, [SP,#0x40+var_34]
16E65A:  LDR.W           R0, [R4,#0x3B4]
16E65E:  STR.W           R10, [SP,#0x40+var_20]
16E662:  CBZ             R0, loc_16E6AE
16E664:  MOV.W           R11, #0
16E668:  LDR.W           R1, [R4,#0x3BC]
16E66C:  LDR.W           R1, [R1,R11,LSL#2]
16E670:  LDRB.W          R2, [R1,#0x7A]
16E674:  CBZ             R2, loc_16E6A6
16E676:  LDRB.W          R2, [R1,#0x81]
16E67A:  CBNZ            R2, loc_16E6A6
16E67C:  LDR             R2, [R1,#8]
16E67E:  LSLS            R3, R2, #7
16E680:  BMI             loc_16E6A6
16E682:  CMP             R1, R6
16E684:  IT NE
16E686:  CMPNE           R1, R10
16E688:  BEQ             loc_16E6A6
16E68A:  LDR             R0, [SP,#0x40+var_28]
16E68C:  LSLS            R2, R2, #6
16E68E:  MOVW            R2, #0x1C08
16E692:  LDR             R3, [R0]
16E694:  MOVW            R0, #0x1C14
16E698:  ADD             R0, R3
16E69A:  IT PL
16E69C:  ADDPL           R0, R3, R2
16E69E:  BL              sub_17176C
16E6A2:  LDR.W           R0, [R4,#0x3B4]
16E6A6:  ADD.W           R11, R11, #1
16E6AA:  CMP             R11, R0
16E6AC:  BNE             loc_16E668
16E6AE:  STRD.W          R9, R5, [SP,#0x40+var_30]
16E6B2:  ADD             R5, SP, #0x40+var_24
16E6B4:  MOV.W           R9, #1
16E6B8:  MOVW            R11, #0x1C08
16E6BC:  MOV.W           R10, #1
16E6C0:  CBZ             R6, loc_16E6E8
16E6C2:  LDRB.W          R0, [R6,#0x7A]
16E6C6:  CBZ             R0, loc_16E6E8
16E6C8:  LDRB.W          R0, [R6,#0x81]
16E6CC:  CBNZ            R0, loc_16E6E8
16E6CE:  LDR             R0, [SP,#0x40+var_28]
16E6D0:  LDR             R1, [R6,#8]
16E6D2:  LDR             R2, [R0]
16E6D4:  MOVW            R0, #0x1C14
16E6D8:  LSLS            R1, R1, #6
16E6DA:  ADD             R0, R2
16E6DC:  MOV             R1, R6
16E6DE:  IT PL
16E6E0:  ADDPL.W         R0, R2, R11
16E6E4:  BL              sub_17176C
16E6E8:  MOVS.W          R0, R9,LSL#31
16E6EC:  BEQ             loc_16E6FC
16E6EE:  LDR.W           R6, [R5,R10,LSL#2]
16E6F2:  MOV.W           R9, #0
16E6F6:  MOV.W           R10, #2
16E6FA:  B               loc_16E6C0
16E6FC:  LDR             R5, [SP,#0x40+var_2C]
16E6FE:  MOV             R0, R5
16E700:  BL              sub_16DCC0
16E704:  LDRB.W          R0, [R8,#0xAC]
16E708:  CBZ             R0, loc_16E720
16E70A:  LDR.W           R0, [R5,#0x10C]
16E70E:  LDRD.W          R1, R2, [R8,#0xE0]
16E712:  LDR             R3, [R4]
16E714:  STR             R0, [SP,#0x40+var_40]
16E716:  MOVW            R0, #0x1C9C
16E71A:  ADD             R0, R8
16E71C:  BL              sub_178CC4
16E720:  LDR.W           R0, [R5,#0xAC]
16E724:  LDR.W           R9, [SP,#0x40+var_30]
16E728:  CBZ             R0, loc_16E738
16E72A:  MOVW            R0, #0x1C9C
16E72E:  ADD.W           R1, R8, R0
16E732:  MOV             R0, R5
16E734:  BL              sub_16E87C
16E738:  MOVS            R0, #1
16E73A:  LDR             R6, [R5]
16E73C:  STRB.W          R0, [R9]
16E740:  VMOV.I32        Q8, #0
16E744:  LDR             R0, [SP,#0x40+var_28]
16E746:  ADD.W           R2, R9, #0xC
16E74A:  CMP             R6, #1
16E74C:  LDR             R0, [R0]
16E74E:  ITE GE
16E750:  LDRGE           R1, [R5,#8]
16E752:  MOVLT           R1, #0
16E754:  LDR             R3, [SP,#0x40+var_38]
16E756:  CMP             R6, #0
16E758:  VST1.32         {D16-D17}, [R2]
16E75C:  STRD.W          R1, R6, [R9,#4]
16E760:  LDRD.W          R1, R2, [R0,#0x10]
16E764:  STRD.W          R1, R2, [R3]
16E768:  LDR             R2, [SP,#0x40+var_34]
16E76A:  LDRD.W          R1, R0, [R0,#0xA4]
16E76E:  STRD.W          R1, R0, [R2]
16E772:  BLE             loc_16E7AC
16E774:  LDR             R2, [R5,#8]
16E776:  MOVS            R1, #0
16E778:  MOV             R0, R6
16E77A:  MOVS            R3, #0
16E77C:  LDR.W           R5, [R2],#4
16E780:  SUBS            R0, #1
16E782:  LDR             R4, [R5,#0xC]
16E784:  LDR             R5, [R5,#0x18]
16E786:  ADD             R1, R4
16E788:  ADD             R3, R5
16E78A:  BNE             loc_16E77C
16E78C:  CMP             R6, #1
16E78E:  STRD.W          R1, R3, [R9,#0xC]
16E792:  STRD.W          R3, R1, [R8,#0x360]
16E796:  BLT             loc_16E7B2
16E798:  LDR.W           R1, [R8,#0xDC]
16E79C:  CBZ             R1, loc_16E7B2
16E79E:  MOV             R0, R9
16E7A0:  ADD             SP, SP, #0x24 ; '$'
16E7A2:  POP.W           {R8-R11}
16E7A6:  POP.W           {R4-R7,LR}
16E7AA:  BX              R1
16E7AC:  MOVS            R0, #0
16E7AE:  STRD.W          R0, R0, [R8,#0x360]
16E7B2:  ADD             SP, SP, #0x24 ; '$'
16E7B4:  POP.W           {R8-R11}
16E7B8:  POP             {R4-R7,PC}
