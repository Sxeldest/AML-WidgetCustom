; =========================================================
; Game Engine Function: sub_14E79C
; Address            : 0x14E79C - 0x14E88A
; =========================================================

14E79C:  PUSH            {R4,R5,R7,LR}
14E79E:  ADD             R7, SP, #8
14E7A0:  SUB             SP, SP, #0x150
14E7A2:  LDRD.W          R1, R0, [R0]; src
14E7A6:  MOVS            R3, #0
14E7A8:  ASRS            R2, R0, #0x1F
14E7AA:  ADD.W           R0, R0, R2,LSR#29
14E7AE:  MOVS            R2, #1
14E7B0:  ADD.W           R2, R2, R0,ASR#3; size
14E7B4:  ADD             R0, SP, #0x158+var_148; int
14E7B6:  BL              sub_17D4F2
14E7BA:  SUB.W           R1, R7, #-var_A; int
14E7BE:  MOVS            R2, #0x10
14E7C0:  MOVS            R3, #1
14E7C2:  BL              sub_17D786
14E7C6:  ADD             R0, SP, #0x158+var_148; int
14E7C8:  ADD             R1, SP, #0x158+var_10; int
14E7CA:  MOVS            R2, #0x20 ; ' '
14E7CC:  MOVS            R3, #1
14E7CE:  BL              sub_17D786
14E7D2:  ADD             R0, SP, #0x158+var_148; int
14E7D4:  ADD             R1, SP, #0x158+var_14; int
14E7D6:  MOVS            R2, #0x20 ; ' '
14E7D8:  MOVS            R3, #1
14E7DA:  BL              sub_17D786
14E7DE:  ADD             R0, SP, #0x158+var_148; int
14E7E0:  ADD             R1, SP, #0x158+var_18; int
14E7E2:  MOVS            R2, #0x20 ; ' '
14E7E4:  MOVS            R3, #1
14E7E6:  BL              sub_17D786
14E7EA:  ADD             R0, SP, #0x158+var_148; int
14E7EC:  ADD             R1, SP, #0x158+var_1C; int
14E7EE:  MOVS            R2, #0x20 ; ' '
14E7F0:  MOVS            R3, #1
14E7F2:  BL              sub_17D786
14E7F6:  ADD             R0, SP, #0x158+var_148; int
14E7F8:  ADD             R1, SP, #0x158+var_20; int
14E7FA:  MOVS            R2, #0x20 ; ' '
14E7FC:  MOVS            R3, #1
14E7FE:  BL              sub_17D786
14E802:  ADD             R0, SP, #0x158+var_148; int
14E804:  ADD             R1, SP, #0x158+var_24; int
14E806:  MOVS            R2, #0x20 ; ' '
14E808:  MOVS            R3, #1
14E80A:  BL              sub_17D786
14E80E:  ADD             R0, SP, #0x158+var_148; int
14E810:  ADD             R1, SP, #0x158+var_28; int
14E812:  MOVS            R2, #0x20 ; ' '
14E814:  MOVS            R3, #1
14E816:  BL              sub_17D786
14E81A:  ADD             R0, SP, #0x158+var_148; int
14E81C:  ADD             R1, SP, #0x158+var_2C; int
14E81E:  MOVS            R2, #0x20 ; ' '
14E820:  MOVS            R3, #1
14E822:  BL              sub_17D786
14E826:  ADD             R0, SP, #0x158+var_148; int
14E828:  ADD             R1, SP, #0x158+var_30; int
14E82A:  MOVS            R2, #0x20 ; ' '
14E82C:  MOVS            R3, #1
14E82E:  BL              sub_17D786
14E832:  ADD             R0, SP, #0x158+var_148; int
14E834:  ADD             R1, SP, #0x158+var_34; int
14E836:  MOVS            R2, #0x20 ; ' '
14E838:  MOVS            R3, #1
14E83A:  BL              sub_17D786
14E83E:  LDRH.W          R0, [R7,#var_A]
14E842:  CMP.W           R0, #0x3E8
14E846:  BHI             loc_14E880
14E848:  LDR             R1, =(off_23496C - 0x14E84E)
14E84A:  ADD             R1, PC; off_23496C
14E84C:  LDR             R1, [R1]; dword_23DEF4
14E84E:  LDR             R1, [R1]
14E850:  LDR.W           R1, [R1,#0x3B0]
14E854:  LDR             R1, [R1,#0x10]
14E856:  ADDS            R2, R1, R0
14E858:  LDRB            R2, [R2,#4]
14E85A:  CBZ             R2, loc_14E880
14E85C:  ADD.W           R0, R1, R0,LSL#2
14E860:  LDR.W           R0, [R0,#0x3EC]; int
14E864:  CBZ             R0, loc_14E880
14E866:  LDR             R1, [SP,#0x158+var_1C]; int
14E868:  LDRD.W          R3, R2, [SP,#0x158+var_24]; int
14E86C:  LDRD.W          LR, R12, [SP,#0x158+var_2C]
14E870:  LDRD.W          R5, R4, [SP,#0x158+var_34]
14E874:  STRD.W          R12, LR, [SP,#0x158+var_158]; float
14E878:  STRD.W          R4, R5, [SP,#0x158+var_150]; float
14E87C:  BL              sub_102530
14E880:  ADD             R0, SP, #0x158+var_148
14E882:  BL              sub_17D542
14E886:  ADD             SP, SP, #0x150
14E888:  POP             {R4,R5,R7,PC}
