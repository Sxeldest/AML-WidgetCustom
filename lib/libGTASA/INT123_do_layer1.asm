; =========================================================
; Game Engine Function: INT123_do_layer1
; Address            : 0x22872A - 0x228E60
; =========================================================

22872A:  PUSH            {R4-R7,LR}
22872C:  ADD             R7, SP, #0xC
22872E:  PUSH.W          {R8-R11}
228732:  SUB             SP, SP, #4
228734:  VPUSH           {D8-D9}
228738:  SUB.W           SP, SP, #0x338
22873C:  MOVW            R2, #0x92BC
228740:  MOVW            R1, #0x92B4
228744:  LDR             R5, [R0,R2]
228746:  MOVW            R2, #0xB540
22874A:  LDR             R2, [R0,R2]
22874C:  LDR             R6, [R0,R1]
22874E:  STR             R2, [SP,#0x368+var_340]
228750:  MOVW            R2, #0x92F4
228754:  LDR             R2, [R0,R2]
228756:  CMP             R2, #1
228758:  BNE             loc_228768
22875A:  MOVW            R2, #0x92F8
22875E:  MOVS            R3, #4
228760:  LDR             R2, [R0,R2]
228762:  ADD.W           R9, R3, R2,LSL#2
228766:  B               loc_22876C
228768:  MOV.W           R9, #0x20 ; ' '
22876C:  ADD             R1, R0
22876E:  STR             R1, [SP,#0x368+var_34C]
228770:  MOVW            R1, #0x92B8
228774:  CMP             R5, #3
228776:  STR.W           R9, [R0,R1]
22877A:  ADD             R1, R0
22877C:  STR             R1, [SP,#0x368+var_364]
22877E:  IT EQ
228780:  MOVEQ           R5, #0
228782:  CMP             R6, #1
228784:  MOVW            R1, #0x9330
228788:  IT EQ
22878A:  MOVEQ           R5, #0
22878C:  CMP             R6, #2
22878E:  STR             R5, [SP,#0x368+var_348]
228790:  STR             R0, [SP,#0x368+var_334]
228792:  BNE.W           loc_228910
228796:  ADD.W           R12, R0, R1
22879A:  MOVW            R1, #0x9334
22879E:  ADD.W           LR, R0, R1
2287A2:  ADD             R3, SP, #0x368+var_230
2287A4:  CMP.W           R9, #1
2287A8:  BLT             loc_22882A
2287AA:  MOVS            R0, #0
2287AC:  LDR.W           R5, [LR]
2287B0:  LDR.W           R4, [R12]
2287B4:  LDRB.W          R8, [R5]
2287B8:  ADDS            R6, R4, #4
2287BA:  LDRB            R1, [R5,#1]
2287BC:  LDRB            R2, [R5,#2]
2287BE:  ADD.W           R5, R5, R6,ASR#3
2287C2:  ORR.W           R1, R1, R8,LSL#8
2287C6:  STR.W           R5, [LR]
2287CA:  AND.W           R5, R6, #7
2287CE:  STR.W           R5, [R12]
2287D2:  ORR.W           R1, R2, R1,LSL#8
2287D6:  LSLS            R1, R4
2287D8:  UBFX.W          R1, R1, #0x14, #4
2287DC:  STR.W           R1, [R3,R0,LSL#3]
2287E0:  LDR.W           R2, [LR]
2287E4:  LDR.W           R1, [R12]
2287E8:  ADDS            R4, R1, #4
2287EA:  LDRB.W          R8, [R2]
2287EE:  LDRB            R6, [R2,#1]
2287F0:  ADD.W           R5, R2, R4,ASR#3
2287F4:  LDRB            R2, [R2,#2]
2287F6:  STR.W           R5, [LR]
2287FA:  ORR.W           R5, R6, R8,LSL#8
2287FE:  AND.W           R4, R4, #7
228802:  STR.W           R4, [R12]
228806:  ORR.W           R2, R2, R5,LSL#8
22880A:  ADD.W           R4, R3, R0,LSL#3
22880E:  ADDS            R0, #1
228810:  LSL.W           R1, R2, R1
228814:  CMP             R9, R0
228816:  UBFX.W          R1, R1, #0x14, #4
22881A:  STR             R1, [R4,#4]
22881C:  BNE             loc_2287AC
22881E:  CMP.W           R9, #0x1F
228822:  BGT.W           loc_2289A0
228826:  ADD.W           R3, R3, R9,LSL#3
22882A:  SUB.W           R0, R9, #1
22882E:  LDR.W           R1, [LR]
228832:  ADDS            R0, #1
228834:  LDR.W           R2, [R12]
228838:  CMP             R0, #0x1F
22883A:  ADD.W           R4, R2, #4
22883E:  LDRB.W          R8, [R1]
228842:  LDRB            R5, [R1,#1]
228844:  LDRB            R6, [R1,#2]
228846:  ADD.W           R1, R1, R4,ASR#3
22884A:  STR.W           R1, [LR]
22884E:  AND.W           R1, R4, #7
228852:  STR.W           R1, [R12]
228856:  ORR.W           R1, R5, R8,LSL#8
22885A:  ORR.W           R1, R6, R1,LSL#8
22885E:  LSL.W           R1, R1, R2
228862:  UBFX.W          R1, R1, #0x14, #4
228866:  STR.W           R1, [R3],#4
22886A:  BLT             loc_22882E
22886C:  MOV.W           LR, #1
228870:  CMP.W           R9, #1
228874:  BLT.W           loc_2289AC
228878:  LDR             R1, [SP,#0x368+var_334]
22887A:  MOVW            R0, #0x9330
22887E:  ADD             R2, SP, #0x368+var_230
228880:  ADD.W           R12, SP, #0x368+var_330
228884:  ADD.W           R8, R1, R0
228888:  MOVW            R0, #0x9334
22888C:  ADD.W           R10, R1, R0
228890:  MOV             R0, R9
228892:  LDR             R4, [R2]
228894:  CBZ             R4, loc_2288CA
228896:  LDR.W           R4, [R10]
22889A:  LDR.W           R6, [R8]
22889E:  LDRB            R3, [R4]
2288A0:  ADD.W           R11, R6, #6
2288A4:  LDRB            R5, [R4,#1]
2288A6:  LDRB            R1, [R4,#2]
2288A8:  ADD.W           R4, R4, R11,ASR#3
2288AC:  ORR.W           R3, R5, R3,LSL#8
2288B0:  STR.W           R4, [R10]
2288B4:  AND.W           R4, R11, #7
2288B8:  STR.W           R4, [R8]
2288BC:  ORR.W           R1, R1, R3,LSL#8
2288C0:  LSLS            R1, R6
2288C2:  UBFX.W          R1, R1, #0x12, #6
2288C6:  STR.W           R1, [R12],#4
2288CA:  LDR             R1, [R2,#4]
2288CC:  CBZ             R1, loc_228902
2288CE:  LDR.W           R1, [R10]
2288D2:  LDR.W           R3, [R8]
2288D6:  ADDS            R4, R3, #6
2288D8:  LDRB.W          R11, [R1]
2288DC:  LDRB            R5, [R1,#1]
2288DE:  LDRB            R6, [R1,#2]
2288E0:  ADD.W           R1, R1, R4,ASR#3
2288E4:  STR.W           R1, [R10]
2288E8:  AND.W           R1, R4, #7
2288EC:  STR.W           R1, [R8]
2288F0:  ORR.W           R1, R5, R11,LSL#8
2288F4:  ORR.W           R1, R6, R1,LSL#8
2288F8:  LSLS            R1, R3
2288FA:  UBFX.W          R1, R1, #0x12, #6
2288FE:  STR.W           R1, [R12],#4
228902:  ADDS            R2, #8
228904:  SUBS            R0, #1
228906:  BNE             loc_228892
228908:  ADD             R0, SP, #0x368+var_230
22890A:  ADD.W           R10, R0, R9,LSL#3
22890E:  B               loc_2289B4
228910:  ADD.W           R11, R0, R1
228914:  MOVW            R1, #0x9334
228918:  ADD.W           R8, R0, R1
22891C:  ADD.W           R12, SP, #0x368+var_230
228920:  MOVS            R1, #0
228922:  LDR.W           R2, [R8]
228926:  LDR.W           R3, [R11]
22892A:  LDRB            R6, [R2]
22892C:  ADDS            R0, R3, #4
22892E:  LDRB            R5, [R2,#1]
228930:  LDRB            R4, [R2,#2]
228932:  ADD.W           R2, R2, R0,ASR#3
228936:  AND.W           R0, R0, #7
22893A:  STR.W           R2, [R8]
22893E:  STR.W           R0, [R11]
228942:  ORR.W           R0, R5, R6,LSL#8
228946:  ORR.W           R0, R4, R0,LSL#8
22894A:  LSLS            R0, R3
22894C:  UBFX.W          R0, R0, #0x14, #4
228950:  STR.W           R0, [R12,R1,LSL#2]
228954:  ADDS            R1, #1
228956:  CMP             R1, #0x20 ; ' '
228958:  BNE             loc_228922
22895A:  ADD.W           LR, SP, #0x368+var_330
22895E:  MOVS            R1, #0
228960:  LDR.W           R0, [R12,R1,LSL#2]
228964:  CBZ             R0, loc_228998
228966:  LDR.W           R0, [R8]
22896A:  LDR.W           R3, [R11]
22896E:  ADDS            R2, R3, #6
228970:  LDRB            R6, [R0]
228972:  LDRB            R5, [R0,#1]
228974:  LDRB            R4, [R0,#2]
228976:  ADD.W           R0, R0, R2,ASR#3
22897A:  STR.W           R0, [R8]
22897E:  AND.W           R0, R2, #7
228982:  STR.W           R0, [R11]
228986:  ORR.W           R0, R5, R6,LSL#8
22898A:  ORR.W           R0, R4, R0,LSL#8
22898E:  LSLS            R0, R3
228990:  UBFX.W          R0, R0, #0x12, #6
228994:  STR.W           R0, [LR],#4
228998:  ADDS            R1, #1
22899A:  CMP             R1, #0x20 ; ' '
22899C:  BNE             loc_228960
22899E:  B               loc_228A4C
2289A0:  MOV.W           LR, #0
2289A4:  CMP.W           R9, #1
2289A8:  BGE.W           loc_228878
2289AC:  ADD.W           R10, SP, #0x368+var_230
2289B0:  ADD.W           R12, SP, #0x368+var_330
2289B4:  LDR             R1, [SP,#0x368+var_334]
2289B6:  MOVW            R0, #0x9330
2289BA:  CMP.W           LR, #1
2289BE:  ADD.W           R11, R1, R0
2289C2:  MOVW            R0, #0x9334
2289C6:  ADD.W           R8, R1, R0
2289CA:  BNE             loc_228A4C
2289CC:  LDR.W           LR, [SP,#0x368+var_334]
2289D0:  SUB.W           R0, R9, #1
2289D4:  LDR.W           R1, [R10],#4
2289D8:  CBZ             R1, loc_228A44
2289DA:  LDR.W           R1, [R8]
2289DE:  LDR.W           R2, [R11]
2289E2:  ADDS            R3, R2, #6
2289E4:  LDRB            R6, [R1]
2289E6:  LDRB            R5, [R1,#1]
2289E8:  LDRB            R4, [R1,#2]
2289EA:  ADD.W           R1, R1, R3,ASR#3
2289EE:  STR.W           R1, [R8]
2289F2:  AND.W           R1, R3, #7
2289F6:  STR.W           R1, [R11]
2289FA:  ORR.W           R1, R5, R6,LSL#8
2289FE:  ORR.W           R1, R4, R1,LSL#8
228A02:  LSLS            R1, R2
228A04:  UBFX.W          R1, R1, #0x12, #6
228A08:  STR.W           R1, [R12]
228A0C:  LDR.W           R2, [R8]
228A10:  LDR.W           R1, [R11]
228A14:  ADDS            R3, R1, #6
228A16:  LDRB            R5, [R2]
228A18:  LDRB            R4, [R2,#1]
228A1A:  ADD.W           R6, R2, R3,ASR#3
228A1E:  AND.W           R3, R3, #7
228A22:  LDRB            R2, [R2,#2]
228A24:  STR.W           R6, [R8]
228A28:  STR.W           R3, [R11]
228A2C:  ORR.W           R3, R4, R5,LSL#8
228A30:  ORR.W           R2, R2, R3,LSL#8
228A34:  LSL.W           R1, R2, R1
228A38:  UBFX.W          R1, R1, #0x12, #6
228A3C:  STR.W           R1, [R12,#4]
228A40:  ADD.W           R12, R12, #8
228A44:  ADDS            R0, #1
228A46:  CMP             R0, #0x1F
228A48:  BLT             loc_2289D4
228A4A:  B               loc_228A50
228A4C:  LDR.W           LR, [SP,#0x368+var_334]
228A50:  LDR             R0, [SP,#0x368+var_348]
228A52:  VMOV.I32        Q4, #0
228A56:  LDR             R1, [SP,#0x368+var_340]
228A58:  ADD.W           R9, SP, #0x368+var_230
228A5C:  MOVS            R2, #0
228A5E:  ADD.W           R0, R1, R0,LSL#8
228A62:  STR             R0, [SP,#0x368+var_354]
228A64:  MOVW            R0, #0x92AC
228A68:  ADD             R0, LR
228A6A:  STR             R0, [SP,#0x368+var_358]
228A6C:  MOVW            R0, #0x92A8
228A70:  ADD             R0, LR
228A72:  STR             R0, [SP,#0x368+var_368]
228A74:  MOVW            R0, #0x92C4
228A78:  ADD             R0, LR
228A7A:  STR             R0, [SP,#0x368+var_350]
228A7C:  ADD.W           R0, R1, #0x100
228A80:  MOVS            R1, #0
228A82:  STR             R0, [SP,#0x368+var_344]
228A84:  STRD.W          R2, R1, [SP,#0x368+var_33C]
228A88:  LDR             R0, [SP,#0x368+var_34C]
228A8A:  LDR             R0, [R0]
228A8C:  CMP             R0, #2
228A8E:  BNE             loc_228B46
228A90:  LDR             R0, [SP,#0x368+var_364]
228A92:  LDR.W           R12, [R0]
228A96:  CMP.W           R12, #1
228A9A:  BLT.W           loc_228C0C
228A9E:  ADD.W           LR, SP, #0x368+var_130
228AA2:  MOVS            R2, #0
228AA4:  LDR.W           R6, [R9,R2,LSL#3]
228AA8:  ADD.W           R3, R9, R2,LSL#3
228AAC:  CBZ             R6, loc_228AEC
228AAE:  LDR.W           R4, [R8]
228AB2:  LDR.W           R5, [R11]
228AB6:  ADDS            R0, R6, R5
228AB8:  LDRB.W          R10, [R4]
228ABC:  ADDS            R0, #1
228ABE:  LDRB.W          R9, [R4,#1]
228AC2:  ADD.W           R1, R4, R0,ASR#3
228AC6:  AND.W           R0, R0, #7
228ACA:  LDRB            R4, [R4,#2]
228ACC:  STR.W           R1, [R8]
228AD0:  RSB.W           R1, R6, #0x17
228AD4:  STR.W           R0, [R11]
228AD8:  ORR.W           R0, R9, R10,LSL#8
228ADC:  ORR.W           R0, R4, R0,LSL#8
228AE0:  LSLS            R0, R5
228AE2:  BIC.W           R0, R0, #0xFF000000
228AE6:  LSRS            R0, R1
228AE8:  STR.W           R0, [LR],#4
228AEC:  LDR             R3, [R3,#4]
228AEE:  CBZ             R3, loc_228B2E
228AF0:  LDR.W           R1, [R8]
228AF4:  LDR.W           R0, [R11]
228AF8:  ADDS            R4, R3, R0
228AFA:  LDRB.W          R9, [R1]
228AFE:  ADDS            R4, #1
228B00:  LDRB            R6, [R1,#1]
228B02:  ADD.W           R5, R1, R4,ASR#3
228B06:  AND.W           R4, R4, #7
228B0A:  LDRB            R1, [R1,#2]
228B0C:  STR.W           R5, [R8]
228B10:  STR.W           R4, [R11]
228B14:  ORR.W           R4, R6, R9,LSL#8
228B18:  ORR.W           R1, R1, R4,LSL#8
228B1C:  LSL.W           R0, R1, R0
228B20:  RSB.W           R1, R3, #0x17
228B24:  BIC.W           R0, R0, #0xFF000000
228B28:  LSRS            R0, R1
228B2A:  STR.W           R0, [LR],#4
228B2E:  ADDS            R2, #1
228B30:  ADD.W           R9, SP, #0x368+var_230
228B34:  CMP             R12, R2
228B36:  BNE             loc_228AA4
228B38:  CMP.W           R12, #0x20 ; ' '
228B3C:  BGE.W           loc_228C68
228B40:  ADD.W           R9, R9, R12,LSL#3
228B44:  B               loc_228C14
228B46:  ADD.W           R12, SP, #0x368+var_130
228B4A:  MOVS            R0, #0
228B4C:  LDR.W           R2, [R9,R0,LSL#2]
228B50:  CBZ             R2, loc_228B92
228B52:  LDR.W           R6, [R8]
228B56:  LDR.W           R3, [R11]
228B5A:  ADDS            R5, R2, R3
228B5C:  LDRB.W          LR, [R6]
228B60:  LDRB            R1, [R6,#1]
228B62:  ADDS            R5, #1
228B64:  RSB.W           R2, R2, #0x17
228B68:  ADD.W           R4, R6, R5,ASR#3
228B6C:  LDRB            R6, [R6,#2]
228B6E:  ORR.W           R1, R1, LR,LSL#8
228B72:  STR.W           R4, [R8]
228B76:  AND.W           R4, R5, #7
228B7A:  STR.W           R4, [R11]
228B7E:  ORR.W           R1, R6, R1,LSL#8
228B82:  LDR.W           LR, [SP,#0x368+var_334]
228B86:  LSLS            R1, R3
228B88:  BIC.W           R1, R1, #0xFF000000
228B8C:  LSRS            R1, R2
228B8E:  STR.W           R1, [R12],#4
228B92:  ADDS            R0, #1
228B94:  CMP             R0, #0x20 ; ' '
228B96:  BNE             loc_228B4C
228B98:  LDR             R3, [SP,#0x368+var_340]
228B9A:  ADD.W           R12, SP, #0x368+var_330
228B9E:  ADD             R2, SP, #0x368+var_130
228BA0:  MOVS            R0, #0
228BA2:  LDR.W           R6, [R9,R0,LSL#2]
228BA6:  CBZ             R6, loc_228BDC
228BA8:  LDR.W           R5, [R2],#4
228BAC:  MOV.W           R1, #0xFFFFFFFF
228BB0:  LSL.W           R4, R1, R6
228BB4:  LDR.W           R1, [R12],#4
228BB8:  ADD             R5, R4
228BBA:  ADD.W           R6, LR, R6,LSL#9
228BBE:  ADDS            R5, #1
228BC0:  MOVW            R4, #0x5D88
228BC4:  ADD.W           R1, R6, R1,LSL#3
228BC8:  VMOV            S0, R5
228BCC:  ADD             R1, R4
228BCE:  VCVT.F64.S32    D16, S0
228BD2:  VLDR            D17, [R1]
228BD6:  VMUL.F64        D16, D17, D16
228BDA:  B               loc_228BE0
228BDC:  VMOV.I32        D16, #0
228BE0:  VSTR            D16, [R3]
228BE4:  ADDS            R0, #1
228BE6:  ADDS            R3, #8
228BE8:  CMP             R0, #0x20 ; ' '
228BEA:  BNE             loc_228BA2
228BEC:  LDR             R0, [SP,#0x368+var_350]
228BEE:  LDR             R1, [R0]
228BF0:  CMP             R1, #0x1F
228BF2:  BGT.W           loc_228E1E
228BF6:  LDR             R0, [SP,#0x368+var_340]
228BF8:  ADD.W           R0, R0, R1,LSL#3
228BFC:  RSB.W           R1, R1, #0x20 ; ' '
228C00:  LSLS            R1, R1, #3
228C02:  BLX             j___aeabi_memclr8
228C06:  LDR.W           LR, [SP,#0x368+var_334]
228C0A:  B               loc_228E1E
228C0C:  ADD.W           R9, SP, #0x368+var_230
228C10:  ADD.W           LR, SP, #0x368+var_130
228C14:  SUB.W           R3, R12, #1
228C18:  LDR.W           R6, [R9],#4
228C1C:  CMP             R6, #0
228C1E:  BEQ             loc_228C5E
228C20:  LDR.W           R1, [R8]
228C24:  LDR.W           R0, [R11]
228C28:  ADDS            R4, R6, R0
228C2A:  LDRB.W          R10, [R1]
228C2E:  LDRB            R2, [R1,#1]
228C30:  ADDS            R4, #1
228C32:  ADD.W           R5, R1, R4,ASR#3
228C36:  LDRB            R1, [R1,#2]
228C38:  ORR.W           R2, R2, R10,LSL#8
228C3C:  STR.W           R5, [R8]
228C40:  AND.W           R4, R4, #7
228C44:  STR.W           R4, [R11]
228C48:  ORR.W           R1, R1, R2,LSL#8
228C4C:  LSL.W           R0, R1, R0
228C50:  RSB.W           R1, R6, #0x17
228C54:  BIC.W           R0, R0, #0xFF000000
228C58:  LSRS            R0, R1
228C5A:  STR.W           R0, [LR],#4
228C5E:  ADDS            R3, #1
228C60:  CMP             R3, #0x1F
228C62:  BLT             loc_228C18
228C64:  MOVS            R0, #1
228C66:  B               loc_228C6A
228C68:  MOVS            R0, #0
228C6A:  LDR.W           LR, [SP,#0x368+var_334]
228C6E:  CMP.W           R12, #1
228C72:  BLT             loc_228D3A
228C74:  LDR             R6, [SP,#0x368+var_344]
228C76:  ADD             R3, SP, #0x368+var_230
228C78:  ADD.W           R9, SP, #0x368+var_330
228C7C:  ADD.W           R10, SP, #0x368+var_130
228C80:  STR             R0, [SP,#0x368+var_35C]
228C82:  MOV.W           R0, R12,LSL#1
228C86:  MOV             R5, R12
228C88:  STR             R0, [SP,#0x368+var_360]
228C8A:  LDR.W           LR, [R3]
228C8E:  VMOV.I32        D16, #0
228C92:  CMP.W           LR, #0
228C96:  BEQ             loc_228CD0
228C98:  MOV.W           R0, #0xFFFFFFFF
228C9C:  LDR.W           R4, [R10],#4
228CA0:  LSL.W           R0, R0, LR
228CA4:  LDR.W           R2, [R9],#4
228CA8:  ADD             R0, R4
228CAA:  ADDS            R0, #1
228CAC:  VMOV            S0, R0
228CB0:  VCVT.F64.S32    D17, S0
228CB4:  LDR             R1, [SP,#0x368+var_334]
228CB6:  ADD.W           R0, R1, LR,LSL#9
228CBA:  ADD.W           R0, R0, R2,LSL#3
228CBE:  MOV             LR, R1
228CC0:  MOVW            R1, #0x5D88
228CC4:  ADD             R0, R1
228CC6:  VLDR            D18, [R0]
228CCA:  VMUL.F64        D17, D18, D17
228CCE:  B               loc_228CD8
228CD0:  VMOV.I32        D17, #0
228CD4:  LDR.W           LR, [SP,#0x368+var_334]
228CD8:  VSTR            D17, [R6,#-0x100]
228CDC:  LDR             R4, [R3,#4]
228CDE:  CBZ             R4, loc_228D12
228CE0:  LDR.W           R0, [R10],#4
228CE4:  MOV.W           R1, #0xFFFFFFFF
228CE8:  LSL.W           R2, R1, R4
228CEC:  LDR.W           R1, [R9],#4
228CF0:  ADD             R0, R2
228CF2:  ADDS            R0, #1
228CF4:  VMOV            S0, R0
228CF8:  ADD.W           R0, LR, R4,LSL#9
228CFC:  ADD.W           R0, R0, R1,LSL#3
228D00:  MOVW            R1, #0x5D88
228D04:  VCVT.F64.S32    D16, S0
228D08:  ADD             R0, R1
228D0A:  VLDR            D17, [R0]
228D0E:  VMUL.F64        D16, D17, D16
228D12:  VSTR            D16, [R6]
228D16:  ADDS            R3, #8
228D18:  SUBS            R5, #1
228D1A:  ADD.W           R6, R6, #8
228D1E:  BNE             loc_228C8A
228D20:  LDR             R1, [SP,#0x368+var_360]
228D22:  ADD             R0, SP, #0x368+var_230
228D24:  ADD.W           R3, R0, R1,LSL#2
228D28:  LDR             R0, [SP,#0x368+var_340]
228D2A:  ADD.W           R6, R0, R12,LSL#3
228D2E:  LDR             R0, [SP,#0x368+var_35C]
228D30:  ADD.W           R5, R6, #0x100
228D34:  CMP             R0, #1
228D36:  BEQ             loc_228D4C
228D38:  B               loc_228DBA
228D3A:  ADD             R3, SP, #0x368+var_230
228D3C:  ADD.W           R9, SP, #0x368+var_330
228D40:  ADD.W           R10, SP, #0x368+var_130
228D44:  LDRD.W          R5, R6, [SP,#0x368+var_344]
228D48:  CMP             R0, #1
228D4A:  BNE             loc_228DBA
228D4C:  SUB.W           R0, R12, #1
228D50:  LDR.W           R4, [R3],#4
228D54:  CMP             R4, #0
228D56:  BEQ             loc_228DA6
228D58:  LDR.W           R1, [R10],#4
228D5C:  MOV.W           R2, #0xFFFFFFFF
228D60:  LSLS            R2, R4
228D62:  ADD             R1, R2
228D64:  ADD.W           R2, LR, R4,LSL#9
228D68:  ADDS            R1, #1
228D6A:  MOVW            R4, #0x5D88
228D6E:  ADD             R2, R4
228D70:  VMOV            S0, R1
228D74:  VCVT.F64.S32    D16, S0
228D78:  LDR.W           R1, [R9]
228D7C:  ADD.W           R1, R2, R1,LSL#3
228D80:  VLDR            D17, [R1]
228D84:  VMUL.F64        D17, D17, D16
228D88:  VSTR            D17, [R6]
228D8C:  LDR.W           R1, [R9,#4]
228D90:  ADD.W           R9, R9, #8
228D94:  ADD.W           R1, R2, R1,LSL#3
228D98:  VLDR            D17, [R1]
228D9C:  VMUL.F64        D16, D17, D16
228DA0:  VSTR            D16, [R5]
228DA4:  B               loc_228DB0
228DA6:  MOVS            R1, #0
228DA8:  STRD.W          R1, R1, [R5]
228DAC:  STRD.W          R1, R1, [R6]
228DB0:  ADDS            R0, #1
228DB2:  ADDS            R6, #8
228DB4:  ADDS            R5, #8
228DB6:  CMP             R0, #0x1F
228DB8:  BLT             loc_228D50
228DBA:  LDR             R0, [SP,#0x368+var_350]
228DBC:  ADD.W           R9, SP, #0x368+var_230
228DC0:  MOVS            R4, #0
228DC2:  MOV             R6, #0xFFFFFF00
228DC6:  LDR             R3, [R0]
228DC8:  CMP             R3, #0x1F
228DCA:  BGT             loc_228E1E
228DCC:  RSB.W           R1, R3, #0x20 ; ' '
228DD0:  CMP             R1, #2
228DD2:  BCC             loc_228E00
228DD4:  BIC.W           R12, R1, #1
228DD8:  CMP.W           R12, #0
228DDC:  BEQ             loc_228E00
228DDE:  LDR             R2, [SP,#0x368+var_340]
228DE0:  ADD.W           R0, R3, R12
228DE4:  ADD.W           R3, R2, R3,LSL#3
228DE8:  MOV             R2, R12
228DEA:  ADD.W           R5, R3, #0x100
228DEE:  SUBS            R2, #2
228DF0:  VST1.64         {D8-D9}, [R5]
228DF4:  VST1.64         {D8-D9}, [R3]!
228DF8:  BNE             loc_228DEA
228DFA:  CMP             R1, R12
228DFC:  BNE             loc_228E02
228DFE:  B               loc_228E1E
228E00:  MOV             R0, R3
228E02:  LDR             R1, [SP,#0x368+var_344]
228E04:  ADD.W           R1, R1, R0,LSL#3
228E08:  SUBS            R0, #1
228E0A:  STR             R4, [R1,R6]
228E0C:  ADDS            R0, #1
228E0E:  CMP             R0, #0x1F
228E10:  STRD.W          R4, R4, [R1]
228E14:  STR.W           R4, [R1,#-0xFC]
228E18:  ADD.W           R1, R1, #8
228E1C:  BLT             loc_228E0A
228E1E:  LDR             R0, [SP,#0x368+var_348]
228E20:  ADDS            R0, #1
228E22:  BEQ             loc_228E30
228E24:  LDR             R0, [SP,#0x368+var_358]
228E26:  MOV             R1, LR
228E28:  LDR             R2, [R0]
228E2A:  LDR             R0, [SP,#0x368+var_354]
228E2C:  BLX             R2
228E2E:  B               loc_228E3C
228E30:  LDR             R0, [SP,#0x368+var_368]
228E32:  MOV             R2, LR
228E34:  LDR             R3, [R0]
228E36:  LDRD.W          R1, R0, [SP,#0x368+var_344]
228E3A:  BLX             R3
228E3C:  LDR.W           LR, [SP,#0x368+var_334]
228E40:  LDRD.W          R2, R1, [SP,#0x368+var_33C]
228E44:  ADD             R1, R0
228E46:  ADDS            R2, #1
228E48:  CMP             R2, #0xC
228E4A:  BNE.W           loc_228A84
228E4E:  MOV             R0, R1
228E50:  ADD.W           SP, SP, #0x338
228E54:  VPOP            {D8-D9}
228E58:  ADD             SP, SP, #4
228E5A:  POP.W           {R8-R11}
228E5E:  POP             {R4-R7,PC}
