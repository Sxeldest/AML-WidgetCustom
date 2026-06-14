; =========================================================
; Game Engine Function: sub_1DE5A0
; Address            : 0x1DE5A0 - 0x1DED9C
; =========================================================

1DE5A0:  PUSH            {R4-R11,LR}
1DE5A4:  ADD             R11, SP, #0x1C
1DE5A8:  SUB             SP, SP, #4
1DE5AC:  VPUSH           {D8}
1DE5B0:  SUB             SP, SP, #0x60
1DE5B4:  VLDR            S0, [R1,#0xC]
1DE5B8:  VMOV.F32        S2, #1.0
1DE5BC:  MOV             R4, R0
1DE5C0:  MOV             R0, #1
1DE5C4:  VCVT.F32.U32    S16, S0
1DE5C8:  VDIV.F32        S0, S2, S16
1DE5CC:  VLDR            S2, =0.2
1DE5D0:  VADD.F32        S0, S0, S2
1DE5D4:  VMUL.F32        S0, S0, S16
1DE5D8:  VCVT.S32.F32    S0, S0
1DE5DC:  VMOV            R2, S0
1DE5E0:  ADD             R1, R2, #1
1DE5E4:  CMP             R1, #2
1DE5E8:  MOV             R1, #1
1DE5EC:  BCC             loc_1DE628
1DE5F0:  B               loc_1DE60C
1DE5F4:  DCFS 0.2
1DE5F8:  DCFS 0.4
1DE5FC:  DCFS 0.0015
1DE600:  DCFS 0.0045
1DE604:  DCFS 0.0135
1DE608:  DCFS 0.0405
1DE60C:  MOV             R1, #1
1DE610:  MOV             R3, #0
1DE614:  MOV             R7, R2,LSR#1
1DE618:  CMP             R3, R2,LSR#1
1DE61C:  MOV             R1, R1,LSL#1
1DE620:  MOV             R2, R7
1DE624:  BNE             loc_1DE614
1DE628:  VLDR            S0, =0.4
1DE62C:  MOV             R2, #0
1DE630:  STR             R2, [R4,#0x28]
1DE634:  SUB             R3, R1, #1
1DE638:  VMUL.F32        S0, S16, S0
1DE63C:  VCVT.S32.F32    S0, S0
1DE640:  STR             R3, [R4,#0x24]
1DE644:  VMOV            R3, S0
1DE648:  ADD             R7, R3, #1
1DE64C:  CMP             R7, #2
1DE650:  BCC             loc_1DE66C
1DE654:  MOV             R0, #1
1DE658:  MOV             R7, R3,LSR#1
1DE65C:  CMP             R2, R3,LSR#1
1DE660:  MOV             R0, R0,LSL#1
1DE664:  MOV             R3, R7
1DE668:  BNE             loc_1DE658
1DE66C:  VLDR            S0, =0.0015
1DE670:  SUB             R2, R0, #1
1DE674:  STR             R1, [R4,#0x44]
1DE678:  ADD             R5, R0, R1
1DE67C:  VMUL.F32        S0, S16, S0
1DE680:  MOV             R0, #1
1DE684:  VCVT.S32.F32    S0, S0
1DE688:  STR             R2, [R4,#0x40]
1DE68C:  VMOV            R12, S0
1DE690:  ADD             R2, R12, #1
1DE694:  CMP             R2, #2
1DE698:  MOV             R2, #1
1DE69C:  BCC             loc_1DE6C0
1DE6A0:  MOV             R2, #1
1DE6A4:  MOV             R3, #0
1DE6A8:  MOV             R7, R12
1DE6AC:  MOV             R6, R7,LSR#1
1DE6B0:  CMP             R3, R7,LSR#1
1DE6B4:  MOV             R2, R2,LSL#1
1DE6B8:  MOV             R7, R6
1DE6BC:  BNE             loc_1DE6AC
1DE6C0:  VLDR            S0, =0.0045
1DE6C4:  SUB             R3, R2, #1
1DE6C8:  STR             R12, [R11,#var_40]
1DE6CC:  VMUL.F32        S0, S16, S0
1DE6D0:  STR             R5, [R4,#0x68]
1DE6D4:  VCVT.S32.F32    S0, S0
1DE6D8:  STR             R3, [R4,#0x64]
1DE6DC:  STR             R5, [SP,#0x88+var_70]
1DE6E0:  ADD             R5, R2, R5
1DE6E4:  VMOV            R6, S0
1DE6E8:  ADD             R2, R6, #1
1DE6EC:  CMP             R2, #2
1DE6F0:  BCC             loc_1DE714
1DE6F4:  MOV             R0, #1
1DE6F8:  MOV             R2, #0
1DE6FC:  MOV             R3, R6
1DE700:  MOV             R7, R3,LSR#1
1DE704:  CMP             R2, R3,LSR#1
1DE708:  MOV             R0, R0,LSL#1
1DE70C:  MOV             R3, R7
1DE710:  BNE             loc_1DE700
1DE714:  VLDR            S0, =0.0135
1DE718:  SUB             R2, R0, #1
1DE71C:  STR             R6, [SP,#0x88+var_44]
1DE720:  ADD             R12, R0, R5
1DE724:  VMUL.F32        S0, S16, S0
1DE728:  STR             R5, [R4,#0x70]
1DE72C:  MOV             R0, #1
1DE730:  VCVT.S32.F32    S0, S0
1DE734:  STR             R2, [R4,#0x6C]
1DE738:  STR             R5, [R11,#var_30]
1DE73C:  VMOV            R10, S0
1DE740:  ADD             R2, R10, #1
1DE744:  CMP             R2, #2
1DE748:  MOV             R2, #1
1DE74C:  BCC             loc_1DE770
1DE750:  MOV             R2, #1
1DE754:  MOV             R3, #0
1DE758:  MOV             R7, R10
1DE75C:  MOV             R6, R7,LSR#1
1DE760:  CMP             R3, R7,LSR#1
1DE764:  MOV             R2, R2,LSL#1
1DE768:  MOV             R7, R6
1DE76C:  BNE             loc_1DE75C
1DE770:  VLDR            S0, =0.0405
1DE774:  SUB             R3, R2, #1
1DE778:  STR             R12, [R4,#0x78]
1DE77C:  ADD             R9, R2, R12
1DE780:  VMUL.F32        S0, S16, S0
1DE784:  VCVT.S32.F32    S0, S0
1DE788:  STR             R3, [R4,#0x74]
1DE78C:  VMOV            R6, S0
1DE790:  ADD             R2, R6, #1
1DE794:  CMP             R2, #2
1DE798:  BCC             loc_1DE7BC
1DE79C:  MOV             R0, #1
1DE7A0:  MOV             R2, #0
1DE7A4:  MOV             R3, R6
1DE7A8:  MOV             R7, R3,LSR#1
1DE7AC:  CMP             R2, R3,LSR#1
1DE7B0:  MOV             R0, R0,LSL#1
1DE7B4:  MOV             R3, R7
1DE7B8:  BNE             loc_1DE7A8
1DE7BC:  VLDR            S0, =0.0633
1DE7C0:  SUB             R2, R0, #1
1DE7C4:  STR             R6, [SP,#0x88+var_4C]
1DE7C8:  ADD             R5, R0, R9
1DE7CC:  VMUL.F32        S0, S16, S0
1DE7D0:  STR             R9, [R4,#0x80]
1DE7D4:  MOV             R0, #1
1DE7D8:  VCVT.S32.F32    S0, S0
1DE7DC:  STR             R2, [R4,#0x7C]
1DE7E0:  VMOV            R3, S0
1DE7E4:  ADD             R2, R3, #1
1DE7E8:  CMP             R2, #2
1DE7EC:  MOV             R2, #1
1DE7F0:  BCC             loc_1DE810
1DE7F4:  MOV             R2, #1
1DE7F8:  MOV             R7, #0
1DE7FC:  MOV             R6, R3,LSR#1
1DE800:  CMP             R7, R3,LSR#1
1DE804:  MOV             R2, R2,LSL#1
1DE808:  MOV             R3, R6
1DE80C:  BNE             loc_1DE7FC
1DE810:  VLDR            S0, =0.0151
1DE814:  SUB             R3, R2, #1
1DE818:  STR             R5, [R4,#0xBC]
1DE81C:  ADD             R8, R2, R5
1DE820:  VMUL.F32        S0, S16, S0
1DE824:  VCVT.S32.F32    S0, S0
1DE828:  STR             R3, [R4,#0xB8]
1DE82C:  STR             R5, [SP,#0x88+var_78]
1DE830:  VMOV            R6, S0
1DE834:  ADD             R2, R6, #1
1DE838:  CMP             R2, #2
1DE83C:  BCC             loc_1DE860
1DE840:  MOV             R0, #1
1DE844:  MOV             R2, #0
1DE848:  MOV             R3, R6
1DE84C:  MOV             R7, R3,LSR#1
1DE850:  CMP             R2, R3,LSR#1
1DE854:  MOV             R0, R0,LSL#1
1DE858:  MOV             R3, R7
1DE85C:  BNE             loc_1DE84C
1DE860:  VLDR            S0, =0.0167
1DE864:  SUB             R2, R0, #1
1DE868:  STR             R6, [SP,#0x88+var_50]
1DE86C:  ADD             R0, R0, R8
1DE870:  VMUL.F32        S0, S16, S0
1DE874:  STR             R8, [R4,#0xF0]
1DE878:  VCVT.S32.F32    S0, S0
1DE87C:  STR             R2, [R4,#0xEC]
1DE880:  STR             R0, [R11,#var_2C]
1DE884:  MOV             R0, #1
1DE888:  VMOV            R5, S0
1DE88C:  ADD             R2, R5, #1
1DE890:  CMP             R2, #2
1DE894:  MOV             R2, #1
1DE898:  BCC             loc_1DE8BC
1DE89C:  MOV             R2, #1
1DE8A0:  MOV             R3, #0
1DE8A4:  MOV             R7, R5
1DE8A8:  MOV             R6, R7,LSR#1
1DE8AC:  CMP             R3, R7,LSR#1
1DE8B0:  MOV             R2, R2,LSL#1
1DE8B4:  MOV             R7, R6
1DE8B8:  BNE             loc_1DE8A8
1DE8BC:  VLDR            S0, =0.0183
1DE8C0:  SUB             R3, R2, #1
1DE8C4:  LDR             R6, [R11,#var_2C]
1DE8C8:  VMUL.F32        S0, S16, S0
1DE8CC:  STR             R5, [SP,#0x88+var_54]
1DE8D0:  STR             R6, [R4,#0xF8]
1DE8D4:  ADD             LR, R2, R6
1DE8D8:  VCVT.S32.F32    S0, S0
1DE8DC:  STR             R3, [R4,#0xF4]
1DE8E0:  VMOV            R6, S0
1DE8E4:  ADD             R2, R6, #1
1DE8E8:  CMP             R2, #2
1DE8EC:  BCC             loc_1DE910
1DE8F0:  MOV             R0, #1
1DE8F4:  MOV             R2, #0
1DE8F8:  MOV             R3, R6
1DE8FC:  MOV             R7, R3,LSR#1
1DE900:  CMP             R2, R3,LSR#1
1DE904:  MOV             R0, R0,LSL#1
1DE908:  MOV             R3, R7
1DE90C:  BNE             loc_1DE8FC
1DE910:  VLDR            S0, =0.02
1DE914:  SUB             R2, R0, #1
1DE918:  STR             R10, [SP,#0x88+var_48]
1DE91C:  ADD             R10, R0, LR
1DE920:  VMUL.F32        S0, S16, S0
1DE924:  STR             R6, [SP,#0x88+var_58]
1DE928:  STR             LR, [R4,#0x100]
1DE92C:  MOV             R0, #1
1DE930:  VCVT.S32.F32    S0, S0
1DE934:  STR             R2, [R4,#0xFC]
1DE938:  VMOV            R5, S0
1DE93C:  ADD             R2, R5, #1
1DE940:  CMP             R2, #2
1DE944:  MOV             R2, #1
1DE948:  BCC             loc_1DE96C
1DE94C:  MOV             R2, #1
1DE950:  MOV             R3, #0
1DE954:  MOV             R7, R5
1DE958:  MOV             R6, R7,LSR#1
1DE95C:  CMP             R3, R7,LSR#1
1DE960:  MOV             R2, R2,LSL#1
1DE964:  MOV             R7, R6
1DE968:  BNE             loc_1DE958
1DE96C:  VLDR            S0, =0.1055
1DE970:  SUB             R3, R2, #1
1DE974:  STR             R12, [SP,#0x88+var_74]
1DE978:  ADD             R12, R2, R10
1DE97C:  VMUL.F32        S0, S16, S0
1DE980:  STR             R10, [R4,#0x108]
1DE984:  VCVT.S32.F32    S0, S0
1DE988:  STR             R3, [R4,#0x104]
1DE98C:  VMOV            R2, S0
1DE990:  ADD             R3, R2, #1
1DE994:  CMP             R3, #2
1DE998:  BCC             loc_1DE9B8
1DE99C:  MOV             R0, #1
1DE9A0:  MOV             R3, #0
1DE9A4:  MOV             R7, R2,LSR#1
1DE9A8:  CMP             R3, R2,LSR#1
1DE9AC:  MOV             R0, R0,LSL#1
1DE9B0:  MOV             R2, R7
1DE9B4:  BNE             loc_1DE9A4
1DE9B8:  VLDR            S0, =0.1555
1DE9BC:  SUB             R2, R0, #1
1DE9C0:  STR             R9, [R11,#var_34]
1DE9C4:  ADD             R9, R0, R12
1DE9C8:  VMUL.F32        S0, S16, S0
1DE9CC:  STR             R5, [SP,#0x88+var_5C]
1DE9D0:  STR             R12, [R4,#0x130]
1DE9D4:  MOV             R0, #1
1DE9D8:  VCVT.S32.F32    S0, S0
1DE9DC:  STR             R2, [R4,#0x12C]
1DE9E0:  VMOV            R3, S0
1DE9E4:  ADD             R2, R3, #1
1DE9E8:  CMP             R2, #2
1DE9EC:  MOV             R2, #1
1DE9F0:  BCC             loc_1DEA10
1DE9F4:  MOV             R2, #1
1DE9F8:  MOV             R7, #0
1DE9FC:  MOV             R6, R3,LSR#1
1DEA00:  CMP             R7, R3,LSR#1
1DEA04:  MOV             R2, R2,LSL#1
1DEA08:  MOV             R3, R6
1DEA0C:  BNE             loc_1DE9FC
1DEA10:  VLDR            S0, =0.2305
1DEA14:  SUB             R3, R2, #1
1DEA18:  STR             R8, [SP,#0x88+var_7C]
1DEA1C:  ADD             R5, R2, R9
1DEA20:  VMUL.F32        S0, S16, S0
1DEA24:  STR             R9, [R4,#0x138]
1DEA28:  VCVT.S32.F32    S0, S0
1DEA2C:  STR             R3, [R4,#0x134]
1DEA30:  VMOV            R2, S0
1DEA34:  ADD             R3, R2, #1
1DEA38:  CMP             R3, #2
1DEA3C:  BCC             loc_1DEA5C
1DEA40:  MOV             R0, #1
1DEA44:  MOV             R3, #0
1DEA48:  MOV             R7, R2,LSR#1
1DEA4C:  CMP             R3, R2,LSR#1
1DEA50:  MOV             R0, R0,LSL#1
1DEA54:  MOV             R2, R7
1DEA58:  BNE             loc_1DEA48
1DEA5C:  VLDR            S0, =0.34
1DEA60:  ADD             R8, R0, R5
1DEA64:  STR             R5, [R4,#0x140]
1DEA68:  SUB             R2, R0, #1
1DEA6C:  VMUL.F32        S0, S16, S0
1DEA70:  MOV             R0, #1
1DEA74:  VCVT.S32.F32    S0, S0
1DEA78:  STR             R2, [R4,#0x13C]
1DEA7C:  STR             R5, [R11,#var_3C]
1DEA80:  VMOV            R6, S0
1DEA84:  ADD             R3, R6, #1
1DEA88:  CMP             R3, #2
1DEA8C:  MOV             R3, #1
1DEA90:  BCC             loc_1DEAB0
1DEA94:  MOV             R3, #1
1DEA98:  MOV             R5, #0
1DEA9C:  MOV             R7, R6,LSR#1
1DEAA0:  CMP             R5, R6,LSR#1
1DEAA4:  MOV             R3, R3,LSL#1
1DEAA8:  MOV             R6, R7
1DEAAC:  BNE             loc_1DEA9C
1DEAB0:  VLDR            S0, =0.0133
1DEAB4:  SUB             R7, R3, #1
1DEAB8:  STR             R10, [R11,#var_38]
1DEABC:  ADD             R3, R3, R8
1DEAC0:  VMUL.F32        S0, S16, S0
1DEAC4:  STR             R8, [R4,#0x148]
1DEAC8:  VCVT.S32.F32    S0, S0
1DEACC:  STR             R7, [R4,#0x144]
1DEAD0:  VMOV            R2, S0
1DEAD4:  ADD             R7, R2, #1
1DEAD8:  CMP             R7, #2
1DEADC:  BCC             loc_1DEB00
1DEAE0:  MOV             R0, #1
1DEAE4:  MOV             R5, #0
1DEAE8:  MOV             R6, R2
1DEAEC:  MOV             R7, R6,LSR#1
1DEAF0:  CMP             R5, R6,LSR#1
1DEAF4:  MOV             R0, R0,LSL#1
1DEAF8:  MOV             R6, R7
1DEAFC:  BNE             loc_1DEAEC
1DEB00:  VMOV.F32        S0, #0.25
1DEB04:  STR             R3, [R4,#0x1B0]
1DEB08:  SUB             R7, R0, #1
1DEB0C:  ADD             R10, R0, R3
1DEB10:  MOV             R0, #1
1DEB14:  VMUL.F32        S0, S16, S0
1DEB18:  VCVT.S32.F32    S0, S0
1DEB1C:  STR             R7, [R4,#0x1AC]
1DEB20:  VMOV            R5, S0
1DEB24:  ADD             R7, R5, #1
1DEB28:  CMP             R7, #2
1DEB2C:  BCC             loc_1DEB4C
1DEB30:  MOV             R0, #1
1DEB34:  MOV             R6, #0
1DEB38:  MOV             R7, R5,LSR#1
1DEB3C:  CMP             R6, R5,LSR#1
1DEB40:  MOV             R0, R0,LSL#1
1DEB44:  MOV             R5, R7
1DEB48:  BNE             loc_1DEB38
1DEB4C:  STR             R2, [SP,#0x88+var_60]
1DEB50:  SUB             R7, R0, #1
1DEB54:  STR             R7, [R4,#0x1A4]
1DEB58:  ADD             R5, R0, R10
1DEB5C:  STR             R10, [R4,#0x1A8]
1DEB60:  LDR             R7, [R4,#0x14]
1DEB64:  CMP             R5, R7
1DEB68:  BNE             loc_1DEBB4
1DEB6C:  MOV             R2, #0
1DEB70:  LDR             R0, [R4,#0x10]
1DEB74:  STR             R2, [SP,#0x88+var_64]
1DEB78:  MOV             R2, R9
1DEB7C:  STR             LR, [SP,#0x88+var_6C]
1DEB80:  STR             R8, [SP,#0x88+var_68]
1DEB84:  LDR             R7, [SP,#0x88+var_70]
1DEB88:  LDR             LR, [SP,#0x88+var_74]
1DEB8C:  LDR             R6, [SP,#0x88+var_78]
1DEB90:  LDR             R9, [SP,#0x88+var_7C]
1DEB94:  LDR             R8, [R11,#var_2C]
1DEB98:  B               loc_1DEC68
1DEB9C:  DCFS 0.0633
1DEBA0:  DCFS 0.0151
1DEBA4:  DCFS 0.0167
1DEBA8:  DCFS 0.0183
1DEBAC:  DCFS 0.02
1DEBB0:  DCFS 0.1055
1DEBB4:  LDR             R0, =(LogLevel_ptr - 0x1DEBC0)
1DEBB8:  LDR             R0, [PC,R0]; LogLevel
1DEBBC:  LDR             R0, [R0]
1DEBC0:  CMP             R0, #3
1DEBC4:  BCC             loc_1DEBEC
1DEBC8:  VMOV            S0, R5
1DEBCC:  MOV             R2, R5
1DEBD0:  VCVT.F32.U32    S0, S0
1DEBD4:  VDIV.F32        S0, S0, S16
1DEBD8:  VCVT.F64.F32    D0, S0
1DEBDC:  VSTR            D0, [SP,#0x88+var_88]
1DEBE0:  ADR             R0, aAlloclines; "AllocLines"
1DEBE4:  ADR             R1, aNewReverbBuffe; "New reverb buffer length: %u samples (%"...
1DEBE8:  BL              j_al_print
1DEBEC:  LDR             R0, [R4,#0x10]; ptr
1DEBF0:  MOV             R1, R5,LSL#2; size
1DEBF4:  BL              realloc
1DEBF8:  CMP             R0, #0
1DEBFC:  BEQ             loc_1DED88
1DEC00:  LDR             R1, [R4,#0x28]
1DEC04:  STR             R1, [SP,#0x88+var_64]
1DEC08:  LDR             R2, [R4,#0x70]
1DEC0C:  LDR             R1, [R4,#0x44]
1DEC10:  LDR             R7, [R4,#0x68]
1DEC14:  STR             R2, [R11,#var_30]
1DEC18:  LDR             R10, [R4,#0x1A8]
1DEC1C:  LDR             R3, [R4,#0x1B0]
1DEC20:  STR             R5, [R4,#0x14]
1DEC24:  LDR             R2, [R4,#0x148]
1DEC28:  STR             R2, [SP,#0x88+var_68]
1DEC2C:  LDR             R2, [R4,#0x108]
1DEC30:  STR             R2, [R11,#var_38]
1DEC34:  LDR             R2, [R4,#0x80]
1DEC38:  STR             R2, [R11,#var_34]
1DEC3C:  LDR             R2, [R4,#0x140]
1DEC40:  STR             R2, [R11,#var_3C]
1DEC44:  LDR             R2, [R4,#0x100]
1DEC48:  STR             R2, [SP,#0x88+var_6C]
1DEC4C:  LDR             LR, [R4,#0x78]
1DEC50:  LDR             R2, [R4,#0x138]
1DEC54:  LDR             R8, [R4,#0xF8]
1DEC58:  LDR             R12, [R4,#0x130]
1DEC5C:  LDR             R9, [R4,#0xF0]
1DEC60:  STR             R0, [R4,#0x10]
1DEC64:  LDR             R6, [R4,#0xBC]
1DEC68:  ADD             R1, R0, R1,LSL#2
1DEC6C:  ADD             R6, R0, R6,LSL#2
1DEC70:  STR             R6, [R4,#0xBC]
1DEC74:  CMP             R5, #0
1DEC78:  STR             R1, [R4,#0x44]
1DEC7C:  ADD             R1, R0, R7,LSL#2
1DEC80:  STR             R1, [R4,#0x68]
1DEC84:  ADD             R1, R0, R9,LSL#2
1DEC88:  STR             R1, [R4,#0xF0]
1DEC8C:  ADD             R1, R0, R12,LSL#2
1DEC90:  STR             R1, [R4,#0x130]
1DEC94:  LDR             R1, [R11,#var_30]
1DEC98:  ADD             R1, R0, R1,LSL#2
1DEC9C:  STR             R1, [R4,#0x70]
1DECA0:  ADD             R1, R0, R8,LSL#2
1DECA4:  STR             R1, [R4,#0xF8]
1DECA8:  ADD             R1, R0, R2,LSL#2
1DECAC:  STR             R1, [R4,#0x138]
1DECB0:  ADD             R1, R0, LR,LSL#2
1DECB4:  STR             R1, [R4,#0x78]
1DECB8:  LDR             R1, [SP,#0x88+var_6C]
1DECBC:  ADD             R1, R0, R1,LSL#2
1DECC0:  STR             R1, [R4,#0x100]
1DECC4:  LDR             R1, [R11,#var_3C]
1DECC8:  ADD             R1, R0, R1,LSL#2
1DECCC:  STR             R1, [R4,#0x140]
1DECD0:  LDR             R1, [R11,#var_34]
1DECD4:  ADD             R1, R0, R1,LSL#2
1DECD8:  STR             R1, [R4,#0x80]
1DECDC:  LDR             R1, [R11,#var_38]
1DECE0:  ADD             R1, R0, R1,LSL#2
1DECE4:  STR             R1, [R4,#0x108]
1DECE8:  LDR             R1, [SP,#0x88+var_68]
1DECEC:  ADD             R1, R0, R1,LSL#2
1DECF0:  STR             R1, [R4,#0x148]
1DECF4:  LDR             R1, [SP,#0x88+var_64]
1DECF8:  ADD             R1, R0, R1,LSL#2
1DECFC:  STR             R1, [R4,#0x28]
1DED00:  ADD             R1, R0, R3,LSL#2
1DED04:  STR             R1, [R4,#0x1B0]
1DED08:  ADD             R1, R0, R10,LSL#2
1DED0C:  STR             R1, [R4,#0x1A8]
1DED10:  BEQ             loc_1DED1C
1DED14:  MOV             R1, R5,LSL#2; n
1DED18:  BL              sub_22178C
1DED1C:  VLDR            S0, =100000.0
1DED20:  LDR             R0, [R11,#var_40]
1DED24:  VDIV.F32        S0, S0, S16
1DED28:  STR             R0, [R4,#0x84]
1DED2C:  LDR             R0, [SP,#0x88+var_44]
1DED30:  STR             R0, [R4,#0x88]
1DED34:  LDR             R0, [SP,#0x88+var_48]
1DED38:  STR             R0, [R4,#0x8C]
1DED3C:  LDR             R0, [SP,#0x88+var_4C]
1DED40:  STR             R0, [R4,#0x90]
1DED44:  LDR             R0, [SP,#0x88+var_50]
1DED48:  STR             R0, [R4,#0x10C]
1DED4C:  LDR             R0, [SP,#0x88+var_54]
1DED50:  STR             R0, [R4,#0x110]
1DED54:  LDR             R0, [SP,#0x88+var_58]
1DED58:  STR             R0, [R4,#0x114]
1DED5C:  LDR             R0, [SP,#0x88+var_5C]
1DED60:  STR             R0, [R4,#0x118]
1DED64:  LDR             R0, [SP,#0x88+var_60]
1DED68:  STR             R0, [R4,#0x1C4]
1DED6C:  MOV             R0, #0x3D449BA6; x
1DED74:  VMOV            R1, S0; y
1DED78:  BL              powf
1DED7C:  STR             R0, [R4,#0x38]
1DED80:  MOV             R0, #1
1DED84:  B               loc_1DED8C
1DED88:  MOV             R0, #0
1DED8C:  SUB             SP, R11, #0x28 ; '('
1DED90:  VPOP            {D8}
1DED94:  ADD             SP, SP, #4
1DED98:  POP             {R4-R11,PC}
