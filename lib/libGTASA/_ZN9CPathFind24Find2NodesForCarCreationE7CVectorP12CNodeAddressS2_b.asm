; =========================================================
; Game Engine Function: _ZN9CPathFind24Find2NodesForCarCreationE7CVectorP12CNodeAddressS2_b
; Address            : 0x3177FC - 0x317B36
; =========================================================

3177FC:  PUSH            {R4-R7,LR}
3177FE:  ADD             R7, SP, #0xC
317800:  PUSH.W          {R8-R11}
317804:  SUB             SP, SP, #0x34
317806:  MOV             R8, R0
317808:  MOVW            R0, #0xFFFF
31780C:  STRH.W          R0, [SP,#0x50+var_28]
317810:  MOV             R10, R2
317812:  STRH.W          R0, [SP,#0x50+var_2C]
317816:  MOV             R9, R1
317818:  STRH.W          R0, [SP,#0x50+var_24]
31781C:  MOV.W           LR, #0
317820:  STRH.W          R0, [SP,#0x50+var_20]
317824:  MOVW            R0, #0xFFFF
317828:  MOVW            R12, #0x1104
31782C:  STR             R3, [SP,#0x50+var_30]
31782E:  STR             R0, [SP,#0x50+var_34]
317830:  ADD.W           R2, R8, LR,LSL#2
317834:  LDR.W           R6, [R2,#0x804]
317838:  CBZ             R6, loc_317872
31783A:  LDR.W           R3, [R2,R12]
31783E:  CMP             R3, #1
317840:  BLT             loc_317872
317842:  LDRH.W          R5, [R6,#0x18]!
317846:  CMP             R3, #1
317848:  BIC.W           R5, R5, #0x200
31784C:  STRH            R5, [R6]
31784E:  BEQ             loc_317872
317850:  ADDW            R2, R2, #0x804
317854:  SUBS            R3, #1
317856:  MOVS            R6, #0x34 ; '4'
317858:  LDR             R5, [R2]
31785A:  SUBS            R3, #1
31785C:  ADD.W           R4, R5, R6
317860:  LDRH            R1, [R5,R6]
317862:  LDRB            R0, [R4,#2]
317864:  BIC.W           R1, R1, #0x200
317868:  STRH            R1, [R5,R6]
31786A:  ADD.W           R6, R6, #0x1C
31786E:  STRB            R0, [R4,#2]
317870:  BNE             loc_317858
317872:  ADD.W           LR, LR, #1
317876:  CMP.W           LR, #0x48 ; 'H'
31787A:  BNE             loc_317830
31787C:  MOVW            R0, #0x23FE
317880:  MOV.W           R11, #0
317884:  MOVT            R0, #0x4974
317888:  MOVS            R6, #1
31788A:  STRD.W          R11, R0, [SP,#0x50+var_50]
31788E:  MOV             R4, R10
317890:  LDR             R0, [R7,#arg_8]
317892:  MOV             R1, R9
317894:  STRD.W          R0, R11, [SP,#0x50+var_48]
317898:  MOV             R0, R8
31789A:  STRD.W          R6, R11, [SP,#0x50+var_40]
31789E:  MOV             R2, R4
3178A0:  LDR             R5, [SP,#0x50+var_30]
3178A2:  STR             R6, [SP,#0x50+var_38]
3178A4:  MOV             R3, R5
3178A6:  BLX             j__ZN9CPathFind22FindNodeClosestToCoorsE7CVectorhfbbbbb; CPathFind::FindNodeClosestToCoors(CVector,uchar,float,bool,bool,bool,bool,bool)
3178AA:  UXTH            R1, R0
3178AC:  MOVW            R10, #0xFFFF
3178B0:  CMP             R1, R10
3178B2:  BNE             loc_3178C2
3178B4:  LDR             R0, [R7,#arg_0]
3178B6:  MOVW            R1, #0xFFFF
3178BA:  STRH            R1, [R0]
3178BC:  LDR             R0, [R7,#arg_4]
3178BE:  STRH            R1, [R0]
3178C0:  B               loc_317A6A
3178C2:  ADD.W           R1, R8, R1,LSL#2
3178C6:  LSRS            R2, R0, #0x10
3178C8:  LSLS            R2, R2, #3
3178CA:  LDR.W           R1, [R1,#0x804]
3178CE:  SUB.W           R2, R2, R0,LSR#16
3178D2:  ADD.W           R1, R1, R2,LSL#2
3178D6:  LDRH.W          R2, [R1,#0x18]!
3178DA:  LDRB            R3, [R1,#2]
3178DC:  ORR.W           R2, R2, #0x200
3178E0:  STRH            R2, [R1]
3178E2:  MOV             R2, R4
3178E4:  STRB            R3, [R1,#2]
3178E6:  MOV             R1, R9
3178E8:  STR             R0, [SP,#0x50+var_2C]
3178EA:  MOV             R0, #0x497423FE
3178F2:  STR.W           R11, [SP,#0x50+var_50]
3178F6:  STR             R0, [SP,#0x50+var_4C]
3178F8:  MOV             R3, R5
3178FA:  LDR             R0, [R7,#arg_8]
3178FC:  STRD.W          R0, R11, [SP,#0x50+var_48]
317900:  MOV             R0, R8
317902:  STRD.W          R6, R11, [SP,#0x50+var_40]
317906:  STR             R6, [SP,#0x50+var_38]
317908:  BLX             j__ZN9CPathFind22FindNodeClosestToCoorsE7CVectorhfbbbbb; CPathFind::FindNodeClosestToCoors(CVector,uchar,float,bool,bool,bool,bool,bool)
31790C:  UXTH            R1, R0
31790E:  CMP             R1, R10
317910:  MOV             R11, R4
317912:  BNE             loc_31791A
317914:  LDR             R1, [R7,#arg_0]
317916:  LDR             R0, [SP,#0x50+var_2C]
317918:  B               loc_317A68
31791A:  ADD.W           R1, R8, R1,LSL#2
31791E:  LSRS            R2, R0, #0x10
317920:  LSLS            R2, R2, #3
317922:  MOVS            R6, #0
317924:  LDR.W           R1, [R1,#0x804]
317928:  SUB.W           R2, R2, R0,LSR#16
31792C:  ADD.W           R1, R1, R2,LSL#2
317930:  LDRH.W          R2, [R1,#0x18]!
317934:  LDRB            R3, [R1,#2]
317936:  ORR.W           R2, R2, #0x200
31793A:  STRH            R2, [R1]
31793C:  MOV             R2, R11
31793E:  STRB            R3, [R1,#2]
317940:  MOVS            R1, #1
317942:  STR             R0, [SP,#0x50+var_28]
317944:  MOV             R0, #0x497423FE
31794C:  STR             R6, [SP,#0x50+var_50]
31794E:  STR             R0, [SP,#0x50+var_4C]
317950:  MOV             R3, R5
317952:  LDR             R0, [R7,#arg_8]
317954:  STRD.W          R0, R6, [SP,#0x50+var_48]
317958:  MOV             R0, R8
31795A:  STRD.W          R1, R6, [SP,#0x50+var_40]
31795E:  STR             R1, [SP,#0x50+var_38]
317960:  MOV             R1, R9
317962:  BLX             j__ZN9CPathFind22FindNodeClosestToCoorsE7CVectorhfbbbbb; CPathFind::FindNodeClosestToCoors(CVector,uchar,float,bool,bool,bool,bool,bool)
317966:  MOV             R1, R9
317968:  MOV             R9, R0
31796A:  UXTH.W          R0, R9
31796E:  MOV             R3, R5
317970:  CMP             R0, R10
317972:  BNE             loc_31797E
317974:  MOVW            R11, #0xFFFF
317978:  MOVW            R9, #0xFFFF
31797C:  B               loc_3179F8
31797E:  ADD.W           R0, R8, R0,LSL#2
317982:  MOV.W           R2, R9,LSR#16
317986:  LSLS            R2, R2, #3
317988:  LDR.W           R0, [R0,#0x804]
31798C:  SUB.W           R2, R2, R9,LSR#16
317990:  ADD.W           R0, R0, R2,LSL#2
317994:  LDRH.W          R5, [R0,#0x18]!
317998:  LDRB            R2, [R0,#2]
31799A:  ORR.W           R5, R5, #0x200
31799E:  STRH            R5, [R0]
3179A0:  STRB            R2, [R0,#2]
3179A2:  MOV             R0, #0x497423FE
3179AA:  STR             R6, [SP,#0x50+var_50]
3179AC:  STR             R0, [SP,#0x50+var_4C]
3179AE:  MOV             R2, R11
3179B0:  LDR             R0, [R7,#arg_8]
3179B2:  STR.W           R9, [SP,#0x50+var_24]
3179B6:  STRD.W          R0, R6, [SP,#0x50+var_48]
3179BA:  MOVS            R0, #1
3179BC:  STRD.W          R0, R6, [SP,#0x50+var_40]
3179C0:  STR             R0, [SP,#0x50+var_38]
3179C2:  MOV             R0, R8
3179C4:  BLX             j__ZN9CPathFind22FindNodeClosestToCoorsE7CVectorhfbbbbb; CPathFind::FindNodeClosestToCoors(CVector,uchar,float,bool,bool,bool,bool,bool)
3179C8:  UXTH            R1, R0
3179CA:  MOVW            R11, #0xFFFF
3179CE:  CMP             R1, R10
3179D0:  BEQ             loc_3179F8
3179D2:  ADD.W           R1, R8, R1,LSL#2
3179D6:  LSRS            R2, R0, #0x10
3179D8:  LSLS            R2, R2, #3
3179DA:  LDR.W           R1, [R1,#0x804]
3179DE:  SUB.W           R2, R2, R0,LSR#16
3179E2:  ADD.W           R1, R1, R2,LSL#2
3179E6:  LDRH.W          R2, [R1,#0x18]!
3179EA:  LDRB            R3, [R1,#2]
3179EC:  ORR.W           R2, R2, #0x200
3179F0:  STRH            R2, [R1]
3179F2:  STRB            R3, [R1,#2]
3179F4:  STR             R0, [SP,#0x50+var_20]
3179F6:  STR             R0, [SP,#0x50+var_34]
3179F8:  LDR             R0, =(ThePaths_ptr - 0x317A00)
3179FA:  LDR             R2, [SP,#0x50+var_2C]
3179FC:  ADD             R0, PC; ThePaths_ptr
3179FE:  LDR             R1, [R7,#arg_0]
317A00:  LDR             R3, [R0]; ThePaths
317A02:  UXTH.W          R8, R2
317A06:  STR             R2, [R1]
317A08:  LSRS            R4, R2, #0x10
317A0A:  ADD.W           R3, R3, R8,LSL#2
317A0E:  LSLS            R6, R4, #3
317A10:  SUB.W           LR, R6, R2,LSR#16
317A14:  LDR             R0, [SP,#0x50+var_28]
317A16:  LDR.W           R5, [R3,#0x804]
317A1A:  ADD.W           R3, R5, LR,LSL#2
317A1E:  LDRH            R3, [R3,#0x18]
317A20:  ANDS.W          R3, R3, #0xF
317A24:  BEQ             loc_317A66
317A26:  LDR             R2, =(ThePaths_ptr - 0x317A32)
317A28:  RSB.W           R12, R4, R4,LSL#3
317A2C:  LSRS            R6, R0, #0x10
317A2E:  ADD             R2, PC; ThePaths_ptr
317A30:  ADD.W           R4, R5, R12,LSL#2
317A34:  LDR             R2, [R2]; ThePaths
317A36:  LDRSH.W         R4, [R4,#0x10]
317A3A:  ADD.W           R2, R2, R8,LSL#2
317A3E:  LDR.W           R2, [R2,#0xA44]
317A42:  ADD.W           R5, R2, R4,LSL#2
317A46:  BIC.W           R4, R3, #0xFF000000
317A4A:  MOVS            R3, #0
317A4C:  LDRH.W          R2, [R5,R3,LSL#2]
317A50:  UXTH            R1, R0
317A52:  CMP             R2, R1
317A54:  BNE             loc_317A60
317A56:  ADD.W           R1, R5, R3,LSL#2
317A5A:  LDRH            R1, [R1,#2]
317A5C:  CMP             R1, R6
317A5E:  BEQ             loc_317A72
317A60:  ADDS            R3, #1
317A62:  CMP             R3, R4
317A64:  BLT             loc_317A4C
317A66:  LDR             R1, [R7,#arg_4]
317A68:  STR             R0, [R1]
317A6A:  ADD             SP, SP, #0x34 ; '4'
317A6C:  POP.W           {R8-R11}
317A70:  POP             {R4-R7,PC}
317A72:  UXTH.W          R0, R9
317A76:  CMP             R0, R11
317A78:  BNE             loc_317ADC
317A7A:  LDR             R0, [SP,#0x50+var_34]
317A7C:  UXTH            R0, R0
317A7E:  CMP             R0, R11
317A80:  BEQ             loc_317A6A
317A82:  LDR             R1, =(ThePaths_ptr - 0x317A8A)
317A84:  LDR             R0, [SP,#0x50+var_20]
317A86:  ADD             R1, PC; ThePaths_ptr
317A88:  LDR             R1, [R1]; ThePaths
317A8A:  ADD.W           R1, R1, R8,LSL#2
317A8E:  LDR.W           R6, [R1,#0x804]
317A92:  ADD.W           R1, R6, LR,LSL#2
317A96:  LDRH            R1, [R1,#0x18]
317A98:  ANDS.W          R3, R1, #0xF
317A9C:  BEQ             loc_317A66
317A9E:  LDR             R1, =(ThePaths_ptr - 0x317AAE)
317AA0:  ADD.W           R6, R6, R12,LSL#2
317AA4:  BIC.W           R3, R3, #0xFF000000
317AA8:  LSRS            R2, R0, #0x10
317AAA:  ADD             R1, PC; ThePaths_ptr
317AAC:  LDRSH.W         R6, [R6,#0x10]
317AB0:  LDR             R1, [R1]; ThePaths
317AB2:  ADD.W           R1, R1, R8,LSL#2
317AB6:  LDR.W           R1, [R1,#0xA44]
317ABA:  ADD.W           R1, R1, R6,LSL#2
317ABE:  MOVS            R6, #0
317AC0:  LDRH.W          R5, [R1,R6,LSL#2]
317AC4:  UXTH            R4, R0
317AC6:  CMP             R5, R4
317AC8:  BNE             loc_317AD4
317ACA:  ADD.W           R5, R1, R6,LSL#2
317ACE:  LDRH            R5, [R5,#2]
317AD0:  CMP             R5, R2
317AD2:  BEQ             loc_317A6A
317AD4:  ADDS            R6, #1
317AD6:  CMP             R6, R3
317AD8:  BLT             loc_317AC0
317ADA:  B               loc_317A66
317ADC:  LDR             R1, =(ThePaths_ptr - 0x317AE4)
317ADE:  LDR             R0, [SP,#0x50+var_24]
317AE0:  ADD             R1, PC; ThePaths_ptr
317AE2:  LDR             R1, [R1]; ThePaths
317AE4:  ADD.W           R1, R1, R8,LSL#2
317AE8:  LDR.W           R5, [R1,#0x804]
317AEC:  ADD.W           R1, R5, LR,LSL#2
317AF0:  LDRH            R1, [R1,#0x18]
317AF2:  ANDS.W          R3, R1, #0xF
317AF6:  BEQ             loc_317A66
317AF8:  LDR             R1, =(ThePaths_ptr - 0x317B08)
317AFA:  ADD.W           R2, R5, R12,LSL#2
317AFE:  BIC.W           R4, R3, #0xFF000000
317B02:  LSRS            R6, R0, #0x10
317B04:  ADD             R1, PC; ThePaths_ptr
317B06:  LDRSH.W         R2, [R2,#0x10]
317B0A:  MOVS            R3, #0
317B0C:  LDR             R1, [R1]; ThePaths
317B0E:  ADD.W           R1, R1, R8,LSL#2
317B12:  LDR.W           R1, [R1,#0xA44]
317B16:  ADD.W           R5, R1, R2,LSL#2
317B1A:  LDRH.W          R1, [R5,R3,LSL#2]
317B1E:  UXTH            R2, R0
317B20:  CMP             R1, R2
317B22:  BNE             loc_317B2E
317B24:  ADD.W           R1, R5, R3,LSL#2
317B28:  LDRH            R1, [R1,#2]
317B2A:  CMP             R1, R6
317B2C:  BEQ             loc_317A7A
317B2E:  ADDS            R3, #1
317B30:  CMP             R3, R4
317B32:  BLT             loc_317B1A
317B34:  B               loc_317A66
