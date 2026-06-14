; =========================================================
; Game Engine Function: sub_1537D6
; Address            : 0x1537D6 - 0x15399E
; =========================================================

1537D6:  PUSH            {R4-R7,LR}
1537D8:  ADD             R7, SP, #0xC
1537DA:  PUSH.W          {R8-R11}
1537DE:  SUB             SP, SP, #0x14
1537E0:  LDR             R4, [R1,#4]
1537E2:  MOV             R11, R1
1537E4:  LDRH            R6, [R2]
1537E6:  STR             R0, [SP,#0x30+var_2C]
1537E8:  CBZ             R4, loc_153822
1537EA:  MOV.W           R0, #0x55555555
1537EE:  MOV.W           R1, #0x33333333
1537F2:  AND.W           R0, R0, R4,LSR#1
1537F6:  SUBS            R0, R4, R0
1537F8:  AND.W           R1, R1, R0,LSR#2
1537FC:  BIC.W           R0, R0, #0xCCCCCCCC
153800:  ADD             R0, R1
153802:  MOV.W           R1, #0x1010101
153806:  ADD.W           R0, R0, R0,LSR#4
15380A:  BIC.W           R0, R0, #0xF0F0F0F0
15380E:  MULS            R0, R1
153810:  MOV.W           R10, R0,LSR#24
153814:  CMP.W           R10, #1
153818:  BHI             loc_153824
15381A:  SUBS            R0, R4, #1
15381C:  AND.W           R9, R0, R6
153820:  B               loc_153834
153822:  B               loc_153874
153824:  CMP             R4, R6
153826:  MOV             R9, R6
153828:  BHI             loc_153834
15382A:  MOV             R0, R6
15382C:  MOV             R1, R4
15382E:  BLX             sub_221798
153832:  MOV             R9, R1
153834:  LDR.W           R0, [R11]
153838:  LDR.W           R5, [R0,R9,LSL#2]
15383C:  CBZ             R5, loc_153874
15383E:  SUB.W           R8, R4, #1
153842:  LDR             R5, [R5]
153844:  CBZ             R5, loc_153874
153846:  LDR             R0, [R5,#4]
153848:  CMP             R0, R6
15384A:  BEQ             loc_153868
15384C:  CMP.W           R10, #1
153850:  BHI             loc_153858
153852:  AND.W           R0, R0, R8
153856:  B               loc_153864
153858:  CMP             R0, R4
15385A:  BCC             loc_153864
15385C:  MOV             R1, R4
15385E:  BLX             sub_221798
153862:  MOV             R0, R1
153864:  CMP             R0, R9
153866:  BNE             loc_153874
153868:  LDRH            R0, [R5,#8]
15386A:  CMP             R0, R6
15386C:  BNE             loc_153842
15386E:  MOVS            R0, #0
153870:  LDR             R6, [SP,#0x30+var_2C]
153872:  B               loc_153992
153874:  MOVS            R0, #0x10; unsigned int
153876:  LDRD.W          R5, R8, [R7,#arg_0]
15387A:  BLX             j__Znwj; operator new(uint)
15387E:  LDR.W           R2, [R11,#0xC]
153882:  ADD.W           R10, R11, #8
153886:  LDR             R1, [R5]
153888:  MOV.W           R12, #0
15388C:  ADDS            R2, #1
15388E:  LDR.W           R3, [R8]
153892:  VLDR            S0, [R11,#0x10]
153896:  VMOV            S2, R2
15389A:  LDRH            R1, [R1]
15389C:  LDR             R5, [R3]
15389E:  VCVT.F32.U32    S2, S2
1538A2:  STR.W           R12, [R3]
1538A6:  STR             R6, [R0,#4]
1538A8:  STRH            R1, [R0,#8]
1538AA:  STR.W           R12, [R0]
1538AE:  STR             R5, [R0,#0xC]
1538B0:  STRD.W          R0, R10, [SP,#0x30+var_28]
1538B4:  MOV.W           R0, #1
1538B8:  STRB.W          R0, [SP,#0x30+var_20]
1538BC:  CBZ             R4, loc_1538D8
1538BE:  VMOV            S4, R4
1538C2:  VCVT.F32.U32    S4, S4
1538C6:  VMUL.F32        S4, S0, S4
1538CA:  VCMP.F32        S4, S2
1538CE:  VMRS            APSR_nzcv, FPSCR
1538D2:  BMI             loc_1538D8
1538D4:  MOV             R6, R9
1538D6:  B               loc_15392E
1538D8:  LSLS            R5, R4, #1
1538DA:  CMP             R4, #3
1538DC:  BCC             loc_1538E8
1538DE:  SUBS            R0, R4, #1
1538E0:  ANDS            R4, R0
1538E2:  IT NE
1538E4:  MOVNE           R4, #1
1538E6:  B               loc_1538EA
1538E8:  MOVS            R4, #1
1538EA:  VDIV.F32        S0, S2, S0
1538EE:  VMOV            R0, S0; x
1538F2:  BLX             ceilf
1538F6:  VMOV            S0, R0
1538FA:  ORR.W           R1, R4, R5
1538FE:  VCVT.U32.F32    S0, S0
153902:  VMOV            R0, S0
153906:  CMP             R1, R0
153908:  IT CC
15390A:  MOVCC           R1, R0; this
15390C:  MOV             R0, R11; int
15390E:  BL              sub_1539B2
153912:  LDR.W           R4, [R11,#4]
153916:  SUBS            R0, R4, #1
153918:  TST             R4, R0
15391A:  BNE             loc_153920
15391C:  ANDS            R6, R0
15391E:  B               loc_15392E
153920:  CMP             R4, R6
153922:  BHI             loc_15392E
153924:  MOV             R0, R6
153926:  MOV             R1, R4
153928:  BLX             sub_221798
15392C:  MOV             R6, R1
15392E:  LDR.W           R0, [R11]
153932:  LDR.W           R0, [R0,R6,LSL#2]
153936:  CBZ             R0, loc_153946
153938:  LDR             R1, [SP,#0x30+var_28]
15393A:  LDR             R2, [R0]
15393C:  LDR             R6, [SP,#0x30+var_2C]
15393E:  STR             R2, [R1]
153940:  LDR             R1, [SP,#0x30+var_28]
153942:  STR             R1, [R0]
153944:  B               loc_153984
153946:  LDR             R0, [SP,#0x30+var_28]
153948:  LDR.W           R1, [R11,#8]
15394C:  STR             R1, [R0]
15394E:  LDR.W           R0, [R11]
153952:  LDR             R1, [SP,#0x30+var_28]
153954:  STR.W           R1, [R11,#8]
153958:  STR.W           R10, [R0,R6,LSL#2]
15395C:  LDR             R5, [SP,#0x30+var_28]
15395E:  LDR             R6, [SP,#0x30+var_2C]
153960:  LDR             R0, [R5]
153962:  CBZ             R0, loc_153984
153964:  LDR             R0, [R0,#4]
153966:  SUBS            R1, R4, #1
153968:  TST             R4, R1
15396A:  BNE             loc_153970
15396C:  ANDS            R0, R1
15396E:  B               loc_15397C
153970:  CMP             R0, R4
153972:  BCC             loc_15397C
153974:  MOV             R1, R4
153976:  BLX             sub_221798
15397A:  MOV             R0, R1
15397C:  LDR.W           R1, [R11]
153980:  STR.W           R5, [R1,R0,LSL#2]
153984:  LDR.W           R0, [R11,#0xC]
153988:  LDR             R5, [SP,#0x30+var_28]
15398A:  ADDS            R0, #1
15398C:  STR.W           R0, [R11,#0xC]
153990:  MOVS            R0, #1
153992:  STRB            R0, [R6,#4]
153994:  STR             R5, [R6]
153996:  ADD             SP, SP, #0x14
153998:  POP.W           {R8-R11}
15399C:  POP             {R4-R7,PC}
