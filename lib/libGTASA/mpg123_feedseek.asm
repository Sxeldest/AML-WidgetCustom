; =========================================================
; Game Engine Function: mpg123_feedseek
; Address            : 0x2318D8 - 0x231C28
; =========================================================

2318D8:  PUSH            {R4-R7,LR}
2318DA:  ADD             R7, SP, #0xC
2318DC:  PUSH.W          {R8-R11}
2318E0:  SUB             SP, SP, #0xC
2318E2:  MOV             R8, R3
2318E4:  MOV             R6, R2
2318E6:  MOV             R9, R1
2318E8:  MOV             R4, R0
2318EA:  BLX             j_mpg123_tell
2318EE:  MOV             R5, R0
2318F0:  CMP             R5, #0
2318F2:  BLT.W           loc_231C06
2318F6:  CMP.W           R8, #0
2318FA:  BEQ             loc_231918
2318FC:  MOVW            R10, #0xB2C8
231900:  LDR.W           R0, [R4,R10]
231904:  CBZ             R0, loc_231922
231906:  CMP             R6, #0
231908:  BEQ.W           loc_231A0E
23190C:  CMP             R6, #2
23190E:  BEQ             loc_231936
231910:  CMP             R6, #1
231912:  BNE             loc_23195E
231914:  ADD             R9, R5
231916:  B               loc_231A0E
231918:  MOVW            R0, #0xB468
23191C:  MOVS            R1, #0x21 ; '!'
23191E:  STR             R1, [R4,R0]
231920:  B               loc_231C02
231922:  LDR             R0, [R4]
231924:  CMP             R0, #0
231926:  BEQ             loc_231906
231928:  MOV             R0, R4
23192A:  BL              sub_2309D2
23192E:  CMP             R0, #0
231930:  BGE             loc_231906
231932:  MOV             R5, R0
231934:  B               loc_231C06
231936:  MOVW            R0, #0x9368
23193A:  LDR             R0, [R4,R0]
23193C:  CMP             R0, #1
23193E:  BLT             loc_231968
231940:  MOVW            R1, #0x92D0
231944:  LDR             R3, [R4,R1]
231946:  CMP             R3, #3
231948:  BCS             loc_231972
23194A:  MOVW            R1, #0x92D8
23194E:  LDR             R1, [R4,R1]
231950:  CMP             R1, #1
231952:  BEQ             loc_2319E0
231954:  CMP             R1, #2
231956:  BNE             loc_2319E6
231958:  MOV.W           R1, #0x480
23195C:  B               loc_231A06
23195E:  MOVW            R0, #0xB468
231962:  MOVS            R1, #0x14
231964:  STR             R1, [R4,R0]
231966:  B               loc_231C02
231968:  MOVW            R0, #0xB468
23196C:  MOVS            R1, #0x13
23196E:  STR             R1, [R4,R0]
231970:  B               loc_231C02
231972:  BNE.W           loc_231C10
231976:  MOVW            R1, #0x9190
23197A:  MOV.W           R5, #0x4000
23197E:  LDR             R2, [R4,R1]
231980:  MOVW            R1, #0x92D8
231984:  LDR             R3, [R4,R1]
231986:  MOVW            R1, #0x92CC
23198A:  ADD             R1, R4
23198C:  STR             R1, [SP,#0x28+var_20]
23198E:  MOVW            R1, #0x92C8
231992:  ADD.W           LR, R4, R1
231996:  MOVS            R1, #0
231998:  MOVW            R11, #0x7FFF
23199C:  CMP             R3, #1
23199E:  BEQ             loc_2319AA
2319A0:  CMP             R3, #2
2319A2:  BNE             loc_2319B0
2319A4:  MOV.W           R6, #0x480
2319A8:  B               loc_2319C2
2319AA:  MOV.W           R6, #0x180
2319AE:  B               loc_2319C2
2319B0:  LDR.W           R6, [LR]
2319B4:  CBNZ            R6, loc_2319BE
2319B6:  LDR             R6, [SP,#0x28+var_20]
2319B8:  LDR             R6, [R6]
2319BA:  CMP             R6, #0
2319BC:  BEQ             loc_2319A4
2319BE:  MOV.W           R6, #0x240
2319C2:  MLA.W           R5, R6, R2, R5
2319C6:  SUBS            R0, #1
2319C8:  MOV.W           R6, R5,ASR#31
2319CC:  ADD.W           R6, R5, R6,LSR#17
2319D0:  BIC.W           R12, R6, R11
2319D4:  SUB.W           R5, R5, R12
2319D8:  ADD.W           R1, R1, R6,ASR#15
2319DC:  BNE             loc_23199C
2319DE:  B               loc_231A0A
2319E0:  MOV.W           R1, #0x180
2319E4:  B               loc_231A06
2319E6:  MOVW            R1, #0x92C8
2319EA:  LDR             R1, [R4,R1]
2319EC:  CBZ             R1, loc_2319F4
2319EE:  MOV.W           R1, #0x240
2319F2:  B               loc_231A06
2319F4:  MOVW            R1, #0x92CC
2319F8:  LDR             R2, [R4,R1]
2319FA:  MOV.W           R1, #0x480
2319FE:  CMP             R2, #0
231A00:  IT NE
231A02:  MOVNE.W         R1, #0x240
231A06:  LSRS            R1, R3
231A08:  MULS            R1, R0
231A0A:  SUB.W           R9, R1, R9
231A0E:  MOVS            R6, #0
231A10:  CMP.W           R9, #0
231A14:  IT LE
231A16:  MOVLE           R9, R6
231A18:  MOV             R0, R4
231A1A:  MOV             R1, R9
231A1C:  ADD.W           R5, R4, R10
231A20:  BLX             j_INT123_frame_set_seek
231A24:  MOVW            LR, #0xB334
231A28:  MOVW            R0, #0xB2A8
231A2C:  LDR.W           R1, [R4,LR]
231A30:  MOVW            R12, #0xB328
231A34:  STR             R6, [R4,R0]
231A36:  MOVW            R9, #0xB2D8
231A3A:  LDR.W           R3, [R4,R12]
231A3E:  MOVW            R2, #0xB2D0
231A42:  LDR.W           R0, [R4,R9]
231A46:  ADD             R1, R3
231A48:  STR.W           R1, [R8]
231A4C:  MOVW            R3, #0x9314
231A50:  LDR             R1, [R4,R3]
231A52:  CMP             R0, #0
231A54:  LDR             R2, [R4,R2]
231A56:  IT LE
231A58:  MOVLE           R0, R6
231A5A:  CMP             R1, R2
231A5C:  IT LT
231A5E:  STRLT           R6, [R5]
231A60:  CMP             R1, R0
231A62:  BNE             loc_231A6C
231A64:  LDR             R2, [R5]
231A66:  CMP             R2, #0
231A68:  BNE.W           loc_231BF2
231A6C:  SUBS            R0, #1
231A6E:  CMP             R1, R0
231A70:  BEQ.W           loc_231BF2
231A74:  ADD.W           R0, R4, R9
231A78:  MOVW            R1, #0xB33D
231A7C:  LDRB            R1, [R4,R1]
231A7E:  ADDS            R5, R4, R3
231A80:  LDR.W           R11, [R0]
231A84:  ADD             LR, R4
231A86:  MOVS            R6, #0
231A88:  CMP.W           R11, #0
231A8C:  IT LE
231A8E:  MOVLE           R11, R6
231A90:  LSLS            R0, R1, #0x1E
231A92:  BMI             loc_231AA2
231A94:  MOVW            R0, #0xB294
231A98:  STR             R6, [R4,R0]
231A9A:  MOVW            R0, #0xB298
231A9E:  STR             R6, [R4,R0]
231AA0:  B               loc_231B80
231AA2:  MOVW            R0, #0x9324
231AA6:  LDR             R1, [R4,R0]
231AA8:  MOVW            R0, #0x931C
231AAC:  LDR             R6, [R4,R0]
231AAE:  CMP             R1, #0
231AB0:  BEQ             loc_231B40
231AB2:  MOVW            R0, #0x9368
231AB6:  LDR             R0, [R4,R0]
231AB8:  CMP             R0, #1
231ABA:  ITTT GE
231ABC:  MOVWGE          R2, #0xB2E4
231AC0:  LDRGE           R2, [R4,R2]
231AC2:  CMPGE           R2, #1
231AC4:  BLT             loc_231B40
231AC6:  VMOV            S0, R11
231ACA:  VLDR            D17, =100.0
231ACE:  MOV.W           R3, #0x100
231AD2:  VLDR            D20, =0.00390625
231AD6:  VCVT.F64.S32    D16, S0
231ADA:  VMUL.F64        D16, D16, D17
231ADE:  VMOV            S0, R0
231AE2:  MOVW            R0, #0x9320
231AE6:  VCVT.F64.S32    D18, S0
231AEA:  VDIV.F64        D16, D16, D18
231AEE:  VCVT.S32.F64    S0, D16
231AF2:  STRH            R3, [R4,R0]
231AF4:  VMOV            R0, S0
231AF8:  CMP             R0, #0
231AFA:  IT LE
231AFC:  MOVLE           R0, #0
231AFE:  CMP             R0, #0x63 ; 'c'
231B00:  IT GE
231B02:  MOVGE           R0, #0x63 ; 'c'
231B04:  VMOV            S0, R0
231B08:  LDRB            R1, [R1,R0]
231B0A:  VCVT.F64.S32    D16, S0
231B0E:  VDIV.F64        D16, D16, D17
231B12:  VMOV            S0, R1
231B16:  VMUL.F64        D16, D16, D18
231B1A:  VCVT.F64.U32    D19, S0
231B1E:  VMUL.F64        D17, D19, D20
231B22:  VMOV            S0, R2
231B26:  VCVT.F64.S32    D19, S0
231B2A:  VMUL.F64        D17, D17, D19
231B2E:  VCVT.S32.F64    S0, D17
231B32:  VCVT.S32.F64    S2, D16
231B36:  VMOV            R6, S0
231B3A:  VMOV            R11, S2
231B3E:  B               loc_231B84
231B40:  MOVW            R0, #0x9370
231B44:  ADD             R0, R4
231B46:  VLDR            D16, [R0]
231B4A:  VCMPE.F64       D16, #0.0
231B4E:  VMRS            APSR_nzcv, FPSCR
231B52:  BLE             loc_231B80
231B54:  VMOV            S0, R11
231B58:  MOVW            R0, #0x9320
231B5C:  MOV.W           R1, #0x100
231B60:  VCVT.F64.S32    D17, S0
231B64:  VMUL.F64        D16, D16, D17
231B68:  VMOV            S0, R6
231B6C:  VCVT.F64.S32    D17, S0
231B70:  VADD.F64        D16, D16, D17
231B74:  VCVT.S32.F64    S0, D16
231B78:  STRH            R1, [R4,R0]
231B7A:  VMOV            R6, S0
231B7E:  B               loc_231B84
231B80:  MOV.W           R11, #0
231B84:  LDR.W           R0, [LR]
231B88:  CMP             R6, R0
231B8A:  BLT             loc_231BA2
231B8C:  ADD.W           R1, R4, R12
231B90:  SUBS            R2, R6, R0
231B92:  LDR             R1, [R1]
231B94:  CMP             R2, R1
231B96:  BGE             loc_231BA2
231B98:  MOVW            R3, #0xB32C
231B9C:  ADDS            R6, R1, R0
231B9E:  STR             R2, [R4,R3]
231BA0:  B               loc_231BE0
231BA2:  MOVW            R0, #0xB320
231BA6:  ADD.W           R9, R4, R0
231BAA:  STRD.W          LR, R5, [SP,#0x28+var_24]
231BAE:  LDR.W           R5, [R9]
231BB2:  CBZ             R5, loc_231BCC
231BB4:  LDR             R0, [R5]; p
231BB6:  LDR.W           R10, [R5,#0xC]
231BBA:  BLX             free
231BBE:  MOV             R0, R5; p
231BC0:  BLX             free
231BC4:  CMP.W           R10, #0
231BC8:  MOV             R5, R10
231BCA:  BNE             loc_231BB4
231BCC:  VMOV.I32        Q8, #0
231BD0:  MOVS            R0, #0
231BD2:  VST1.32         {D16-D17}, [R9]!
231BD6:  STR.W           R0, [R9]
231BDA:  LDR             R0, [SP,#0x28+var_24]
231BDC:  STR             R6, [R0]
231BDE:  LDR             R5, [SP,#0x28+var_20]
231BE0:  STR.W           R6, [R8]
231BE4:  SUB.W           R0, R11, #1
231BE8:  STR             R0, [R5]
231BEA:  LDR.W           R0, [R8]
231BEE:  CMP             R0, #0
231BF0:  BLT             loc_231C02
231BF2:  MOV             R0, R4
231BF4:  ADD             SP, SP, #0xC
231BF6:  POP.W           {R8-R11}
231BFA:  POP.W           {R4-R7,LR}
231BFE:  B.W             mpg123_tell
231C02:  MOV.W           R5, #0xFFFFFFFF
231C06:  MOV             R0, R5
231C08:  ADD             SP, SP, #0xC
231C0A:  POP.W           {R8-R11}
231C0E:  POP             {R4-R7,PC}
231C10:  LDR             R0, =(off_677664 - 0x231C1C)
231C12:  MOV.W           R2, #0x2E8
231C16:  LDR             R1, =(aCProjectsOswra_5 - 0x231C1E); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
231C18:  ADD             R0, PC; off_677664
231C1A:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
231C1C:  LDR             R0, [R0]
231C1E:  LDR             R0, [R0]; stream
231C20:  BLX             fprintf
231C24:  MOVS            R1, #0
231C26:  B               loc_231A0A
