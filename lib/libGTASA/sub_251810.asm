; =========================================================
; Game Engine Function: sub_251810
; Address            : 0x251810 - 0x251E2C
; =========================================================

251810:  PUSH            {R4-R7,LR}
251812:  ADD             R7, SP, #0xC
251814:  PUSH.W          {R8-R11}
251818:  SUB             SP, SP, #4
25181A:  VPUSH           {D8}
25181E:  SUB             SP, SP, #0x58
251820:  VLDR            S0, [R1,#0x10]
251824:  VMOV.F32        S2, #1.0
251828:  MOV             R4, R0
25182A:  VCVT.F32.U32    S16, S0
25182E:  VDIV.F32        S0, S2, S16
251832:  VLDR            S2, =0.2
251836:  VADD.F32        S0, S0, S2
25183A:  VMUL.F32        S0, S0, S16
25183E:  VCVT.S32.F32    S0, S0
251842:  VMOV            R0, S0
251846:  ADDS            R1, R0, #1
251848:  BEQ             loc_251864
25184A:  ORR.W           R0, R0, R0,LSR#1
25184E:  ORR.W           R0, R0, R0,LSR#2
251852:  ORR.W           R0, R0, R0,LSR#4
251856:  ORR.W           R0, R0, R0,LSR#8
25185A:  ORR.W           R0, R0, R0,LSR#16
25185E:  ADD.W           LR, R0, #1
251862:  B               loc_251868
251864:  MOV.W           LR, #1
251868:  VLDR            S0, =0.4
25186C:  MOVS            R0, #0
25186E:  STR             R0, [R4,#0x28]
251870:  SUB.W           R0, LR, #1
251874:  VMUL.F32        S0, S16, S0
251878:  VCVT.S32.F32    S0, S0
25187C:  STR             R0, [R4,#0x24]
25187E:  VMOV            R0, S0
251882:  ADDS            R1, R0, #1
251884:  BEQ             loc_25189E
251886:  ORR.W           R0, R0, R0,LSR#1
25188A:  ORR.W           R0, R0, R0,LSR#2
25188E:  ORR.W           R0, R0, R0,LSR#4
251892:  ORR.W           R0, R0, R0,LSR#8
251896:  ORR.W           R0, R0, R0,LSR#16
25189A:  ADDS            R0, #1
25189C:  B               loc_2518A0
25189E:  MOVS            R0, #1
2518A0:  VLDR            S0, =0.0015
2518A4:  SUBS            R1, R0, #1
2518A6:  STR.W           LR, [R4,#0x44]
2518AA:  ADD.W           R9, R0, LR
2518AE:  VMUL.F32        S0, S16, S0
2518B2:  VCVT.S32.F32    S0, S0
2518B6:  STR             R1, [R4,#0x40]
2518B8:  VMOV            R1, S0
2518BC:  STR             R1, [SP,#0x80+var_44]
2518BE:  ADDS            R0, R1, #1
2518C0:  BEQ             loc_2518DA
2518C2:  ORR.W           R0, R1, R1,LSR#1
2518C6:  ORR.W           R0, R0, R0,LSR#2
2518CA:  ORR.W           R0, R0, R0,LSR#4
2518CE:  ORR.W           R0, R0, R0,LSR#8
2518D2:  ORR.W           R0, R0, R0,LSR#16
2518D6:  ADDS            R0, #1
2518D8:  B               loc_2518DC
2518DA:  MOVS            R0, #1
2518DC:  VLDR            S0, =0.0045
2518E0:  SUBS            R1, R0, #1
2518E2:  STR.W           R9, [R4,#0x68]
2518E6:  ADD.W           R10, R0, R9
2518EA:  VMUL.F32        S0, S16, S0
2518EE:  VCVT.S32.F32    S0, S0
2518F2:  STR             R1, [R4,#0x64]
2518F4:  VMOV            R1, S0
2518F8:  STR             R1, [SP,#0x80+var_48]
2518FA:  ADDS            R0, R1, #1
2518FC:  BEQ             loc_251916
2518FE:  ORR.W           R0, R1, R1,LSR#1
251902:  ORR.W           R0, R0, R0,LSR#2
251906:  ORR.W           R0, R0, R0,LSR#4
25190A:  ORR.W           R0, R0, R0,LSR#8
25190E:  ORR.W           R0, R0, R0,LSR#16
251912:  ADDS            R0, #1
251914:  B               loc_251918
251916:  MOVS            R0, #1
251918:  VLDR            S0, =0.0135
25191C:  SUBS            R1, R0, #1
25191E:  STR.W           R10, [R4,#0x70]
251922:  ADD.W           R3, R0, R10
251926:  VMUL.F32        S0, S16, S0
25192A:  VCVT.S32.F32    S0, S0
25192E:  STR             R1, [R4,#0x6C]
251930:  VMOV            R1, S0
251934:  STR             R1, [SP,#0x80+var_4C]
251936:  ADDS            R0, R1, #1
251938:  BEQ             loc_251952
25193A:  ORR.W           R0, R1, R1,LSR#1
25193E:  ORR.W           R0, R0, R0,LSR#2
251942:  ORR.W           R0, R0, R0,LSR#4
251946:  ORR.W           R0, R0, R0,LSR#8
25194A:  ORR.W           R0, R0, R0,LSR#16
25194E:  ADDS            R0, #1
251950:  B               loc_251954
251952:  MOVS            R0, #1
251954:  VLDR            S0, =0.0405
251958:  SUBS            R1, R0, #1
25195A:  STR             R3, [R4,#0x78]
25195C:  ADDS            R2, R0, R3
25195E:  VMUL.F32        S0, S16, S0
251962:  VCVT.S32.F32    S0, S0
251966:  STR             R1, [R4,#0x74]
251968:  VMOV            R1, S0
25196C:  STR             R1, [SP,#0x80+var_50]
25196E:  ADDS            R0, R1, #1
251970:  BEQ             loc_25198A
251972:  ORR.W           R0, R1, R1,LSR#1
251976:  ORR.W           R0, R0, R0,LSR#2
25197A:  ORR.W           R0, R0, R0,LSR#4
25197E:  ORR.W           R0, R0, R0,LSR#8
251982:  ORR.W           R0, R0, R0,LSR#16
251986:  ADDS            R0, #1
251988:  B               loc_25198C
25198A:  MOVS            R0, #1
25198C:  VLDR            S0, =0.0633
251990:  SUBS            R1, R0, #1
251992:  STR.W           R2, [R4,#0x80]
251996:  ADD.W           R8, R0, R2
25199A:  VMUL.F32        S0, S16, S0
25199E:  VCVT.S32.F32    S0, S0
2519A2:  STR             R1, [R4,#0x7C]
2519A4:  VMOV            R0, S0
2519A8:  ADDS            R1, R0, #1
2519AA:  BEQ             loc_2519C4
2519AC:  ORR.W           R0, R0, R0,LSR#1
2519B0:  ORR.W           R0, R0, R0,LSR#2
2519B4:  ORR.W           R0, R0, R0,LSR#4
2519B8:  ORR.W           R0, R0, R0,LSR#8
2519BC:  ORR.W           R0, R0, R0,LSR#16
2519C0:  ADDS            R0, #1
2519C2:  B               loc_2519C6
2519C4:  MOVS            R0, #1
2519C6:  VLDR            S0, =0.0151
2519CA:  SUBS            R1, R0, #1
2519CC:  STR.W           R8, [R4,#0xBC]
2519D0:  ADD.W           R12, R0, R8
2519D4:  VMUL.F32        S0, S16, S0
2519D8:  VCVT.S32.F32    S0, S0
2519DC:  STR.W           R1, [R4,#0xB8]
2519E0:  STR             R3, [SP,#0x80+var_40]
2519E2:  VMOV            R1, S0
2519E6:  STR             R1, [SP,#0x80+var_54]
2519E8:  ADDS            R0, R1, #1
2519EA:  BEQ             loc_251A04
2519EC:  ORR.W           R0, R1, R1,LSR#1
2519F0:  ORR.W           R0, R0, R0,LSR#2
2519F4:  ORR.W           R0, R0, R0,LSR#4
2519F8:  ORR.W           R0, R0, R0,LSR#8
2519FC:  ORR.W           R0, R0, R0,LSR#16
251A00:  ADDS            R0, #1
251A02:  B               loc_251A06
251A04:  MOVS            R0, #1
251A06:  VLDR            S0, =0.0167
251A0A:  SUBS            R1, R0, #1
251A0C:  STR.W           R12, [R4,#0xF0]
251A10:  ADD.W           R3, R0, R12
251A14:  VMUL.F32        S0, S16, S0
251A18:  VCVT.S32.F32    S0, S0
251A1C:  STR.W           R1, [R4,#0xEC]
251A20:  STR             R2, [SP,#0x80+var_3C]
251A22:  VMOV            R1, S0
251A26:  STR             R1, [SP,#0x80+var_58]
251A28:  ADDS            R0, R1, #1
251A2A:  BEQ             loc_251A44
251A2C:  ORR.W           R0, R1, R1,LSR#1
251A30:  ORR.W           R0, R0, R0,LSR#2
251A34:  ORR.W           R0, R0, R0,LSR#4
251A38:  ORR.W           R0, R0, R0,LSR#8
251A3C:  ORR.W           R0, R0, R0,LSR#16
251A40:  ADDS            R0, #1
251A42:  B               loc_251A46
251A44:  MOVS            R0, #1
251A46:  VLDR            S0, =0.0183
251A4A:  SUBS            R1, R0, #1
251A4C:  STR.W           R3, [R4,#0xF8]
251A50:  ADDS            R2, R0, R3
251A52:  VMUL.F32        S0, S16, S0
251A56:  VCVT.S32.F32    S0, S0
251A5A:  STR.W           R1, [R4,#0xF4]
251A5E:  VMOV            R1, S0
251A62:  STR             R1, [SP,#0x80+var_5C]
251A64:  ADDS            R0, R1, #1
251A66:  BEQ             loc_251A80
251A68:  ORR.W           R0, R1, R1,LSR#1
251A6C:  ORR.W           R0, R0, R0,LSR#2
251A70:  ORR.W           R0, R0, R0,LSR#4
251A74:  ORR.W           R0, R0, R0,LSR#8
251A78:  ORR.W           R0, R0, R0,LSR#16
251A7C:  ADDS            R0, #1
251A7E:  B               loc_251A82
251A80:  MOVS            R0, #1
251A82:  VLDR            S0, =0.02
251A86:  SUBS            R1, R0, #1
251A88:  STR.W           R2, [R4,#0x100]
251A8C:  ADD             R0, R2
251A8E:  VMUL.F32        S0, S16, S0
251A92:  VCVT.S32.F32    S0, S0
251A96:  STR.W           R1, [R4,#0xFC]
251A9A:  STR             R0, [SP,#0x80+var_2C]
251A9C:  VMOV            R1, S0
251AA0:  STR             R1, [SP,#0x80+var_60]
251AA2:  ADDS            R0, R1, #1
251AA4:  BEQ             loc_251ABE
251AA6:  ORR.W           R0, R1, R1,LSR#1
251AAA:  ORR.W           R0, R0, R0,LSR#2
251AAE:  ORR.W           R0, R0, R0,LSR#4
251AB2:  ORR.W           R0, R0, R0,LSR#8
251AB6:  ORR.W           R0, R0, R0,LSR#16
251ABA:  ADDS            R0, #1
251ABC:  B               loc_251AC0
251ABE:  MOVS            R0, #1
251AC0:  VLDR            S0, =0.1055
251AC4:  SUBS            R1, R0, #1
251AC6:  LDR.W           R11, [SP,#0x80+var_2C]
251ACA:  VMUL.F32        S0, S16, S0
251ACE:  STR.W           R11, [R4,#0x108]
251AD2:  ADD.W           R5, R0, R11
251AD6:  VCVT.S32.F32    S0, S0
251ADA:  STR.W           R1, [R4,#0x104]
251ADE:  VMOV            R0, S0
251AE2:  ADDS            R1, R0, #1
251AE4:  BEQ             loc_251AFE
251AE6:  ORR.W           R0, R0, R0,LSR#1
251AEA:  ORR.W           R0, R0, R0,LSR#2
251AEE:  ORR.W           R0, R0, R0,LSR#4
251AF2:  ORR.W           R0, R0, R0,LSR#8
251AF6:  ORR.W           R0, R0, R0,LSR#16
251AFA:  ADDS            R0, #1
251AFC:  B               loc_251B00
251AFE:  MOVS            R0, #1
251B00:  VLDR            S0, =0.1555
251B04:  SUBS            R1, R0, #1
251B06:  STR.W           R5, [R4,#0x130]
251B0A:  ADDS            R6, R0, R5
251B0C:  VMUL.F32        S0, S16, S0
251B10:  VCVT.S32.F32    S0, S0
251B14:  STR.W           R1, [R4,#0x12C]
251B18:  STRD.W          R3, LR, [SP,#0x80+var_70]
251B1C:  STRD.W          R2, R10, [SP,#0x80+var_38]
251B20:  VMOV            R0, S0
251B24:  ADDS            R1, R0, #1
251B26:  BEQ             loc_251B40
251B28:  ORR.W           R0, R0, R0,LSR#1
251B2C:  ORR.W           R0, R0, R0,LSR#2
251B30:  ORR.W           R0, R0, R0,LSR#4
251B34:  ORR.W           R0, R0, R0,LSR#8
251B38:  ORR.W           R0, R0, R0,LSR#16
251B3C:  ADDS            R0, #1
251B3E:  B               loc_251B42
251B40:  MOVS            R0, #1
251B42:  VLDR            S0, =0.2305
251B46:  SUBS            R1, R0, #1
251B48:  STR.W           R6, [R4,#0x138]
251B4C:  ADD.W           LR, R0, R6
251B50:  VMUL.F32        S0, S16, S0
251B54:  VCVT.S32.F32    S0, S0
251B58:  STR.W           R1, [R4,#0x134]
251B5C:  STR.W           R9, [SP,#0x80+var_30]
251B60:  VMOV            R0, S0
251B64:  ADDS            R2, R0, #1
251B66:  BEQ             loc_251B80
251B68:  ORR.W           R0, R0, R0,LSR#1
251B6C:  ORR.W           R0, R0, R0,LSR#2
251B70:  ORR.W           R0, R0, R0,LSR#4
251B74:  ORR.W           R0, R0, R0,LSR#8
251B78:  ORR.W           R0, R0, R0,LSR#16
251B7C:  ADDS            R0, #1
251B7E:  B               loc_251B82
251B80:  MOVS            R0, #1
251B82:  VLDR            S0, =0.34
251B86:  SUBS            R2, R0, #1
251B88:  STR.W           LR, [R4,#0x140]
251B8C:  VMUL.F32        S0, S16, S0
251B90:  VCVT.S32.F32    S0, S0
251B94:  STR.W           R2, [R4,#0x13C]
251B98:  ADD.W           R2, R0, LR
251B9C:  STRD.W          R6, R5, [SP,#0x80+var_78]
251BA0:  VMOV            R0, S0
251BA4:  ADDS            R3, R0, #1
251BA6:  BEQ             loc_251BE8
251BA8:  ORR.W           R0, R0, R0,LSR#1
251BAC:  ORR.W           R0, R0, R0,LSR#2
251BB0:  ORR.W           R0, R0, R0,LSR#4
251BB4:  ORR.W           R0, R0, R0,LSR#8
251BB8:  ORR.W           R0, R0, R0,LSR#16
251BBC:  ADDS            R0, #1
251BBE:  B               loc_251BEA
251BC0:  DCFS 0.2
251BC4:  DCFS 0.4
251BC8:  DCFS 0.0015
251BCC:  DCFS 0.0045
251BD0:  DCFS 0.0135
251BD4:  DCFS 0.0405
251BD8:  DCFS 0.0633
251BDC:  DCFS 0.0151
251BE0:  DCFS 0.0167
251BE4:  DCFS 0.0183
251BE8:  MOVS            R0, #1
251BEA:  VLDR            S0, =0.0133
251BEE:  SUBS            R3, R0, #1
251BF0:  STR.W           R2, [R4,#0x148]
251BF4:  VMUL.F32        S0, S16, S0
251BF8:  VCVT.S32.F32    S0, S0
251BFC:  STR.W           R3, [R4,#0x144]
251C00:  ADDS            R3, R0, R2
251C02:  VMOV            R11, S0
251C06:  ADDS.W          R0, R11, #1
251C0A:  BEQ             loc_251C24
251C0C:  ORR.W           R0, R11, R11,LSR#1
251C10:  ORR.W           R0, R0, R0,LSR#2
251C14:  ORR.W           R0, R0, R0,LSR#4
251C18:  ORR.W           R0, R0, R0,LSR#8
251C1C:  ORR.W           R0, R0, R0,LSR#16
251C20:  ADDS            R0, #1
251C22:  B               loc_251C26
251C24:  MOVS            R0, #1
251C26:  VMOV.F32        S0, #0.25
251C2A:  STR.W           R3, [R4,#0x1B0]
251C2E:  SUBS            R5, R0, #1
251C30:  ADD.W           R9, R0, R3
251C34:  VMUL.F32        S0, S16, S0
251C38:  VCVT.S32.F32    S0, S0
251C3C:  STR.W           R5, [R4,#0x1AC]
251C40:  VMOV            R0, S0
251C44:  ADDS            R5, R0, #1
251C46:  BEQ             loc_251C60
251C48:  ORR.W           R0, R0, R0,LSR#1
251C4C:  ORR.W           R0, R0, R0,LSR#2
251C50:  ORR.W           R0, R0, R0,LSR#4
251C54:  ORR.W           R0, R0, R0,LSR#8
251C58:  ORR.W           R0, R0, R0,LSR#16
251C5C:  ADDS            R0, #1
251C5E:  B               loc_251C62
251C60:  MOVS            R0, #1
251C62:  SUBS            R5, R0, #1
251C64:  STRD.W          R5, R9, [R4,#0x1A4]
251C68:  LDR             R6, [R4,#0x14]
251C6A:  ADD.W           R5, R0, R9
251C6E:  CMP             R5, R6
251C70:  BNE             loc_251C8E
251C72:  STR.W           R11, [SP,#0x80+var_64]
251C76:  MOVS            R6, #0
251C78:  LDR             R0, [R4,#0x10]
251C7A:  MOV             R1, R12
251C7C:  STR             R6, [SP,#0x80+var_68]
251C7E:  MOV             R6, R8
251C80:  LDR.W           R11, [SP,#0x80+var_6C]
251C84:  LDR.W           R8, [SP,#0x80+var_70]
251C88:  LDRD.W          R12, R10, [SP,#0x80+var_78]
251C8C:  B               loc_251D1C
251C8E:  LDR             R0, =(LogLevel_ptr - 0x251C94)
251C90:  ADD             R0, PC; LogLevel_ptr
251C92:  LDR             R0, [R0]; LogLevel
251C94:  LDR             R0, [R0]
251C96:  CMP             R0, #3
251C98:  BCC             loc_251CBC
251C9A:  VMOV            S0, R5
251C9E:  LDR             R0, =(aIi - 0x251CAC); "(II)"
251CA0:  ADR             R1, aAlloclines; "AllocLines"
251CA2:  ADR             R2, aNewReverbBuffe; "New reverb buffer length: %u samples (%"...
251CA4:  VCVT.F32.U32    S0, S0
251CA8:  ADD             R0, PC; "(II)"
251CAA:  MOV             R3, R5
251CAC:  VDIV.F32        S0, S0, S16
251CB0:  VCVT.F64.F32    D16, S0
251CB4:  VSTR            D16, [SP,#0x80+var_80]
251CB8:  BLX             j_al_print
251CBC:  LDR             R0, [R4,#0x10]; ptr
251CBE:  LSLS            R1, R5, #2; size
251CC0:  BLX             realloc
251CC4:  CMP             R0, #0
251CC6:  BEQ.W           loc_251E1C
251CCA:  STR.W           R11, [SP,#0x80+var_64]
251CCE:  LDR             R1, [R4,#0x28]
251CD0:  STR             R1, [SP,#0x80+var_68]
251CD2:  LDR             R1, [R4,#0x68]
251CD4:  LDR.W           R11, [R4,#0x44]
251CD8:  STR             R1, [SP,#0x80+var_30]
251CDA:  LDR             R1, [R4,#0x70]
251CDC:  STR             R1, [SP,#0x80+var_34]
251CDE:  LDR.W           R9, [R4,#0x1A8]
251CE2:  LDR.W           R3, [R4,#0x1B0]
251CE6:  STR             R5, [R4,#0x14]
251CE8:  LDR.W           R1, [R4,#0x108]
251CEC:  LDR.W           R2, [R4,#0x148]
251CF0:  STR             R1, [SP,#0x80+var_2C]
251CF2:  LDR.W           R1, [R4,#0x80]
251CF6:  STR             R1, [SP,#0x80+var_3C]
251CF8:  LDR.W           R1, [R4,#0x100]
251CFC:  LDR.W           LR, [R4,#0x140]
251D00:  STR             R1, [SP,#0x80+var_38]
251D02:  LDR             R1, [R4,#0x78]
251D04:  STR             R1, [SP,#0x80+var_40]
251D06:  LDR.W           R12, [R4,#0x138]
251D0A:  LDR.W           R8, [R4,#0xF8]
251D0E:  LDR.W           R10, [R4,#0x130]
251D12:  LDR.W           R1, [R4,#0xF0]
251D16:  STR             R0, [R4,#0x10]
251D18:  LDR.W           R6, [R4,#0xBC]
251D1C:  ADD.W           R6, R0, R6,LSL#2
251D20:  STR.W           R6, [R4,#0xBC]
251D24:  ADD.W           R6, R0, R11,LSL#2
251D28:  STR             R6, [R4,#0x44]
251D2A:  LDR             R6, [SP,#0x80+var_30]
251D2C:  CMP             R5, #0
251D2E:  ADD.W           R6, R0, R6,LSL#2
251D32:  STR             R6, [R4,#0x68]
251D34:  ADD.W           R6, R0, R1,LSL#2
251D38:  STR.W           R6, [R4,#0xF0]
251D3C:  ADD.W           R6, R0, R10,LSL#2
251D40:  STR.W           R6, [R4,#0x130]
251D44:  LDR             R1, [SP,#0x80+var_34]
251D46:  ADD.W           R6, R0, R1,LSL#2
251D4A:  STR             R6, [R4,#0x70]
251D4C:  ADD.W           R6, R0, R8,LSL#2
251D50:  STR.W           R6, [R4,#0xF8]
251D54:  ADD.W           R6, R0, R12,LSL#2
251D58:  STR.W           R6, [R4,#0x138]
251D5C:  LDR             R1, [SP,#0x80+var_40]
251D5E:  ADD.W           R6, R0, R1,LSL#2
251D62:  STR             R6, [R4,#0x78]
251D64:  LDR             R1, [SP,#0x80+var_38]
251D66:  ADD.W           R6, R0, R1,LSL#2
251D6A:  STR.W           R6, [R4,#0x100]
251D6E:  ADD.W           R1, R0, LR,LSL#2
251D72:  STR.W           R1, [R4,#0x140]
251D76:  LDR             R1, [SP,#0x80+var_3C]
251D78:  ADD.W           R1, R0, R1,LSL#2
251D7C:  STR.W           R1, [R4,#0x80]
251D80:  LDR             R1, [SP,#0x80+var_2C]
251D82:  ADD.W           R1, R0, R1,LSL#2
251D86:  STR.W           R1, [R4,#0x108]
251D8A:  ADD.W           R1, R0, R2,LSL#2
251D8E:  STR.W           R1, [R4,#0x148]
251D92:  LDR             R1, [SP,#0x80+var_68]
251D94:  ADD.W           R1, R0, R1,LSL#2
251D98:  STR             R1, [R4,#0x28]
251D9A:  ADD.W           R1, R0, R3,LSL#2
251D9E:  STR.W           R1, [R4,#0x1B0]
251DA2:  ADD.W           R1, R0, R9,LSL#2
251DA6:  STR.W           R1, [R4,#0x1A8]
251DAA:  BEQ             loc_251DC8
251DAC:  MOVS            R1, #0
251DAE:  STR             R1, [R0]
251DB0:  LDR             R0, [R4,#0x14]
251DB2:  CMP             R0, #2
251DB4:  BCC             loc_251DC8
251DB6:  MOVS            R0, #1
251DB8:  MOVS            R2, #4
251DBA:  LDR             R3, [R4,#0x10]
251DBC:  ADDS            R0, #1
251DBE:  STR             R1, [R3,R2]
251DC0:  ADDS            R2, #4
251DC2:  LDR             R3, [R4,#0x14]
251DC4:  CMP             R0, R3
251DC6:  BCC             loc_251DBA
251DC8:  VLDR            S0, =100000.0
251DCC:  LDR             R0, [SP,#0x80+var_44]
251DCE:  VDIV.F32        S0, S0, S16
251DD2:  STR.W           R0, [R4,#0x84]
251DD6:  LDR             R0, [SP,#0x80+var_48]
251DD8:  STR.W           R0, [R4,#0x88]
251DDC:  LDR             R0, [SP,#0x80+var_4C]
251DDE:  STR.W           R0, [R4,#0x8C]
251DE2:  LDR             R0, [SP,#0x80+var_50]
251DE4:  STR.W           R0, [R4,#0x90]
251DE8:  LDR             R0, [SP,#0x80+var_54]
251DEA:  STR.W           R0, [R4,#0x10C]
251DEE:  LDR             R0, [SP,#0x80+var_58]
251DF0:  STR.W           R0, [R4,#0x110]
251DF4:  LDR             R0, [SP,#0x80+var_5C]
251DF6:  STR.W           R0, [R4,#0x114]
251DFA:  LDR             R0, [SP,#0x80+var_60]
251DFC:  STR.W           R0, [R4,#0x118]
251E00:  LDR             R0, [SP,#0x80+var_64]
251E02:  STR.W           R0, [R4,#0x1C4]
251E06:  MOV             R0, #0x3D449BA6; x
251E0E:  VMOV            R1, S0; y
251E12:  BLX             powf
251E16:  STR             R0, [R4,#0x38]
251E18:  MOVS            R0, #1
251E1A:  B               loc_251E1E
251E1C:  MOVS            R0, #0
251E1E:  ADD             SP, SP, #0x58 ; 'X'
251E20:  VPOP            {D8}
251E24:  ADD             SP, SP, #4
251E26:  POP.W           {R8-R11}
251E2A:  POP             {R4-R7,PC}
