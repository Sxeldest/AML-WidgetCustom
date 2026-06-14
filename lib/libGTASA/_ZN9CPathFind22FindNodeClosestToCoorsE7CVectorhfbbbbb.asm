; =========================================================
; Game Engine Function: _ZN9CPathFind22FindNodeClosestToCoorsE7CVectorhfbbbbb
; Address            : 0x315D40 - 0x3161DE
; =========================================================

315D40:  PUSH            {R4-R7,LR}
315D42:  ADD             R7, SP, #0xC
315D44:  PUSH.W          {R8-R11}
315D48:  SUB             SP, SP, #4
315D4A:  VPUSH           {D8-D10}
315D4E:  SUB             SP, SP, #0x60
315D50:  MOV             R6, R1
315D52:  VLDR            S0, [R7,#arg_4]
315D56:  VLDR            S2, =3000.0
315D5A:  VMOV            S18, R6
315D5E:  VSTR            S0, [SP,#0x98+var_40]
315D62:  MOVW            R1, #0xFFFF
315D66:  VADD.F32        S0, S18, S2
315D6A:  VLDR            S16, =750.0
315D6E:  LDR.W           LR, [R7,#arg_8]
315D72:  MOV.W           R8, #0
315D76:  LDR             R5, [R7,#arg_14]
315D78:  VMOV            S20, R2
315D7C:  LDR.W           R12, [R7,#arg_10]
315D80:  MOV.W           R11, #7
315D84:  STRH.W          R1, [SP,#0x98+var_3C]
315D88:  ADD             R1, SP, #0x98+var_40
315D8A:  LDR             R4, [R7,#arg_0]
315D8C:  STR             R3, [SP,#0x98+var_48]
315D8E:  VDIV.F32        S0, S0, S16
315D92:  STMEA.W         SP, {R2-R4}
315D96:  MOV             R3, R6
315D98:  STRD.W          R1, LR, [SP,#0x98+var_8C]
315D9C:  STRD.W          R12, R5, [SP,#0x98+var_84]
315DA0:  MOVS            R5, #7
315DA2:  STR.W           R8, [SP,#0x98+var_7C]
315DA6:  VCVT.S32.F32    S0, S0
315DAA:  VMOV            R4, S0
315DAE:  VADD.F32        S0, S20, S2
315DB2:  VDIV.F32        S0, S0, S16
315DB6:  CMP             R4, #0
315DB8:  IT LE
315DBA:  MOVLE           R4, R8
315DBC:  STR             R2, [SP,#0x98+var_4C]
315DBE:  VCVT.S32.F32    S0, S0
315DC2:  VMOV            R9, S0
315DC6:  CMP.W           R9, #0
315DCA:  IT LE
315DCC:  MOVLE           R9, R8
315DCE:  MOV             R8, R6
315DD0:  CMP.W           R9, #7
315DD4:  IT LT
315DD6:  MOVLT           R11, R9
315DD8:  CMP             R4, #7
315DDA:  IT LT
315DDC:  MOVLT           R5, R4
315DDE:  STR             R0, [SP,#0x98+var_44]
315DE0:  ORR.W           R1, R5, R11,LSL#3
315DE4:  UXTH            R2, R1
315DE6:  ADD             R1, SP, #0x98+var_3C
315DE8:  BLX             j__ZN9CPathFind23FindNodeClosestInRegionEP12CNodeAddresst7CVectorhPfbbbb; CPathFind::FindNodeClosestInRegion(CNodeAddress *,ushort,CVector,uchar,float *,bool,bool,bool,bool)
315DEC:  ADD.W           R0, R11, #1
315DF0:  VMOV            S4, R5
315DF4:  VMOV            S6, R11
315DF8:  VLDR            S8, =-3000.0
315DFC:  VMOV            S0, R0
315E00:  ADDS            R0, R5, #1
315E02:  VMOV            S2, R0
315E06:  VCVT.F32.S32    S2, S2
315E0A:  STR             R5, [SP,#0x98+var_64]
315E0C:  VCVT.F32.S32    S4, S4
315E10:  VCVT.F32.S32    S6, S6
315E14:  VCVT.F32.S32    S0, S0
315E18:  VMUL.F32        S2, S2, S16
315E1C:  VMUL.F32        S4, S4, S16
315E20:  VMUL.F32        S6, S6, S16
315E24:  VMUL.F32        S0, S0, S16
315E28:  VADD.F32        S2, S2, S8
315E2C:  VADD.F32        S4, S4, S8
315E30:  VADD.F32        S6, S6, S8
315E34:  VADD.F32        S0, S0, S8
315E38:  VSUB.F32        S2, S2, S18
315E3C:  VSUB.F32        S4, S18, S4
315E40:  VSUB.F32        S6, S20, S6
315E44:  VSUB.F32        S0, S0, S20
315E48:  VMIN.F32        D16, D2, D1
315E4C:  VLDR            S2, [SP,#0x98+var_40]
315E50:  VMIN.F32        D16, D16, D3
315E54:  VMIN.F32        D9, D16, D0
315E58:  VCMPE.F32       S2, S18
315E5C:  VMRS            APSR_nzcv, FPSCR
315E60:  BLE.W           loc_31606C
315E64:  B               loc_315E74
315E66:  ALIGN 4
315E68:  DCFS 3000.0
315E6C:  DCFS 750.0
315E70:  DCFS -3000.0
315E74:  MVNS            R0, R4
315E76:  MOV             R1, #0xFFFFFFF8
315E7A:  CMN.W           R0, #8
315E7E:  MVN.W           R2, R9
315E82:  IT LE
315E84:  MOVLE           R0, R1
315E86:  CMN.W           R2, #8
315E8A:  IT GT
315E8C:  MOVGT           R1, R2
315E8E:  MVNS            R2, R0
315E90:  SUB.W           R5, R2, R1,LSL#3
315E94:  MOV             R2, #0xFFFFFFEF
315E98:  SUBS            R2, R2, R0
315E9A:  MOV.W           R10, #1
315E9E:  SUB.W           R2, R2, R1,LSL#3
315EA2:  STR             R2, [SP,#0x98+var_58]
315EA4:  MOV             R2, #0xFFFFFFF0
315EA8:  LDR.W           R9, [SP,#0x98+var_64]
315EAC:  SUBS            R2, R2, R0
315EAE:  STR.W           R11, [SP,#0x98+var_74]
315EB2:  SUB.W           R2, R2, R1,LSL#3
315EB6:  STR             R2, [SP,#0x98+var_5C]
315EB8:  MOV             R2, #0xFFFFFFEE
315EBC:  SUBS            R0, R2, R0
315EBE:  SUB.W           R0, R0, R1,LSL#3
315EC2:  STR             R0, [SP,#0x98+var_60]
315EC4:  MOV             R0, #0xFFFFFFFD
315EC8:  SUBS            R0, R0, R1
315ECA:  STR             R0, [SP,#0x98+var_54]
315ECC:  MOVS            R1, #1
315ECE:  LDR             R0, [SP,#0x98+var_64]
315ED0:  STR             R5, [SP,#0x98+var_68]
315ED2:  SUBS            R0, R0, R1
315ED4:  STR             R1, [SP,#0x98+var_50]
315ED6:  CMP             R0, #7
315ED8:  STR             R0, [SP,#0x98+var_6C]
315EDA:  BHI             loc_315F26
315EDC:  LDR             R0, [SP,#0x98+var_50]
315EDE:  ADD.W           R4, R0, R11
315EE2:  SUB.W           R0, R11, R0
315EE6:  CMP             R0, R4
315EE8:  BGT             loc_315F26
315EEA:  LDR             R6, [SP,#0x98+var_54]
315EEC:  LDR             R5, [SP,#0x98+var_60]
315EEE:  ADDS            R6, #1
315EF0:  CMP             R6, #7
315EF2:  BHI             loc_315F20
315EF4:  LDR             R0, [SP,#0x98+var_4C]
315EF6:  ADD             R1, SP, #0x98+var_3C
315EF8:  STR             R0, [SP,#0x98+var_98]
315EFA:  UXTH            R2, R5
315EFC:  LDR             R0, [SP,#0x98+var_48]
315EFE:  MOV             R3, R8
315F00:  STR             R0, [SP,#0x98+var_94]
315F02:  LDR             R0, [R7,#arg_0]
315F04:  STR             R0, [SP,#0x98+var_90]
315F06:  ADD             R0, SP, #0x98+var_40
315F08:  STR             R0, [SP,#0x98+var_8C]
315F0A:  LDR             R0, [R7,#arg_8]
315F0C:  STR             R0, [SP,#0x98+var_88]
315F0E:  LDR             R0, [R7,#arg_10]
315F10:  STR             R0, [SP,#0x98+var_84]
315F12:  LDR             R0, [R7,#arg_14]
315F14:  STR             R0, [SP,#0x98+var_80]
315F16:  MOVS            R0, #0
315F18:  STR             R0, [SP,#0x98+var_7C]
315F1A:  LDR             R0, [SP,#0x98+var_44]
315F1C:  BLX             j__ZN9CPathFind23FindNodeClosestInRegionEP12CNodeAddresst7CVectorhPfbbbb; CPathFind::FindNodeClosestInRegion(CNodeAddress *,ushort,CVector,uchar,float *,bool,bool,bool,bool)
315F20:  ADDS            R5, #8
315F22:  CMP             R6, R4
315F24:  BLT             loc_315EEE
315F26:  LDR             R1, [SP,#0x98+var_50]
315F28:  LDR             R0, [SP,#0x98+var_64]
315F2A:  SUB.W           R11, R11, R1
315F2E:  ADD             R1, R0
315F30:  CMP             R1, #7
315F32:  MOV             R0, R1
315F34:  STR             R0, [SP,#0x98+var_70]
315F36:  BHI             loc_315F7E
315F38:  LDR             R0, [SP,#0x98+var_74]
315F3A:  LDR             R1, [SP,#0x98+var_50]
315F3C:  ADDS            R6, R1, R0
315F3E:  CMP             R11, R6
315F40:  BGT             loc_315F7E
315F42:  LDR             R4, [SP,#0x98+var_54]
315F44:  LDR             R5, [SP,#0x98+var_5C]
315F46:  ADDS            R4, #1
315F48:  CMP             R4, #7
315F4A:  BHI             loc_315F78
315F4C:  LDR             R0, [SP,#0x98+var_4C]
315F4E:  ADD             R1, SP, #0x98+var_3C
315F50:  STR             R0, [SP,#0x98+var_98]
315F52:  UXTH            R2, R5
315F54:  LDR             R0, [SP,#0x98+var_48]
315F56:  MOV             R3, R8
315F58:  STR             R0, [SP,#0x98+var_94]
315F5A:  LDR             R0, [R7,#arg_0]
315F5C:  STR             R0, [SP,#0x98+var_90]
315F5E:  ADD             R0, SP, #0x98+var_40
315F60:  STR             R0, [SP,#0x98+var_8C]
315F62:  LDR             R0, [R7,#arg_8]
315F64:  STR             R0, [SP,#0x98+var_88]
315F66:  LDR             R0, [R7,#arg_10]
315F68:  STR             R0, [SP,#0x98+var_84]
315F6A:  LDR             R0, [R7,#arg_14]
315F6C:  STR             R0, [SP,#0x98+var_80]
315F6E:  MOVS            R0, #0
315F70:  STR             R0, [SP,#0x98+var_7C]
315F72:  LDR             R0, [SP,#0x98+var_44]
315F74:  BLX             j__ZN9CPathFind23FindNodeClosestInRegionEP12CNodeAddresst7CVectorhPfbbbb; CPathFind::FindNodeClosestInRegion(CNodeAddress *,ushort,CVector,uchar,float *,bool,bool,bool,bool)
315F78:  ADDS            R5, #8
315F7A:  CMP             R4, R6
315F7C:  BLT             loc_315F46
315F7E:  LDR             R5, [SP,#0x98+var_68]
315F80:  CMP.W           R11, #7
315F84:  BHI             loc_315FD0
315F86:  LDR             R0, [SP,#0x98+var_6C]
315F88:  ADDS            R4, R0, #1
315F8A:  LDR             R0, [SP,#0x98+var_70]
315F8C:  CMP             R4, R0
315F8E:  BGE             loc_315FD0
315F90:  LDR             R6, [SP,#0x98+var_58]
315F92:  MOV             R11, R10
315F94:  CMP             R4, #8
315F96:  BCS             loc_315FC4
315F98:  LDR             R0, [SP,#0x98+var_4C]
315F9A:  ADD             R1, SP, #0x98+var_3C
315F9C:  STR             R0, [SP,#0x98+var_98]
315F9E:  UXTH            R2, R6
315FA0:  LDR             R0, [SP,#0x98+var_48]
315FA2:  MOV             R3, R8
315FA4:  STR             R0, [SP,#0x98+var_94]
315FA6:  LDR             R0, [R7,#arg_0]
315FA8:  STR             R0, [SP,#0x98+var_90]
315FAA:  ADD             R0, SP, #0x98+var_40
315FAC:  STR             R0, [SP,#0x98+var_8C]
315FAE:  LDR             R0, [R7,#arg_8]
315FB0:  STR             R0, [SP,#0x98+var_88]
315FB2:  LDR             R0, [R7,#arg_10]
315FB4:  STR             R0, [SP,#0x98+var_84]
315FB6:  LDR             R0, [R7,#arg_14]
315FB8:  STR             R0, [SP,#0x98+var_80]
315FBA:  MOVS            R0, #0
315FBC:  STR             R0, [SP,#0x98+var_7C]
315FBE:  LDR             R0, [SP,#0x98+var_44]
315FC0:  BLX             j__ZN9CPathFind23FindNodeClosestInRegionEP12CNodeAddresst7CVectorhPfbbbb; CPathFind::FindNodeClosestInRegion(CNodeAddress *,ushort,CVector,uchar,float *,bool,bool,bool,bool)
315FC4:  ADDS            R6, #1
315FC6:  SUBS.W          R11, R11, #1
315FCA:  ADD.W           R4, R4, #1
315FCE:  BNE             loc_315F94
315FD0:  LDR.W           R11, [SP,#0x98+var_74]
315FD4:  LDR             R6, [SP,#0x98+var_50]
315FD6:  ADD.W           R0, R6, R11
315FDA:  CMP             R0, #7
315FDC:  BHI             loc_316026
315FDE:  LDR             R0, [SP,#0x98+var_6C]
315FE0:  LDR             R1, [SP,#0x98+var_70]
315FE2:  ADDS            R0, #1
315FE4:  CMP             R0, R1
315FE6:  BGE             loc_316026
315FE8:  MOVS            R4, #0
315FEA:  ADD.W           R0, R9, R4
315FEE:  CMP             R0, #8
315FF0:  BCS             loc_316020
315FF2:  LDR             R0, [SP,#0x98+var_4C]
315FF4:  ADD             R1, SP, #0x98+var_3C
315FF6:  STR             R0, [SP,#0x98+var_98]
315FF8:  MOV             R3, R8
315FFA:  LDR             R0, [SP,#0x98+var_48]
315FFC:  STR             R0, [SP,#0x98+var_94]
315FFE:  LDR             R0, [R7,#arg_0]
316000:  STR             R0, [SP,#0x98+var_90]
316002:  ADD             R0, SP, #0x98+var_40
316004:  STR             R0, [SP,#0x98+var_8C]
316006:  LDR             R0, [R7,#arg_8]
316008:  STR             R0, [SP,#0x98+var_88]
31600A:  LDR             R0, [R7,#arg_10]
31600C:  STR             R0, [SP,#0x98+var_84]
31600E:  LDR             R0, [R7,#arg_14]
316010:  STR             R0, [SP,#0x98+var_80]
316012:  MOVS            R0, #0
316014:  STR             R0, [SP,#0x98+var_7C]
316016:  ADDS            R0, R5, R4
316018:  UXTH            R2, R0
31601A:  LDR             R0, [SP,#0x98+var_44]
31601C:  BLX             j__ZN9CPathFind23FindNodeClosestInRegionEP12CNodeAddresst7CVectorhPfbbbb; CPathFind::FindNodeClosestInRegion(CNodeAddress *,ushort,CVector,uchar,float *,bool,bool,bool,bool)
316020:  ADDS            R4, #1
316022:  CMP             R10, R4
316024:  BNE             loc_315FEA
316026:  VADD.F32        S18, S18, S16
31602A:  VLDR            S0, [SP,#0x98+var_40]
31602E:  VCMPE.F32       S0, S18
316032:  VMRS            APSR_nzcv, FPSCR
316036:  BLT             loc_31606C
316038:  LDR             R0, [SP,#0x98+var_58]
31603A:  ADDS            R5, #7
31603C:  SUB.W           R9, R9, #1
316040:  ADD.W           R10, R10, #2
316044:  SUBS            R0, #9
316046:  STR             R0, [SP,#0x98+var_58]
316048:  LDR             R0, [SP,#0x98+var_5C]
31604A:  CMP             R6, #3
31604C:  SUB.W           R0, R0, #7
316050:  STR             R0, [SP,#0x98+var_5C]
316052:  LDR             R0, [SP,#0x98+var_54]
316054:  SUB.W           R0, R0, #1
316058:  STR             R0, [SP,#0x98+var_54]
31605A:  LDR             R0, [SP,#0x98+var_60]
31605C:  SUB.W           R0, R0, #9
316060:  STR             R0, [SP,#0x98+var_60]
316062:  ADD.W           R0, R6, #1
316066:  MOV             R1, R0
316068:  BLE.W           loc_315ECE
31606C:  LDR             R0, [R7,#arg_18]
31606E:  CMP             R0, #0
316070:  BNE.W           loc_3161CE
316074:  LDR.W           R10, [SP,#0x98+var_4C]
316078:  MOVS            R1, #0
31607A:  LDR             R5, [SP,#0x98+var_48]
31607C:  MOV             R4, R8
31607E:  LDR             R0, [R7,#arg_0]
316080:  MOVS            R2, #0x40 ; '@'
316082:  STR.W           R10, [SP,#0x98+var_98]
316086:  MOV             R3, R4
316088:  STR             R5, [SP,#0x98+var_94]
31608A:  STR             R0, [SP,#0x98+var_90]
31608C:  ADD             R0, SP, #0x98+var_40
31608E:  STR             R0, [SP,#0x98+var_8C]
316090:  LDR.W           R9, [R7,#arg_8]
316094:  LDR.W           R11, [R7,#arg_10]
316098:  LDR             R0, [R7,#arg_14]
31609A:  STR.W           R9, [SP,#0x98+var_88]
31609E:  STR.W           R11, [SP,#0x98+var_84]
3160A2:  STRD.W          R0, R1, [SP,#0x98+var_80]
3160A6:  ADD             R1, SP, #0x98+var_3C
3160A8:  LDR             R6, [SP,#0x98+var_44]
3160AA:  MOV             R0, R6
3160AC:  BLX             j__ZN9CPathFind23FindNodeClosestInRegionEP12CNodeAddresst7CVectorhPfbbbb; CPathFind::FindNodeClosestInRegion(CNodeAddress *,ushort,CVector,uchar,float *,bool,bool,bool,bool)
3160B0:  LDR.W           R11, [R7,#arg_0]
3160B4:  ADD             R0, SP, #0x98+var_40
3160B6:  STRD.W          R10, R5, [SP,#0x98+var_98]
3160BA:  ADD             R1, SP, #0x98+var_3C
3160BC:  STR.W           R11, [SP,#0x98+var_90]
3160C0:  MOVS            R2, #0x41 ; 'A'
3160C2:  STRD.W          R0, R9, [SP,#0x98+var_8C]
3160C6:  MOVS            R0, #0
3160C8:  LDR.W           R8, [R7,#arg_10]
3160CC:  MOV             R3, R4
3160CE:  LDR.W           R9, [R7,#arg_14]
3160D2:  STR.W           R8, [SP,#0x98+var_84]
3160D6:  STR.W           R9, [SP,#0x98+var_80]
3160DA:  STR             R0, [SP,#0x98+var_7C]
3160DC:  MOV             R0, R6
3160DE:  BLX             j__ZN9CPathFind23FindNodeClosestInRegionEP12CNodeAddresst7CVectorhPfbbbb; CPathFind::FindNodeClosestInRegion(CNodeAddress *,ushort,CVector,uchar,float *,bool,bool,bool,bool)
3160E2:  ADD             R0, SP, #0x98+var_40
3160E4:  STRD.W          R10, R5, [SP,#0x98+var_98]
3160E8:  STR.W           R11, [SP,#0x98+var_90]
3160EC:  ADD             R1, SP, #0x98+var_88
3160EE:  STR             R0, [SP,#0x98+var_8C]
3160F0:  MOVS            R2, #0x42 ; 'B'
3160F2:  LDR             R0, [R7,#arg_8]
3160F4:  MOV             R3, R4
3160F6:  STM.W           R1, {R0,R8,R9}
3160FA:  MOVS            R0, #0
3160FC:  ADD             R1, SP, #0x98+var_3C
3160FE:  STR             R0, [SP,#0x98+var_7C]
316100:  MOV             R0, R6
316102:  MOV             R8, R1
316104:  BLX             j__ZN9CPathFind23FindNodeClosestInRegionEP12CNodeAddresst7CVectorhPfbbbb; CPathFind::FindNodeClosestInRegion(CNodeAddress *,ushort,CVector,uchar,float *,bool,bool,bool,bool)
316108:  LDR             R0, [R7,#arg_8]
31610A:  MOV             R1, R8
31610C:  STRD.W          R10, R5, [SP,#0x98+var_98]
316110:  MOVS            R2, #0x43 ; 'C'
316112:  STR.W           R11, [SP,#0x98+var_90]
316116:  ADD.W           R11, SP, #0x98+var_40
31611A:  STR.W           R11, [SP,#0x98+var_8C]
31611E:  MOV             R3, R4
316120:  STR             R0, [SP,#0x98+var_88]
316122:  LDR             R0, [R7,#arg_10]
316124:  STRD.W          R0, R9, [SP,#0x98+var_84]
316128:  MOVS            R0, #0
31612A:  STR             R0, [SP,#0x98+var_7C]
31612C:  MOV             R0, R6
31612E:  BLX             j__ZN9CPathFind23FindNodeClosestInRegionEP12CNodeAddresst7CVectorhPfbbbb; CPathFind::FindNodeClosestInRegion(CNodeAddress *,ushort,CVector,uchar,float *,bool,bool,bool,bool)
316132:  LDR.W           R9, [R7,#arg_0]
316136:  MOV             R1, R8
316138:  LDR             R0, [R7,#arg_8]
31613A:  MOVS            R2, #0x44 ; 'D'
31613C:  STRD.W          R10, R5, [SP,#0x98+var_98]
316140:  MOV             R3, R4
316142:  STRD.W          R9, R11, [SP,#0x98+var_90]
316146:  STR             R0, [SP,#0x98+var_88]
316148:  LDR             R0, [R7,#arg_10]
31614A:  STR             R0, [SP,#0x98+var_84]
31614C:  LDR             R0, [R7,#arg_14]
31614E:  STR             R0, [SP,#0x98+var_80]
316150:  MOVS            R0, #0
316152:  STR             R0, [SP,#0x98+var_7C]
316154:  MOV             R0, R6
316156:  BLX             j__ZN9CPathFind23FindNodeClosestInRegionEP12CNodeAddresst7CVectorhPfbbbb; CPathFind::FindNodeClosestInRegion(CNodeAddress *,ushort,CVector,uchar,float *,bool,bool,bool,bool)
31615A:  STRD.W          R10, R5, [SP,#0x98+var_98]
31615E:  ADD             R1, SP, #0x98+var_3C
316160:  STRD.W          R9, R11, [SP,#0x98+var_90]
316164:  MOVS            R2, #0x45 ; 'E'
316166:  LDR.W           R11, [R7,#arg_8]
31616A:  MOV             R3, R4
31616C:  LDR             R0, [R7,#arg_10]
31616E:  STR.W           R11, [SP,#0x98+var_88]
316172:  STR             R0, [SP,#0x98+var_84]
316174:  MOVS            R0, #0
316176:  LDR.W           R8, [R7,#arg_14]
31617A:  STR.W           R8, [SP,#0x98+var_80]
31617E:  STR             R0, [SP,#0x98+var_7C]
316180:  MOV             R0, R6
316182:  BLX             j__ZN9CPathFind23FindNodeClosestInRegionEP12CNodeAddresst7CVectorhPfbbbb; CPathFind::FindNodeClosestInRegion(CNodeAddress *,ushort,CVector,uchar,float *,bool,bool,bool,bool)
316186:  ADD             R0, SP, #0x98+var_40
316188:  STRD.W          R10, R5, [SP,#0x98+var_98]
31618C:  STR.W           R9, [SP,#0x98+var_90]
316190:  ADD             R1, SP, #0x98+var_3C
316192:  STRD.W          R0, R11, [SP,#0x98+var_8C]
316196:  MOVS            R2, #0x46 ; 'F'
316198:  LDR             R0, [R7,#arg_10]
31619A:  MOV             R3, R4
31619C:  STRD.W          R0, R8, [SP,#0x98+var_84]
3161A0:  MOVS            R0, #0
3161A2:  STR             R0, [SP,#0x98+var_7C]
3161A4:  MOV             R0, R6
3161A6:  BLX             j__ZN9CPathFind23FindNodeClosestInRegionEP12CNodeAddresst7CVectorhPfbbbb; CPathFind::FindNodeClosestInRegion(CNodeAddress *,ushort,CVector,uchar,float *,bool,bool,bool,bool)
3161AA:  ADD             R0, SP, #0x98+var_40
3161AC:  STRD.W          R10, R5, [SP,#0x98+var_98]
3161B0:  STR.W           R9, [SP,#0x98+var_90]
3161B4:  ADD             R1, SP, #0x98+var_3C
3161B6:  STRD.W          R0, R11, [SP,#0x98+var_8C]
3161BA:  MOVS            R2, #0x47 ; 'G'
3161BC:  LDR             R0, [R7,#arg_10]
3161BE:  MOV             R3, R4
3161C0:  STRD.W          R0, R8, [SP,#0x98+var_84]
3161C4:  MOVS            R0, #0
3161C6:  STR             R0, [SP,#0x98+var_7C]
3161C8:  MOV             R0, R6
3161CA:  BLX             j__ZN9CPathFind23FindNodeClosestInRegionEP12CNodeAddresst7CVectorhPfbbbb; CPathFind::FindNodeClosestInRegion(CNodeAddress *,ushort,CVector,uchar,float *,bool,bool,bool,bool)
3161CE:  LDR             R0, [SP,#0x98+var_3C]
3161D0:  ADD             SP, SP, #0x60 ; '`'
3161D2:  VPOP            {D8-D10}
3161D6:  ADD             SP, SP, #4
3161D8:  POP.W           {R8-R11}
3161DC:  POP             {R4-R7,PC}
