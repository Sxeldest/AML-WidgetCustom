; =========================================================
; Game Engine Function: _ZN8CCarCtrl22PickNextNodeToChaseCarEP8CVehiclefffS1_
; Address            : 0x2EF9D0 - 0x2F00AE
; =========================================================

2EF9D0:  PUSH            {R4-R7,LR}
2EF9D2:  ADD             R7, SP, #0xC
2EF9D4:  PUSH.W          {R8-R11}
2EF9D8:  SUB             SP, SP, #4
2EF9DA:  VPUSH           {D8-D14}
2EF9DE:  SUB             SP, SP, #0x80; int
2EF9E0:  MOVW            R10, #0xFFFF
2EF9E4:  MOV             R9, R0
2EF9E6:  STRH.W          R10, [SP,#0xD8+var_5C]
2EF9EA:  MOV             R4, R3
2EF9EC:  STRH.W          R10, [SP,#0xD8+var_60]
2EF9F0:  MOV             R6, R2
2EF9F2:  LDRH.W          R0, [R9,#0x462]; seed
2EF9F6:  MOV             R5, R1
2EF9F8:  CMP             R0, #0
2EF9FA:  IT NE
2EF9FC:  BLXNE           srand
2EFA00:  LDR.W           R0, =(_ZN8CWeather13WeatherRegionE_ptr - 0x2EFA14)
2EFA04:  MOVW            R3, #0x21B
2EFA08:  LDR.W           R1, [R9,#0x394]
2EFA0C:  VMOV            S18, R6
2EFA10:  ADD             R0, PC; _ZN8CWeather13WeatherRegionE_ptr
2EFA12:  STR             R1, [SP,#0xD8+var_80]
2EFA14:  LDR.W           R1, [R9,#0x398]
2EFA18:  VMOV            S0, R4
2EFA1C:  LDR             R0, [R0]; CWeather::WeatherRegion ...
2EFA1E:  VMOV            S20, R5
2EFA22:  VMOV.F32        S16, #0.125
2EFA26:  ADD.W           LR, SP, #0xD8+var_C4
2EFA2A:  MOV.W           R11, R1,LSR#16
2EFA2E:  MOV.W           R12, #0
2EFA32:  LDRH            R0, [R0]; CWeather::WeatherRegion
2EFA34:  RSB.W           R6, R11, R11,LSL#3
2EFA38:  ORR.W           R0, R0, #4
2EFA3C:  CMP             R0, #4
2EFA3E:  LDR.W           R0, =(ThePaths_ptr - 0x2EFA54)
2EFA42:  ITE EQ
2EFA44:  VLDREQ          S2, =50.0
2EFA48:  VLDRNE          S2, =1000000.0
2EFA4C:  LDRH.W          R2, [R9,#0x26]
2EFA50:  ADD             R0, PC; ThePaths_ptr
2EFA52:  CMP             R2, R3
2EFA54:  UXTH            R3, R1
2EFA56:  LDR             R0, [R0]; ThePaths ; int
2EFA58:  MOV.W           R2, #0
2EFA5C:  IT EQ
2EFA5E:  MOVEQ           R2, #1
2EFA60:  STR             R3, [SP,#0xD8+var_8C]
2EFA62:  ADD.W           R8, R0, R3,LSL#2
2EFA66:  STR             R6, [SP,#0xD8+var_74]
2EFA68:  LDR.W           R3, [R8,#0x804]
2EFA6C:  ADD.W           R3, R3, R6,LSL#2
2EFA70:  LDR.W           R6, =(EmptyNodeAddress_ptr - 0x2EFA78)
2EFA74:  ADD             R6, PC; EmptyNodeAddress_ptr
2EFA76:  LDRSH.W         R5, [R3,#8]
2EFA7A:  LDRSH.W         R4, [R3,#0xA]
2EFA7E:  LDR             R6, [R6]; EmptyNodeAddress
2EFA80:  VMOV            S6, R5
2EFA84:  LDRSH.W         R3, [R3,#0xC]
2EFA88:  VMOV            S4, R4
2EFA8C:  STR             R2, [SP,#0xD8+var_A0]; int
2EFA8E:  LDR             R6, [R6]
2EFA90:  VCVT.F32.S32    S6, S6
2EFA94:  VCVT.F32.S32    S4, S4
2EFA98:  MOV             R2, #0x497423FE
2EFAA0:  STR             R6, [SP,#0xD8+var_A4]; int
2EFAA2:  STR             R2, [SP,#0xD8+var_AC]; float
2EFAA4:  ADD             R2, SP, #0xD8+var_68
2EFAA6:  MOVS            R6, #2
2EFAA8:  SUB.W           R5, R7, #-var_62
2EFAAC:  ADD             R4, SP, #0xD8+var_60
2EFAAE:  STM.W           LR, {R4-R6}
2EFAB2:  VMUL.F32        S6, S6, S16
2EFAB6:  VMUL.F32        S4, S4, S16
2EFABA:  STR             R2, [SP,#0xD8+var_B8]; int
2EFABC:  VMOV            R2, S6; int
2EFAC0:  VMOV            S6, R3
2EFAC4:  VMOV            R3, S4; int
2EFAC8:  VCVT.F32.S32    S4, S6
2EFACC:  STR.W           R12, [SP,#0xD8+var_9C]; int
2EFAD0:  STR.W           R12, [SP,#0xD8+var_A8]; int
2EFAD4:  STR.W           R12, [SP,#0xD8+var_B0]; int
2EFAD8:  VSTR            S2, [SP,#0xD8+var_B4]
2EFADC:  VSTR            S20, [SP,#0xD8+var_D0]
2EFAE0:  VSTR            S18, [SP,#0xD8+var_CC]
2EFAE4:  VSTR            S0, [SP,#0xD8+var_C8]
2EFAE8:  VMUL.F32        S4, S4, S16
2EFAEC:  STR             R1, [SP,#0xD8+var_D4]; int
2EFAEE:  MOVS            R1, #0; int
2EFAF0:  VSTR            S4, [SP,#0xD8+var_D8]
2EFAF4:  BLX             j__ZN9CPathFind12DoPathSearchEh7CVector12CNodeAddressS0_PS1_PsiPffS2_fbS1_bb; CPathFind::DoPathSearch(uchar,CVector,CNodeAddress,CVector,CNodeAddress*,short *,int,float *,float,CNodeAddress*,float,bool,CNodeAddress,bool,bool)
2EFAF8:  LDR.W           R0, =(_ZN8CWeather13WeatherRegionE_ptr - 0x2EFB00)
2EFAFC:  ADD             R0, PC; _ZN8CWeather13WeatherRegionE_ptr
2EFAFE:  LDR             R0, [R0]; CWeather::WeatherRegion ...
2EFB00:  LDRH            R0, [R0]; CWeather::WeatherRegion
2EFB02:  ORR.W           R0, R0, #4
2EFB06:  CMP             R0, #4
2EFB08:  BNE             loc_2EFB5C
2EFB0A:  LDRH.W          R0, [R7,#var_62]
2EFB0E:  CMP             R0, #0
2EFB10:  BEQ.W           loc_2EFF04
2EFB14:  LDR.W           R1, [R9,#0x14]
2EFB18:  ADD.W           R2, R1, #0x30 ; '0'
2EFB1C:  CMP             R1, #0
2EFB1E:  IT EQ
2EFB20:  ADDEQ.W         R2, R9, #4
2EFB24:  VLDR            S0, [R2]
2EFB28:  VLDR            S2, [R2,#4]
2EFB2C:  VSUB.F32        S0, S20, S0
2EFB30:  VSUB.F32        S2, S18, S2
2EFB34:  VMUL.F32        S0, S0, S0
2EFB38:  VMUL.F32        S2, S2, S2
2EFB3C:  VADD.F32        S0, S0, S2
2EFB40:  VMOV.F32        S2, #3.0
2EFB44:  VSQRT.F32       S0, S0
2EFB48:  VMUL.F32        S0, S0, S2
2EFB4C:  VLDR            S2, [SP,#0xD8+var_68]
2EFB50:  VCMPE.F32       S2, S0
2EFB54:  VMRS            APSR_nzcv, FPSCR
2EFB58:  BLE             loc_2EFB60
2EFB5A:  B               loc_2EFF04
2EFB5C:  LDRH.W          R0, [R7,#var_62]
2EFB60:  SUBS            R1, R0, #1
2EFB62:  ADDW            R3, R8, #0x804
2EFB66:  STR             R3, [SP,#0xD8+var_7C]
2EFB68:  UXTH            R1, R1
2EFB6A:  CMP             R1, #1
2EFB6C:  BHI             loc_2EFC22
2EFB6E:  LDRH.W          R1, [SP,#0xD8+var_60]
2EFB72:  LDR             R2, [SP,#0xD8+var_8C]
2EFB74:  CMP             R1, R2
2EFB76:  ITT EQ
2EFB78:  LDRHEQ.W        R1, [SP,#0xD8+var_60+2]
2EFB7C:  CMPEQ           R1, R11
2EFB7E:  BEQ             loc_2EFBC6
2EFB80:  LDR.W           R0, =(ThePaths_ptr - 0x2EFB8E)
2EFB84:  MOV.W           R8, #0
2EFB88:  LDR             R1, [R3]
2EFB8A:  ADD             R0, PC; ThePaths_ptr
2EFB8C:  LDR             R4, [SP,#0xD8+var_60]
2EFB8E:  LDR             R2, [R0]; ThePaths
2EFB90:  LDR             R0, [SP,#0xD8+var_74]
2EFB92:  LSRS            R5, R4, #0x10
2EFB94:  ADD.W           R0, R1, R0,LSL#2
2EFB98:  LDR             R1, [SP,#0xD8+var_8C]
2EFB9A:  LDRSH.W         R0, [R0,#0x10]
2EFB9E:  ADD.W           R1, R2, R1,LSL#2
2EFBA2:  LDR.W           R1, [R1,#0xA44]
2EFBA6:  B               loc_2EFBAC
2EFBA8:  ADD.W           R8, R8, #1
2EFBAC:  SXTAH.W         R2, R0, R8
2EFBB0:  UXTH            R6, R4
2EFBB2:  LDRH.W          R3, [R1,R2,LSL#2]
2EFBB6:  CMP             R3, R6
2EFBB8:  BNE             loc_2EFBA8
2EFBBA:  ADD.W           R2, R1, R2,LSL#2
2EFBBE:  LDRH            R2, [R2,#2]
2EFBC0:  CMP             R2, R5
2EFBC2:  BNE             loc_2EFBA8
2EFBC4:  B               loc_2EFDEC
2EFBC6:  CMP             R0, #2
2EFBC8:  BNE             loc_2EFC22
2EFBCA:  LDRH.W          R0, [SP,#0xD8+var_5C]
2EFBCE:  LDR             R1, [SP,#0xD8+var_8C]
2EFBD0:  CMP             R0, R1
2EFBD2:  ITT EQ
2EFBD4:  LDRHEQ.W        R0, [SP,#0xD8+var_5C+2]
2EFBD8:  CMPEQ           R0, R11
2EFBDA:  BEQ             loc_2EFC22
2EFBDC:  LDR.W           R0, =(ThePaths_ptr - 0x2EFBEA)
2EFBE0:  MOV.W           R8, #0
2EFBE4:  LDR             R1, [R3]
2EFBE6:  ADD             R0, PC; ThePaths_ptr
2EFBE8:  LDR             R4, [SP,#0xD8+var_5C]
2EFBEA:  LDR             R2, [R0]; ThePaths
2EFBEC:  LDR             R0, [SP,#0xD8+var_74]
2EFBEE:  LSRS            R5, R4, #0x10
2EFBF0:  ADD.W           R0, R1, R0,LSL#2
2EFBF4:  LDR             R1, [SP,#0xD8+var_8C]
2EFBF6:  LDRSH.W         R0, [R0,#0x10]
2EFBFA:  ADD.W           R1, R2, R1,LSL#2
2EFBFE:  LDR.W           R1, [R1,#0xA44]
2EFC02:  B               loc_2EFC08
2EFC04:  ADD.W           R8, R8, #1
2EFC08:  SXTAH.W         R2, R0, R8
2EFC0C:  UXTH            R6, R4
2EFC0E:  LDRH.W          R3, [R1,R2,LSL#2]
2EFC12:  CMP             R3, R6
2EFC14:  BNE             loc_2EFC04
2EFC16:  ADD.W           R2, R1, R2,LSL#2
2EFC1A:  LDRH            R2, [R2,#2]
2EFC1C:  CMP             R2, R5
2EFC1E:  BNE             loc_2EFC04
2EFC20:  B               loc_2EFDEC
2EFC22:  LDR.W           R0, [R9,#0x14]
2EFC26:  ADD.W           R1, R0, #0x30 ; '0'
2EFC2A:  CMP             R0, #0
2EFC2C:  IT EQ
2EFC2E:  ADDEQ.W         R1, R9, #4
2EFC32:  VLDR            S0, [R1]
2EFC36:  VLDR            S2, [R1,#4]
2EFC3A:  VSUB.F32        S0, S20, S0
2EFC3E:  VSUB.F32        S2, S18, S2
2EFC42:  VMOV            R0, S0; this
2EFC46:  VMOV            R1, S2; float
2EFC4A:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2EFC4E:  LDR.W           R12, [SP,#0xD8+var_7C]
2EFC52:  LDR             R2, [SP,#0xD8+var_74]
2EFC54:  LDR.W           R1, [R12]
2EFC58:  ADD.W           R2, R1, R2,LSL#2
2EFC5C:  LDRH            R2, [R2,#0x18]
2EFC5E:  ANDS.W          R4, R2, #0xF
2EFC62:  BEQ.W           loc_2EFDE4
2EFC66:  STRD.W          R11, R9, [SP,#0xD8+var_98]
2EFC6A:  VMOV            S18, R0
2EFC6E:  LDR             R5, [SP,#0xD8+var_80]
2EFC70:  VMOV.F32        S20, #10.0
2EFC74:  LDR.W           R0, =(ThePaths_ptr - 0x2EFC88)
2EFC78:  MOV.W           R11, #0
2EFC7C:  VLDR            S22, =3.1416
2EFC80:  MOV.W           R8, #0
2EFC84:  ADD             R0, PC; ThePaths_ptr
2EFC86:  LSRS            R2, R5, #0x10
2EFC88:  STR             R2, [SP,#0xD8+var_84]
2EFC8A:  LDR             R2, [SP,#0xD8+var_8C]
2EFC8C:  LDR             R0, [R0]; ThePaths
2EFC8E:  VLDR            S24, =-6.2832
2EFC92:  ADD.W           R0, R0, R2,LSL#2
2EFC96:  LDR.W           R2, =(ThePaths_ptr - 0x2EFCA6)
2EFC9A:  ADDW            R6, R0, #0xA44
2EFC9E:  VLDR            S26, =-3.1416
2EFCA2:  ADD             R2, PC; ThePaths_ptr
2EFCA4:  VLDR            S28, =6.2832
2EFCA8:  MOVS            R0, #0
2EFCAA:  LDR             R2, [R2]; ThePaths
2EFCAC:  STR             R2, [SP,#0xD8+var_78]
2EFCAE:  STR             R2, [SP,#0xD8+var_88]
2EFCB0:  MOVW            R2, #0xFFFF
2EFCB4:  STR             R2, [SP,#0xD8+var_90]
2EFCB6:  B               loc_2EFCBC
2EFCB8:  LDR.W           R1, [R12]
2EFCBC:  LDR             R2, [SP,#0xD8+var_74]
2EFCBE:  LDR             R3, [R6]
2EFCC0:  ADD.W           R1, R1, R2,LSL#2
2EFCC4:  LDRSH.W         R2, [R1,#0x10]
2EFCC8:  ADD             R0, R2
2EFCCA:  UXTH            R2, R5
2EFCCC:  LDR.W           R10, [R3,R0,LSL#2]
2EFCD0:  UXTH.W          R0, R10
2EFCD4:  CMP             R0, R2
2EFCD6:  BNE             loc_2EFCE6
2EFCD8:  CMP             R4, #1
2EFCDA:  BEQ             loc_2EFCE6
2EFCDC:  LDR             R3, [SP,#0xD8+var_84]
2EFCDE:  MOV.W           R2, R10,LSR#16
2EFCE2:  CMP             R2, R3
2EFCE4:  BEQ             loc_2EFDAA
2EFCE6:  LDR             R2, [SP,#0xD8+var_78]
2EFCE8:  ADD.W           R0, R2, R0,LSL#2
2EFCEC:  LDR.W           R0, [R0,#0x804]
2EFCF0:  CMP             R0, #0
2EFCF2:  BEQ             loc_2EFDAA
2EFCF4:  MOV.W           R9, R10,LSR#16
2EFCF8:  MOV.W           R2, R9,LSL#3
2EFCFC:  SUB.W           R2, R2, R10,LSR#16
2EFD00:  ADD.W           R0, R0, R2,LSL#2
2EFD04:  LDRSH.W         R2, [R1,#8]
2EFD08:  LDRSH.W         R1, [R1,#0xA]
2EFD0C:  LDRSH.W         R3, [R0,#8]
2EFD10:  LDRSH.W         R0, [R0,#0xA]
2EFD14:  VMOV            S0, R2; float
2EFD18:  VMOV            S4, R1
2EFD1C:  VMOV            S2, R3
2EFD20:  VMOV            S6, R0
2EFD24:  VCVT.F32.S32    S0, S0
2EFD28:  VCVT.F32.S32    S2, S2
2EFD2C:  VCVT.F32.S32    S4, S4
2EFD30:  VCVT.F32.S32    S6, S6
2EFD34:  VMUL.F32        S0, S0, S16
2EFD38:  VMUL.F32        S2, S2, S16
2EFD3C:  VMUL.F32        S4, S4, S16
2EFD40:  VMUL.F32        S6, S6, S16
2EFD44:  VSUB.F32        S0, S2, S0
2EFD48:  VSUB.F32        S2, S6, S4
2EFD4C:  VMOV            R0, S0; this
2EFD50:  VMOV            R1, S2; float
2EFD54:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2EFD58:  VMOV            S0, R0
2EFD5C:  VSUB.F32        S0, S0, S18
2EFD60:  B               loc_2EFD66
2EFD62:  VADD.F32        S0, S0, S24
2EFD66:  VCMPE.F32       S0, S22
2EFD6A:  VMRS            APSR_nzcv, FPSCR
2EFD6E:  BGT             loc_2EFD62
2EFD70:  LDR.W           R12, [SP,#0xD8+var_7C]
2EFD74:  VCMPE.F32       S0, S26
2EFD78:  VMRS            APSR_nzcv, FPSCR
2EFD7C:  BGE             loc_2EFD8C
2EFD7E:  VADD.F32        S0, S0, S28
2EFD82:  VCMPE.F32       S0, S26
2EFD86:  VMRS            APSR_nzcv, FPSCR
2EFD8A:  BLT             loc_2EFD7E
2EFD8C:  VABS.F32        S0, S0
2EFD90:  LDR             R5, [SP,#0xD8+var_80]
2EFD92:  VCMPE.F32       S0, S20
2EFD96:  VMRS            APSR_nzcv, FPSCR
2EFD9A:  ITTTT LE
2EFD9C:  STRLE.W         R10, [SP,#0xD8+var_90]
2EFDA0:  STRLE.W         R9, [SP,#0xD8+var_88]
2EFDA4:  VMOVLE.F32      S20, S0
2EFDA8:  MOVLE           R8, R11
2EFDAA:  ADD.W           R11, R11, #1
2EFDAE:  SXTH.W          R0, R11
2EFDB2:  CMP             R0, R4
2EFDB4:  BLT.W           loc_2EFCB8
2EFDB8:  LDR.W           R9, [SP,#0xD8+var_94]
2EFDBC:  MOVW            R10, #0xFFFF
2EFDC0:  LDR.W           R11, [SP,#0xD8+var_98]
2EFDC4:  LDR             R5, [SP,#0xD8+var_88]
2EFDC6:  LDR             R4, [SP,#0xD8+var_90]
2EFDC8:  B               loc_2EFDEC
2EFDCA:  ALIGN 4
2EFDCC:  DCFS 50.0
2EFDD0:  DCFS 1000000.0
2EFDD4:  DCFS 3.1416
2EFDD8:  DCFS -6.2832
2EFDDC:  DCFS -3.1416
2EFDE0:  DCFS 6.2832
2EFDE4:  MOV.W           R8, #0
2EFDE8:  MOVW            R4, #0xFFFF
2EFDEC:  LDR.W           R1, [R9,#0x394]
2EFDF0:  PKHBT.W         R6, R4, R5,LSL#16
2EFDF4:  LDR.W           R12, [R9,#0x398]
2EFDF8:  LDRD.W          R2, R3, [R9,#0x3A0]
2EFDFC:  LDRH.W          R0, [R9,#0x3A8]
2EFE00:  STR             R5, [SP,#0xD8+var_88]
2EFE02:  ADD             R2, R3
2EFE04:  LDRB.W          R5, [R9,#0x3B9]
2EFE08:  STR.W           R6, [R9,#0x398]
2EFE0C:  LDRB.W          R6, [R9,#0x3BA]
2EFE10:  STRH.W          R0, [R9,#0x3AC]
2EFE14:  LDRB.W          LR, [R9,#0x3BC]
2EFE18:  STR.W           R1, [R9,#0x39C]
2EFE1C:  STR.W           R12, [R9,#0x394]
2EFE20:  STRB.W          R6, [R9,#0x3B9]
2EFE24:  LDRH.W          R1, [R9,#0x3AA]
2EFE28:  STRB.W          LR, [R9,#0x3BB]
2EFE2C:  STRH.W          R1, [R9,#0x3A8]
2EFE30:  CMP             R1, R10
2EFE32:  STRB.W          R5, [R9,#0x3B8]
2EFE36:  STR.W           R2, [R9,#0x3A0]
2EFE3A:  LDR             R2, [SP,#0xD8+var_7C]
2EFE3C:  LDR             R0, =(ThePaths_ptr - 0x2EFE46)
2EFE3E:  LDR             R3, [SP,#0xD8+var_74]
2EFE40:  LDR             R2, [R2]
2EFE42:  ADD             R0, PC; ThePaths_ptr
2EFE44:  ADD.W           R2, R2, R3,LSL#2
2EFE48:  LDR             R3, [SP,#0xD8+var_8C]
2EFE4A:  LDR             R0, [R0]; ThePaths
2EFE4C:  LDRSH.W         R2, [R2,#0x10]
2EFE50:  ADD.W           R0, R0, R3,LSL#2
2EFE54:  SXTAH.W         R2, R2, R8
2EFE58:  LDR.W           R0, [R0,#0xDA4]
2EFE5C:  LDRH.W          R2, [R0,R2,LSL#1]
2EFE60:  STRH.W          R2, [R9,#0x3AA]
2EFE64:  BEQ             loc_2EFEF8
2EFE66:  LDR             R0, =(ThePaths_ptr - 0x2EFE6E)
2EFE68:  LSRS            R3, R1, #0xA
2EFE6A:  ADD             R0, PC; ThePaths_ptr
2EFE6C:  LDR             R0, [R0]; ThePaths
2EFE6E:  ADD.W           R0, R0, R3,LSL#2
2EFE72:  LDR.W           R0, [R0,#0x804]
2EFE76:  CMP             R0, #0
2EFE78:  IT NE
2EFE7A:  CMPNE           R2, R10
2EFE7C:  BEQ             loc_2EFEF8
2EFE7E:  LDR             R0, =(ThePaths_ptr - 0x2EFE86)
2EFE80:  LSRS            R6, R2, #0xA
2EFE82:  ADD             R0, PC; ThePaths_ptr
2EFE84:  LDR             R0, [R0]; ThePaths
2EFE86:  ADD.W           R0, R0, R6,LSL#2
2EFE8A:  LDR.W           R0, [R0,#0x804]
2EFE8E:  CMP             R0, #0
2EFE90:  ITT NE
2EFE92:  UXTHNE.W        R5, R12
2EFE96:  CMPNE           R5, R10
2EFE98:  BEQ             loc_2EFEF8
2EFE9A:  LDR             R0, =(ThePaths_ptr - 0x2EFEA0)
2EFE9C:  ADD             R0, PC; ThePaths_ptr
2EFE9E:  LDR             R0, [R0]; ThePaths
2EFEA0:  ADD.W           R0, R0, R5,LSL#2
2EFEA4:  LDR.W           R0, [R0,#0x804]
2EFEA8:  CMP             R0, #0
2EFEAA:  ITT NE
2EFEAC:  UXTHNE          R5, R4
2EFEAE:  CMPNE           R5, R10
2EFEB0:  BEQ             loc_2EFEF8
2EFEB2:  LDR             R0, =(ThePaths_ptr - 0x2EFEB8)
2EFEB4:  ADD             R0, PC; ThePaths_ptr
2EFEB6:  LDR             R0, [R0]; ThePaths
2EFEB8:  ADD.W           R0, R0, R5,LSL#2
2EFEBC:  LDR.W           R0, [R0,#0x804]
2EFEC0:  CBZ             R0, loc_2EFEF8
2EFEC2:  LDR             R0, [SP,#0xD8+var_8C]
2EFEC4:  CMP             R5, R0
2EFEC6:  BHI             loc_2EFED2
2EFEC8:  BNE             loc_2EFF14
2EFECA:  LDR             R0, [SP,#0xD8+var_88]
2EFECC:  UXTH            R0, R0
2EFECE:  CMP             R0, R11
2EFED0:  BLS             loc_2EFF14
2EFED2:  LDR             R0, =(ThePaths_ptr - 0x2EFEE2)
2EFED4:  MOVS            R5, #0xFF
2EFED6:  BFC.W           R2, #0xA, #0x16
2EFEDA:  STRB.W          R5, [R9,#0x3BA]
2EFEDE:  ADD             R0, PC; ThePaths_ptr
2EFEE0:  LDR             R0, [R0]; ThePaths
2EFEE2:  ADD.W           R0, R0, R6,LSL#2
2EFEE6:  LDR.W           R5, [R0,#0x924]
2EFEEA:  RSB.W           R0, R2, R2,LSL#3
2EFEEE:  ADD.W           R0, R5, R0,LSL#1
2EFEF2:  LDRH.W          R6, [R0,#0xB]
2EFEF6:  B               loc_2EFF3A
2EFEF8:  LDRH.W          R0, [R9,#0x3DF]
2EFEFC:  ORR.W           R0, R0, #0x100
2EFF00:  STRH.W          R0, [R9,#0x3DF]
2EFF04:  MOVS            R0, #1
2EFF06:  ADD             SP, SP, #0x80
2EFF08:  VPOP            {D8-D14}
2EFF0C:  ADD             SP, SP, #4
2EFF0E:  POP.W           {R8-R11}
2EFF12:  POP             {R4-R7,PC}
2EFF14:  LDR             R0, =(ThePaths_ptr - 0x2EFF24)
2EFF16:  MOVS            R5, #1
2EFF18:  BFC.W           R2, #0xA, #0x16
2EFF1C:  STRB.W          R5, [R9,#0x3BA]
2EFF20:  ADD             R0, PC; ThePaths_ptr
2EFF22:  LDR             R0, [R0]; ThePaths
2EFF24:  ADD.W           R0, R0, R6,LSL#2
2EFF28:  LDR.W           R5, [R0,#0x924]
2EFF2C:  RSB.W           R0, R2, R2,LSL#3
2EFF30:  ADD.W           R0, R5, R0,LSL#1
2EFF34:  LDRH.W          R0, [R0,#0xB]
2EFF38:  LSRS            R6, R0, #3
2EFF3A:  LDR             R0, =(ThePaths_ptr - 0x2EFF4C)
2EFF3C:  RSB.W           R2, R2, R2,LSL#3
2EFF40:  BFC.W           R1, #0xA, #0x16
2EFF44:  VLDR            S2, =256.0
2EFF48:  ADD             R0, PC; ThePaths_ptr
2EFF4A:  LDR.W           R2, [R5,R2,LSL#1]
2EFF4E:  RSB.W           R1, R1, R1,LSL#3
2EFF52:  LDR             R0, [R0]; ThePaths
2EFF54:  AND.W           R4, R6, #7
2EFF58:  STR             R2, [SP,#0xD8+var_70]
2EFF5A:  ADD             R2, SP, #0xD8+var_70
2EFF5C:  ADD.W           R0, R0, R3,LSL#2
2EFF60:  VLD1.32         {D16[0]}, [R2@32]
2EFF64:  VMOVL.S16       Q9, D16
2EFF68:  LDR.W           R0, [R0,#0x924]
2EFF6C:  VCVT.F32.S32    D16, D18
2EFF70:  LDR.W           R0, [R0,R1,LSL#1]
2EFF74:  STR             R0, [SP,#0xD8+var_6C]
2EFF76:  ADD             R0, SP, #0xD8+var_6C
2EFF78:  VLD1.32         {D17[0]}, [R0@32]
2EFF7C:  VMOVL.S16       Q9, D17
2EFF80:  VMOV.I32        D17, #0x3E000000
2EFF84:  VCVT.F32.S32    D18, D18
2EFF88:  VMUL.F32        D16, D16, D17
2EFF8C:  VMUL.F32        D17, D18, D17
2EFF90:  VSUB.F32        D16, D16, D17
2EFF94:  VMUL.F32        D0, D16, D16
2EFF98:  VADD.F32        S0, S0, S1
2EFF9C:  VCMPE.F32       S0, S2
2EFFA0:  VMRS            APSR_nzcv, FPSCR
2EFFA4:  BLE.W           loc_2EFFF4; jumptable 002EFFB4 cases 2,4,15,17,43,52,54,61
2EFFA8:  LDRB.W          R0, [R9,#0x3BE]
2EFFAC:  SUBS            R1, R0, #2; switch 60 cases
2EFFAE:  CMP             R1, #0x3B ; ';'
2EFFB0:  BHI.W           def_2EFFB4; jumptable 002EFFB4 default case, cases 3,5-14,16,18-42,44-51,53,55-60
2EFFB4:  TBB.W           [PC,R1]; switch jump
2EFFB8:  DCB 0x1E; jump table for switch statement
2EFFB9:  DCB 0x5E
2EFFBA:  DCB 0x1E
2EFFBB:  DCB 0x5E
2EFFBC:  DCB 0x5E
2EFFBD:  DCB 0x5E
2EFFBE:  DCB 0x5E
2EFFBF:  DCB 0x5E
2EFFC0:  DCB 0x5E
2EFFC1:  DCB 0x5E
2EFFC2:  DCB 0x5E
2EFFC3:  DCB 0x5E
2EFFC4:  DCB 0x5E
2EFFC5:  DCB 0x1E
2EFFC6:  DCB 0x5E
2EFFC7:  DCB 0x1E
2EFFC8:  DCB 0x5E
2EFFC9:  DCB 0x5E
2EFFCA:  DCB 0x5E
2EFFCB:  DCB 0x5E
2EFFCC:  DCB 0x5E
2EFFCD:  DCB 0x5E
2EFFCE:  DCB 0x5E
2EFFCF:  DCB 0x5E
2EFFD0:  DCB 0x5E
2EFFD1:  DCB 0x5E
2EFFD2:  DCB 0x5E
2EFFD3:  DCB 0x5E
2EFFD4:  DCB 0x5E
2EFFD5:  DCB 0x5E
2EFFD6:  DCB 0x5E
2EFFD7:  DCB 0x5E
2EFFD8:  DCB 0x5E
2EFFD9:  DCB 0x5E
2EFFDA:  DCB 0x5E
2EFFDB:  DCB 0x5E
2EFFDC:  DCB 0x5E
2EFFDD:  DCB 0x5E
2EFFDE:  DCB 0x5E
2EFFDF:  DCB 0x5E
2EFFE0:  DCB 0x5E
2EFFE1:  DCB 0x1E
2EFFE2:  DCB 0x5E
2EFFE3:  DCB 0x5E
2EFFE4:  DCB 0x5E
2EFFE5:  DCB 0x5E
2EFFE6:  DCB 0x5E
2EFFE7:  DCB 0x5E
2EFFE8:  DCB 0x5E
2EFFE9:  DCB 0x5E
2EFFEA:  DCB 0x1E
2EFFEB:  DCB 0x5E
2EFFEC:  DCB 0x1E
2EFFED:  DCB 0x5E
2EFFEE:  DCB 0x5E
2EFFEF:  DCB 0x5E
2EFFF0:  DCB 0x5E
2EFFF1:  DCB 0x5E
2EFFF2:  DCB 0x5E
2EFFF3:  DCB 0x1E
2EFFF4:  SUBS            R0, R4, #1; jumptable 002EFFB4 cases 2,4,15,17,43,52,54,61
2EFFF6:  SXTB.W          R3, LR
2EFFFA:  CMP             R0, R3
2EFFFC:  LDRH.W          R2, [R9,#0x3DF]
2F0000:  IT GT
2F0002:  MOVGT           R0, R3
2F0004:  MOVS            R1, #0
2F0006:  CMP             R0, #0
2F0008:  IT LE
2F000A:  MOVLE           R0, R1
2F000C:  TST.W           R2, #8
2F0010:  STRB.W          R0, [R9,#0x3BC]
2F0014:  BNE             loc_2F002A
2F0016:  LSLS            R0, R2, #0x1B
2F0018:  BMI             loc_2F0022
2F001A:  LDR.W           R0, [R9,#0x5A4]
2F001E:  CMP             R0, #0xA
2F0020:  BNE             loc_2F002E
2F0022:  CMP             R4, #0
2F0024:  IT NE
2F0026:  ADDNE           R4, #0xFF
2F0028:  MOV             R1, R4
2F002A:  STRB.W          R1, [R9,#0x3BC]
2F002E:  LDR             R0, =(ThePaths_ptr - 0x2F0038)
2F0030:  LDRH.W          R1, [R9,#0x3A8]
2F0034:  ADD             R0, PC; ThePaths_ptr
2F0036:  LDR             R0, [R0]; ThePaths
2F0038:  UBFX.W          R2, R1, #0xA, #6
2F003C:  BFC.W           R1, #0xA, #0x16
2F0040:  ADDW            R4, R0, #0x924
2F0044:  RSB.W           R1, R1, R1,LSL#3
2F0048:  LDR.W           R0, [R4,R2,LSL#2]
2F004C:  ADD.W           R0, R0, R1,LSL#1; this
2F0050:  BLX             j__ZN12CCarPathLink16OneWayLaneOffsetEv; CCarPathLink::OneWayLaneOffset(void)
2F0054:  LDRH.W          R0, [R9,#0x3AA]
2F0058:  UBFX.W          R1, R0, #0xA, #6
2F005C:  BFC.W           R0, #0xA, #0x16
2F0060:  LDR.W           R1, [R4,R1,LSL#2]
2F0064:  RSB.W           R0, R0, R0,LSL#3
2F0068:  ADD.W           R0, R1, R0,LSL#1; this
2F006C:  BLX             j__ZN12CCarPathLink16OneWayLaneOffsetEv; CCarPathLink::OneWayLaneOffset(void)
2F0070:  MOVS            R0, #0
2F0072:  B               loc_2EFF06
2F0074:  LDRB.W          R0, [R9,#0x3E4]; jumptable 002EFFB4 default case, cases 3,5-14,16,18-42,44-51,53,55-60
2F0078:  SUBS            R0, #1
2F007A:  STRB.W          R0, [R9,#0x3E4]
2F007E:  TST.W           R0, #0xFF
2F0082:  BNE             loc_2EFFF4; jumptable 002EFFB4 cases 2,4,15,17,43,52,54,61
2F0084:  BLX             rand
2F0088:  MOVS            R1, #1
2F008A:  BFI.W           R0, R1, #2, #0x1E
2F008E:  STRB.W          R0, [R9,#0x3E4]
2F0092:  BLX             rand
2F0096:  LDRB.W          R1, [R9,#0x3BC]
2F009A:  MOVS            R2, #0xFF
2F009C:  TST.W           R0, #1
2F00A0:  IT NE
2F00A2:  MOVNE           R2, #1
2F00A4:  ADD.W           LR, R2, R1
2F00A8:  STRB.W          LR, [R9,#0x3BC]
2F00AC:  B               loc_2EFFF4; jumptable 002EFFB4 cases 2,4,15,17,43,52,54,61
