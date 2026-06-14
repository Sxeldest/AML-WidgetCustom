; =========================================================
; Game Engine Function: MixDirect_Hrtf_C
; Address            : 0x260674 - 0x260C08
; =========================================================

260674:  PUSH            {R4-R7,LR}
260676:  ADD             R7, SP, #0xC
260678:  PUSH.W          {R8-R11}
26067C:  SUB.W           SP, SP, #0x438
260680:  SUB             SP, SP, #4
260682:  MOV             R4, SP
260684:  BFC.W           R4, #0, #4
260688:  MOV             SP, R4
26068A:  STR             R1, [SP,#0x458+var_434]
26068C:  MOV.W           R1, #0x2880
260690:  LDR             R6, [R0,R1]
260692:  MOVW            R1, #0x2870
260696:  LDR             R5, [R0,R1]
260698:  MOVW            R1, #0x2868
26069C:  ADD             R1, R0
26069E:  STR             R1, [SP,#0x458+var_444]
2606A0:  MOVW            R1, #0x2D10
2606A4:  ADD.W           R9, R0, R2,LSL#3
2606A8:  LDR.W           R8, [R6,R1]
2606AC:  MOVW            R1, #0x2820
2606B0:  STR             R2, [SP,#0x458+var_42C]
2606B2:  STR             R6, [SP,#0x458+var_430]
2606B4:  ADD.W           R12, R9, R1
2606B8:  LDR             R1, [R6,#4]
2606BA:  CMP             R1, R3
2606BC:  IT LS
2606BE:  MOVLS           R1, R3
2606C0:  CMP             R5, #0
2606C2:  SUB.W           R11, R1, R3
2606C6:  LDR             R1, [R0]
2606C8:  STR             R1, [SP,#0x458+var_440]
2606CA:  LDRD.W          LR, R10, [R0,#4]
2606CE:  BEQ             loc_260726
2606D0:  VMOV            S0, R11
2606D4:  MOVW            R1, #0x2424
2606D8:  ADDS            R6, R0, R1
2606DA:  ADD             R2, SP, #0x458+var_428
2606DC:  VCVT.F32.S32    S0, S0
2606E0:  LDR             R1, [SP,#0x458+var_42C]
2606E2:  ORR.W           R2, R2, #4
2606E6:  MOV             R4, R5
2606E8:  ADD.W           R1, R0, R1,LSL#10
2606EC:  ADDS            R1, #0x20 ; ' '
2606EE:  VLDR            S2, [R6,#-4]
2606F2:  SUBS            R4, #1
2606F4:  VLDR            S4, [R6]
2606F8:  ADD.W           R6, R6, #8
2606FC:  VMUL.F32        S2, S2, S0
260700:  VLDR            S6, [R1]
260704:  VMUL.F32        S4, S4, S0
260708:  VLDR            S8, [R1,#4]
26070C:  ADD.W           R1, R1, #8
260710:  VSUB.F32        S2, S6, S2
260714:  VSUB.F32        S4, S8, S4
260718:  VSTR            S2, [R2,#-4]
26071C:  VSTR            S4, [R2]
260720:  ADD.W           R2, R2, #8
260724:  BNE             loc_2606EE
260726:  LDR             R2, [SP,#0x458+var_444]
260728:  MOVW            R1, #0x286C
26072C:  LDR             R1, [R0,R1]
26072E:  CMP             R3, #0
260730:  ADD             R8, R3
260732:  LDR             R4, [R2]
260734:  MOVW            R2, #0x2824
260738:  LDR.W           R2, [R9,R2]
26073C:  MLS.W           R9, R1, R11, R2
260740:  LDR.W           R1, [R12]
260744:  MLS.W           R12, R4, R11, R1
260748:  ITTTT EQ
26074A:  LDRDEQ.W        R6, R2, [SP,#0x458+var_430]
26074E:  ADDEQ.W         R1, R6, R2,LSL#8
260752:  LDREQ           R3, [SP,#0x458+var_434]
260754:  LDREQ           R3, [R3]
260756:  ITTTT EQ
260758:  ADDEQ           R1, #0x10
26075A:  MOVWEQ          R4, #:lower16:(aZn18ctasksimpl_21+0xF); "eSitIdle10CreateTaskEv"
26075E:  MOVTEQ          R4, #:upper16:(aZn18ctasksimpl_21+0xF); "eSitIdle10CreateTaskEv"
260762:  ANDEQ.W         R4, R4, R12
260766:  ITTTT EQ
260768:  VMOVEQ          S0, R4
26076C:  ANDEQ.W         R4, R8, #0x3F ; '?'
260770:  VCVTEQ.F32.U32  S0, S0
260774:  STREQ.W         R3, [R1,R4,LSL#2]
260778:  ITTTT EQ
26077A:  SUBEQ.W         R3, R8, R12,LSR#20
26077E:  ANDEQ.W         R4, R3, #0x3F ; '?'
260782:  ADDEQ.W         R4, R1, R4,LSL#2
260786:  ADDEQ           R3, #0x3F ; '?'
260788:  ITTTT EQ
26078A:  ANDEQ.W         R3, R3, #0x3F ; '?'
26078E:  VLDREQ          S2, [R4]
260792:  ADDEQ.W         R3, R1, R3,LSL#2
260796:  VLDREQ          S4, [R3]
26079A:  ITTTT EQ
26079C:  VLDREQ          S6, =9.5367e-7
2607A0:  VSUBEQ.F32      S4, S4, S2
2607A4:  VMULEQ.F32      S0, S0, S6
2607A8:  VMULEQ.F32      S0, S0, S4
2607AC:  ITTTT EQ
2607AE:  SUBEQ.W         R3, R8, R9,LSR#20
2607B2:  MOVWEQ          R4, #:lower16:(aZn18ctasksimpl_21+0xF); "eSitIdle10CreateTaskEv"
2607B6:  MOVTEQ          R4, #:upper16:(aZn18ctasksimpl_21+0xF); "eSitIdle10CreateTaskEv"
2607BA:  ANDEQ.W         R4, R4, R9
2607BE:  ITTTT EQ
2607C0:  VMOVEQ          S4, R4
2607C4:  VCVTEQ.F32.U32  S4, S4
2607C8:  ADDEQ.W         R4, R3, #0x3F ; '?'
2607CC:  ANDEQ.W         R4, R4, #0x3F ; '?'
2607D0:  ITTTT EQ
2607D2:  VADDEQ.F32      S0, S2, S0
2607D6:  ADDEQ.W         R4, R1, R4,LSL#2
2607DA:  ANDEQ.W         R3, R3, #0x3F ; '?'
2607DE:  ADDEQ.W         R1, R1, R3,LSL#2
2607E2:  ITTTT EQ
2607E4:  VLDREQ          S2, [SP,#0x458+var_428]
2607E8:  ADDEQ.W         R3, R6, R2,LSL#10
2607EC:  VLDREQ          S8, [R1]
2607F0:  ADDEQ.W         R1, R8, #1
2607F4:  LDR             R6, [R7,#arg_4]
2607F6:  MOV.W           R2, #0
2607FA:  ITTTT EQ
2607FC:  VLDREQ          S10, [R4]
260800:  VMULEQ.F32      S0, S0, S2
260804:  ANDEQ.W         R1, R1, #0x7F
260808:  ADDEQ.W         R1, R3, R1,LSL#3
26080C:  ITTTT EQ
26080E:  VSUBEQ.F32      S2, S10, S8
260812:  VMULEQ.F32      S4, S4, S6
260816:  ADDEQ.W         R3, R1, #0x910
26081A:  VLDREQ          S6, [R3]
26081E:  ITTTT EQ
260820:  VADDEQ.F32      S0, S6, S0
260824:  VMULEQ.F32      S2, S4, S2
260828:  VLDREQ          S4, [LR]
26082C:  VLDREQ          S6, [LR,#4]
260830:  ITTTT EQ
260832:  VSUBEQ.F32      S0, S4, S0
260836:  VADDEQ.F32      S2, S8, S2
26083A:  VSTREQ          S0, [LR]
26083E:  VLDREQ          S0, [SP,#0x458+var_424]
260842:  ITTTT EQ
260844:  VMULEQ.F32      S0, S2, S0
260848:  ADDWEQ          R1, R1, #0x914
26084C:  VLDREQ          S2, [R1]
260850:  VADDEQ.F32      S0, S2, S0
260854:  ITTT EQ
260856:  VSUBEQ.F32      S0, S6, S0
26085A:  VSTREQ          S0, [LR,#4]
26085E:  MOVEQ           R3, #0
260860:  CMP.W           R11, #1
260864:  STR.W           R10, [SP,#0x458+var_454]
260868:  STR.W           R9, [SP,#0x458+var_438]
26086C:  BLT.W           loc_260A34
260870:  CMP             R6, #0
260872:  BEQ.W           loc_260A34
260876:  MOVW            R1, #0x286C
26087A:  VLDR            S0, =9.5367e-7
26087E:  ADD             R1, R0
260880:  STR             R1, [SP,#0x458+var_448]
260882:  MOVW            R1, #0x2424
260886:  ADD             R0, R1
260888:  STR             R0, [SP,#0x458+var_44C]
26088A:  ADD             R0, SP, #0x458+var_428
26088C:  MOVS            R2, #0
26088E:  ORR.W           R0, R0, #4
260892:  STR             R0, [SP,#0x458+var_450]
260894:  LDR             R0, [SP,#0x458+var_434]
260896:  AND.W           R6, R8, #0x3F ; '?'
26089A:  STR             R2, [SP,#0x458+var_43C]
26089C:  CMP             R5, #0
26089E:  LDR.W           R0, [R0,R2,LSL#2]
2608A2:  LDRD.W          R10, LR, [SP,#0x458+var_430]
2608A6:  ADD.W           R1, R10, LR,LSL#8
2608AA:  ADD.W           R1, R1, #0x10
2608AE:  STR.W           R0, [R1,R6,LSL#2]
2608B2:  SUB.W           R0, R8, R12,LSR#20
2608B6:  ADD.W           R6, R0, #0x3F ; '?'
2608BA:  LDR.W           R9, [SP,#0x458+var_438]
2608BE:  AND.W           R0, R0, #0x3F ; '?'
2608C2:  AND.W           R6, R6, #0x3F ; '?'
2608C6:  ADD.W           R0, R1, R0,LSL#2
2608CA:  SUB.W           R4, R8, R9,LSR#20
2608CE:  ADD.W           R6, R1, R6,LSL#2
2608D2:  AND.W           R2, R4, #0x3F ; '?'
2608D6:  ADD.W           R2, R1, R2,LSL#2
2608DA:  VLDR            S2, [R2]
2608DE:  ADD.W           R2, R4, #0x3F ; '?'
2608E2:  AND.W           R2, R2, #0x3F ; '?'
2608E6:  ADD.W           R2, R1, R2,LSL#2
2608EA:  VLDR            S4, [R2]
2608EE:  MOV             R2, #0xFFFFF
2608F6:  MOV             R4, R2
2608F8:  AND.W           R2, R12, R4
2608FC:  VMOV            S6, R2
260900:  AND.W           R2, R9, R4
260904:  MOV.W           R4, #0
260908:  VMOV            S8, R2
26090C:  VCVT.F32.U32    S10, S8
260910:  VCVT.F32.U32    S8, S6
260914:  LDR             R1, [SP,#0x458+var_444]
260916:  VLDR            S6, [R0]
26091A:  ADD.W           R0, R8, R5
26091E:  AND.W           R0, R0, #0x7F
260922:  LDR             R2, [SP,#0x458+var_448]
260924:  VLDR            S12, [R6]
260928:  ADD.W           R6, R10, LR,LSL#10
26092C:  LDR             R1, [R1]
26092E:  ADD.W           R0, R6, R0,LSL#3
260932:  LDR             R2, [R2]
260934:  STR.W           R4, [R0,#0x910]
260938:  ADD             R12, R1
26093A:  STR.W           R4, [R0,#0x914]
26093E:  ADD.W           R0, R8, #1
260942:  ADD             R9, R2
260944:  STR.W           R9, [SP,#0x458+var_438]
260948:  BEQ             loc_2609D4
26094A:  VSUB.F32        S4, S4, S2
26094E:  LDRD.W          R10, LR, [SP,#0x458+var_450]
260952:  VMUL.F32        S10, S10, S0
260956:  MOVS            R1, #0
260958:  VSUB.F32        S12, S12, S6
26095C:  VMUL.F32        S8, S8, S0
260960:  VMUL.F32        S4, S10, S4
260964:  VMUL.F32        S8, S8, S12
260968:  VADD.F32        S2, S2, S4
26096C:  VADD.F32        S4, S6, S8
260970:  ADD.W           R2, R8, R1
260974:  VLDR            S6, [R10,#-4]
260978:  ADDS            R2, #1
26097A:  ADDS            R1, #1
26097C:  AND.W           R2, R2, #0x7F
260980:  VMUL.F32        S8, S4, S6
260984:  CMP             R5, R1
260986:  ADD.W           R2, R6, R2,LSL#3
26098A:  ADD.W           R4, R2, #0x910
26098E:  ADDW            R2, R2, #0x914
260992:  VLDR            S10, [R4]
260996:  VADD.F32        S8, S10, S8
26099A:  VSTR            S8, [R4]
26099E:  VLDR            S8, [R10]
2609A2:  VLDR            S12, [R2]
2609A6:  VMUL.F32        S10, S2, S8
2609AA:  VADD.F32        S10, S12, S10
2609AE:  VSTR            S10, [R2]
2609B2:  VLDR            S10, [LR,#-4]
2609B6:  VLDR            S12, [LR]
2609BA:  ADD.W           LR, LR, #8
2609BE:  VADD.F32        S6, S6, S10
2609C2:  VADD.F32        S8, S8, S12
2609C6:  VSTR            S6, [R10,#-4]
2609CA:  VSTR            S8, [R10]
2609CE:  ADD.W           R10, R10, #8
2609D2:  BNE             loc_260970
2609D4:  AND.W           R2, R0, #0x7F
2609D8:  LDR             R1, [SP,#0x458+var_440]
2609DA:  CMP.W           R11, #2
2609DE:  ADD.W           R2, R6, R2,LSL#3
2609E2:  ADD.W           R1, R1, R3,LSL#2
2609E6:  ADD.W           R6, R2, #0x910
2609EA:  ADD.W           R3, R3, #1
2609EE:  VLDR            S2, [R1]
2609F2:  VLDR            S4, [R6]
2609F6:  ADD.W           R6, R1, #0x2000
2609FA:  VADD.F32        S2, S4, S2
2609FE:  VLDR            S4, [R6]
260A02:  VSTR            S2, [R1]
260A06:  ADDW            R1, R2, #0x914
260A0A:  VLDR            S2, [R1]
260A0E:  VADD.F32        S2, S2, S4
260A12:  VSTR            S2, [R6]
260A16:  LDR             R2, [SP,#0x458+var_43C]
260A18:  LDR             R6, [R7,#arg_4]
260A1A:  ADD.W           R2, R2, #1
260A1E:  BLT             loc_260A36
260A20:  SUB.W           R11, R11, #1
260A24:  CMP             R2, R6
260A26:  MOV             R8, R0
260A28:  BCC.W           loc_260894
260A2C:  B               loc_260A36
260A2E:  ALIGN 0x10
260A30:  DCFS 9.5367e-7
260A34:  MOV             R0, R8
260A36:  LDR             R1, [SP,#0x458+var_438]
260A38:  MOV.W           R10, R12,LSR#20
260A3C:  LDR             R4, [R7,#arg_0]
260A3E:  CMP             R2, R6
260A40:  MOV.W           R1, R1,LSR#20
260A44:  STR             R1, [SP,#0x458+var_438]
260A46:  BCS.W           loc_260B5E
260A4A:  ADDS            R1, R3, R6
260A4C:  STR             R1, [SP,#0x458+var_448]
260A4E:  ADDS            R1, R0, R6
260A50:  STR             R1, [SP,#0x458+var_44C]
260A52:  ADD             R1, SP, #0x458+var_428
260A54:  MOV.W           R8, #0
260A58:  MOV             R9, R2
260A5A:  ORR.W           R1, R1, #4
260A5E:  STR             R1, [SP,#0x458+var_444]
260A60:  STR             R2, [SP,#0x458+var_43C]
260A62:  LDR             R1, [SP,#0x458+var_434]
260A64:  AND.W           R4, R0, #0x3F ; '?'
260A68:  CMP             R5, #0
260A6A:  LDR.W           R12, [R1,R9,LSL#2]
260A6E:  LDRD.W          R6, R1, [SP,#0x458+var_430]
260A72:  ADD.W           R2, R6, R1,LSL#8
260A76:  ADD.W           R11, R6, R1,LSL#10
260A7A:  ADD.W           R2, R2, #0x10
260A7E:  ADD.W           R1, R0, R5
260A82:  AND.W           R1, R1, #0x7F
260A86:  STR.W           R12, [R2,R4,LSL#2]
260A8A:  SUB.W           R4, R0, R10
260A8E:  AND.W           R4, R4, #0x3F ; '?'
260A92:  LDR             R6, [SP,#0x458+var_438]
260A94:  ADD.W           R1, R11, R1,LSL#3
260A98:  ADD.W           R12, R2, R4,LSL#2
260A9C:  SUB.W           R4, R0, R6
260AA0:  AND.W           R4, R4, #0x3F ; '?'
260AA4:  VLDR            S2, [R12]
260AA8:  ADD.W           R12, R0, #1
260AAC:  ADD.W           R2, R2, R4,LSL#2
260AB0:  VLDR            S0, [R2]
260AB4:  STR.W           R8, [R1,#0x910]
260AB8:  STR.W           R8, [R1,#0x914]
260ABC:  BEQ             loc_260B08
260ABE:  LDR             R1, [SP,#0x458+var_444]
260AC0:  MOVS            R2, #0
260AC2:  ADDS            R4, R0, R2
260AC4:  VLDR            S4, [R1,#-4]
260AC8:  ADDS            R4, #1
260ACA:  ADDS            R2, #1
260ACC:  AND.W           R4, R4, #0x7F
260AD0:  VMUL.F32        S4, S2, S4
260AD4:  CMP             R5, R2
260AD6:  ADD.W           R4, R11, R4,LSL#3
260ADA:  ADD.W           LR, R4, #0x910
260ADE:  ADDW            R4, R4, #0x914
260AE2:  VLDR            S6, [LR]
260AE6:  VADD.F32        S4, S6, S4
260AEA:  VSTR            S4, [LR]
260AEE:  VLDR            S4, [R1]
260AF2:  ADD.W           R1, R1, #8
260AF6:  VLDR            S6, [R4]
260AFA:  VMUL.F32        S4, S0, S4
260AFE:  VADD.F32        S4, S6, S4
260B02:  VSTR            S4, [R4]
260B06:  BNE             loc_260AC2
260B08:  AND.W           R1, R12, #0x7F
260B0C:  LDR             R0, [SP,#0x458+var_440]
260B0E:  ADD.W           R9, R9, #1
260B12:  ADD.W           R1, R11, R1,LSL#3
260B16:  ADD.W           R0, R0, R3,LSL#2
260B1A:  ADD.W           R2, R1, #0x910
260B1E:  ADDS            R3, #1
260B20:  VLDR            S0, [R0]
260B24:  VLDR            S2, [R2]
260B28:  ADD.W           R2, R0, #0x2000
260B2C:  VADD.F32        S0, S2, S0
260B30:  VLDR            S2, [R2]
260B34:  VSTR            S0, [R0]
260B38:  ADDW            R0, R1, #0x914
260B3C:  VLDR            S0, [R0]
260B40:  LDR             R0, [R7,#arg_4]
260B42:  VADD.F32        S0, S0, S2
260B46:  CMP             R9, R0
260B48:  MOV             R0, R12
260B4A:  VSTR            S0, [R2]
260B4E:  BNE             loc_260A62
260B50:  LDR             R0, [SP,#0x458+var_43C]
260B52:  LDR             R1, [SP,#0x458+var_448]
260B54:  SUBS            R3, R1, R0
260B56:  LDR             R1, [SP,#0x458+var_44C]
260B58:  LDRD.W          R4, R2, [R7,#arg_0]
260B5C:  SUBS            R0, R1, R0
260B5E:  CMP             R3, R4
260B60:  SUB.W           R4, R7, #-var_1C
260B64:  ITTTT EQ
260B66:  LDREQ           R1, [SP,#0x458+var_434]
260B68:  LDREQ.W         R1, [R1,R2,LSL#2]
260B6C:  LDRDEQ.W        R5, R6, [SP,#0x458+var_430]
260B70:  ADDEQ.W         R2, R5, R6,LSL#8
260B74:  ITTTT EQ
260B76:  ADDEQ           R2, #0x10
260B78:  ANDEQ.W         R3, R0, #0x3F ; '?'
260B7C:  STREQ.W         R1, [R2,R3,LSL#2]
260B80:  SUBEQ.W         R1, R0, R10
260B84:  ITTTT EQ
260B86:  ANDEQ.W         R1, R1, #0x3F ; '?'
260B8A:  VLDREQ          S0, [SP,#0x458+var_428]
260B8E:  ADDEQ.W         R1, R2, R1,LSL#2
260B92:  VLDREQ          S2, [R1]
260B96:  ITTTT EQ
260B98:  ADDEQ.W         R1, R5, R6,LSL#10
260B9C:  ADDEQ           R3, R0, #1
260B9E:  VMULEQ.F32      S0, S2, S0
260BA2:  ANDEQ.W         R3, R3, #0x7F
260BA6:  ITTTT EQ
260BA8:  ADDEQ.W         R1, R1, R3,LSL#3
260BAC:  ADDEQ.W         R3, R1, #0x910
260BB0:  VLDREQ          S2, [R3]
260BB4:  VADDEQ.F32      S0, S2, S0
260BB8:  ITTTT EQ
260BBA:  LDREQ           R3, [SP,#0x458+var_454]
260BBC:  VLDREQ          S2, [R3]
260BC0:  VLDREQ          S4, [R3,#4]
260BC4:  VADDEQ.F32      S0, S2, S0
260BC8:  ITTTT EQ
260BCA:  LDREQ           R6, [SP,#0x458+var_438]
260BCC:  SUBEQ           R0, R0, R6
260BCE:  ANDEQ.W         R0, R0, #0x3F ; '?'
260BD2:  ADDEQ.W         R0, R2, R0,LSL#2
260BD6:  ITTTT EQ
260BD8:  VLDREQ          S2, [R0]
260BDC:  VSTREQ          S0, [R3]
260BE0:  VLDREQ          S0, [SP,#0x458+var_424]
260BE4:  VMULEQ.F32      S0, S2, S0
260BE8:  ITTTT EQ
260BEA:  ADDWEQ          R0, R1, #0x914
260BEE:  VLDREQ          S2, [R0]
260BF2:  VADDEQ.F32      S0, S2, S0
260BF6:  VADDEQ.F32      S0, S4, S0
260BFA:  IT EQ
260BFC:  VSTREQ          S0, [R3,#4]
260C00:  MOV             SP, R4
260C02:  POP.W           {R8-R11}
260C06:  POP             {R4-R7,PC}
