; =========================================================
; Game Engine Function: _ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb
; Address            : 0x424B44 - 0x425918
; =========================================================

424B44:  PUSH            {R4-R7,LR}
424B46:  ADD             R7, SP, #0xC
424B48:  PUSH.W          {R8-R11}
424B4C:  SUB             SP, SP, #4
424B4E:  VPUSH           {D8-D13}
424B52:  SUB             SP, SP, #0x80
424B54:  MOV             R4, R0
424B56:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x424B62)
424B5A:  MOV             R6, R1
424B5C:  MOV             R8, R3
424B5E:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
424B60:  MOVW            R1, #0xFFFF
424B64:  MOV             R9, R2
424B66:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
424B68:  LDRH            R0, [R0]; this
424B6A:  CMP             R0, R1
424B6C:  BEQ             loc_424B72
424B6E:  ADDS            R0, #1
424B70:  B               loc_424B78
424B72:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
424B76:  MOVS            R0, #1
424B78:  LDR.W           R1, =(_ZN6CWorld27ms_iProcessLineNumCrossingsE_ptr - 0x424B86)
424B7C:  MOVS            R3, #0
424B7E:  LDR.W           R2, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x424B8C)
424B82:  ADD             R1, PC; _ZN6CWorld27ms_iProcessLineNumCrossingsE_ptr
424B84:  VLDR            S16, =50.0
424B88:  ADD             R2, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
424B8A:  VLDR            S18, =60.0
424B8E:  LDR             R1, [R1]; CWorld::ms_iProcessLineNumCrossings ...
424B90:  LDR             R2, [R2]; CWorld::ms_nCurrentScanCode ...
424B92:  STR             R3, [R1]; CWorld::ms_iProcessLineNumCrossings
424B94:  STRH            R0, [R2]; CWorld::ms_nCurrentScanCode
424B96:  STR.W           R3, [R8]
424B9A:  VLDR            S24, [R4]
424B9E:  VLDR            S22, [R4,#4]
424BA2:  VDIV.F32        S0, S24, S16
424BA6:  VADD.F32        S0, S0, S18
424BAA:  VMOV            R0, S0; x
424BAE:  BLX             floorf
424BB2:  VDIV.F32        S0, S22, S16
424BB6:  MOV             R10, R0
424BB8:  VADD.F32        S0, S0, S18
424BBC:  VMOV            R0, S0; x
424BC0:  BLX             floorf
424BC4:  VLDR            S26, [R6]
424BC8:  MOV             R11, R0
424BCA:  VLDR            S20, [R6,#4]
424BCE:  VDIV.F32        S0, S26, S16
424BD2:  VADD.F32        S0, S0, S18
424BD6:  VMOV            R0, S0; x
424BDA:  BLX             floorf
424BDE:  VDIV.F32        S0, S20, S16
424BE2:  MOV             R5, R0
424BE4:  VADD.F32        S0, S0, S18
424BE8:  VMOV            R0, S0; x
424BEC:  BLX             floorf
424BF0:  VMOV            S0, R0
424BF4:  MOV.W           R0, #0x3F800000
424BF8:  VMOV            S2, R5
424BFC:  VMOV            S4, R11
424C00:  VMOV            S6, R10
424C04:  VCVT.S32.F32    S0, S0
424C08:  VCVT.S32.F32    S2, S2
424C0C:  VCVT.S32.F32    S4, S4
424C10:  VCVT.S32.F32    S6, S6
424C14:  STR             R0, [SP,#0xD0+var_54]
424C16:  VMOV            R0, S0
424C1A:  VMOV            R1, S2
424C1E:  VMOV            R10, S4
424C22:  VMOV            R5, S6
424C26:  CMP             R5, R1
424C28:  IT EQ
424C2A:  CMPEQ           R10, R0
424C2C:  BNE             loc_424CC0
424C2E:  ADD.W           R11, SP, #0xD0+var_74
424C32:  MOV             R1, R4; CVector *
424C34:  MOV             R2, R6; CVector *
424C36:  MOV             R0, R11; this
424C38:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
424C3C:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x424C4E)
424C40:  CMP             R5, #0
424C42:  MOV.W           R2, #0
424C46:  MOV.W           R4, #0x77 ; 'w'
424C4A:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
424C4C:  LDR.W           R6, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x424C58)
424C50:  MOV             R3, R9
424C52:  LDR             R1, [R0]; CWorld::ms_aRepeatSectors ...
424C54:  ADD             R6, PC; _ZN6CWorld11ms_aSectorsE_ptr
424C56:  LDR             R0, [R7,#arg_18]
424C58:  STR             R0, [SP,#0xD0+var_B0]
424C5A:  LDR             R0, [R7,#arg_1C]
424C5C:  STR             R0, [SP,#0xD0+var_AC]
424C5E:  ADD             R0, SP, #0xD0+var_54
424C60:  STRD.W          R0, R8, [SP,#0xD0+var_D0]
424C64:  LDR             R0, [R7,#arg_0]
424C66:  STR             R0, [SP,#0xD0+var_C8]
424C68:  LDR             R0, [R7,#arg_4]
424C6A:  STR             R0, [SP,#0xD0+var_C4]
424C6C:  LDR             R0, [R7,#arg_8]
424C6E:  STR             R0, [SP,#0xD0+var_C0]
424C70:  LDR             R0, [R7,#arg_C]
424C72:  STR             R0, [SP,#0xD0+var_BC]
424C74:  LDR             R0, [R7,#arg_10]
424C76:  STR             R0, [SP,#0xD0+var_B8]
424C78:  LDR             R0, [R7,#arg_14]
424C7A:  STR             R0, [SP,#0xD0+var_B4]
424C7C:  IT GT
424C7E:  MOVGT           R2, R5
424C80:  CMP             R2, #0x77 ; 'w'
424C82:  MOV.W           R0, #0
424C86:  IT GE
424C88:  MOVGE           R2, R4
424C8A:  CMP.W           R10, #0
424C8E:  IT GT
424C90:  MOVGT           R0, R10
424C92:  LDR             R6, [R6]; CWorld::ms_aSectors ...
424C94:  CMP             R0, #0x77 ; 'w'
424C96:  IT GE
424C98:  MOVGE           R0, R4
424C9A:  RSB.W           R0, R0, R0,LSL#4
424C9E:  ADD.W           R0, R2, R0,LSL#3
424CA2:  AND.W           R2, R5, #0xF
424CA6:  BFI.W           R2, R10, #4, #4
424CAA:  ADD.W           R0, R6, R0,LSL#3
424CAE:  ADD.W           R2, R2, R2,LSL#1
424CB2:  ADD.W           R1, R1, R2,LSL#2
424CB6:  MOV             R2, R11
424CB8:  BLX             j__ZN6CWorld24ProcessLineOfSightSectorER7CSectorR13CRepeatSectorRK8CColLineR9CColPointRfRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSightSector(CSector &,CRepeatSector &,CColLine const&,CColPoint &,float &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
424CBC:  B.W             loc_42590A
424CC0:  CMP             R5, R1
424CC2:  ADD             R2, SP, #0xD0+var_80
424CC4:  STM.W           R2, {R6,R8,R9}
424CC8:  STR             R4, [SP,#0xD0+var_9C]
424CCA:  STR             R0, [SP,#0xD0+var_94]
424CCC:  BNE             loc_424D8C
424CCE:  MOVS            R4, #0
424CD0:  CMP             R5, #0
424CD2:  IT GT
424CD4:  MOVGT           R4, R5
424CD6:  AND.W           R9, R5, #0xF
424CDA:  MOVS            R1, #0x77 ; 'w'
424CDC:  CMP             R4, #0x77 ; 'w'
424CDE:  IT GE
424CE0:  MOVGE           R4, R1
424CE2:  MOV.W           R5, R10,LSL#4
424CE6:  CMP             R10, R0
424CE8:  BGE.W           loc_424E54
424CEC:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x424CF8)
424CF0:  LDR.W           R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x424D00)
424CF4:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
424CF6:  LDR.W           R11, [SP,#0xD0+var_80]
424CFA:  LDR             R6, [SP,#0xD0+var_9C]
424CFC:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
424CFE:  LDR             R0, [R0]; CWorld::ms_aSectors ...
424D00:  STR             R0, [SP,#0xD0+var_84]
424D02:  LDR             R0, [R1]; CWorld::ms_aRepeatSectors ...
424D04:  STR             R0, [SP,#0xD0+var_88]
424D06:  ADD.W           R8, SP, #0xD0+var_74
424D0A:  MOV             R1, R6; CVector *
424D0C:  MOV             R2, R11; CVector *
424D0E:  MOV             R0, R8; this
424D10:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
424D14:  LDR             R0, [R7,#arg_18]
424D16:  CMP.W           R10, #0
424D1A:  STR             R0, [SP,#0xD0+var_B0]
424D1C:  MOV.W           R2, #0x77 ; 'w'
424D20:  LDR             R0, [R7,#arg_1C]
424D22:  STR             R0, [SP,#0xD0+var_AC]
424D24:  ADD             R0, SP, #0xD0+var_54
424D26:  STR             R0, [SP,#0xD0+var_D0]
424D28:  LDR             R0, [SP,#0xD0+var_7C]
424D2A:  STR             R0, [SP,#0xD0+var_CC]
424D2C:  LDR             R0, [R7,#arg_0]
424D2E:  STR             R0, [SP,#0xD0+var_C8]
424D30:  LDR             R0, [R7,#arg_4]
424D32:  STR             R0, [SP,#0xD0+var_C4]
424D34:  LDR             R0, [R7,#arg_8]
424D36:  STR             R0, [SP,#0xD0+var_C0]
424D38:  LDR             R0, [R7,#arg_C]
424D3A:  STR             R0, [SP,#0xD0+var_BC]
424D3C:  LDR             R0, [R7,#arg_10]
424D3E:  STR             R0, [SP,#0xD0+var_B8]
424D40:  LDR             R0, [R7,#arg_14]
424D42:  STR             R0, [SP,#0xD0+var_B4]
424D44:  AND.W           R0, R5, #0xF0
424D48:  ORR.W           R0, R0, R9
424D4C:  LDR             R1, [SP,#0xD0+var_88]
424D4E:  ADD.W           R0, R0, R0,LSL#1
424D52:  ADD.W           R1, R1, R0,LSL#2
424D56:  MOV.W           R0, #0
424D5A:  IT GT
424D5C:  MOVGT           R0, R10
424D5E:  CMP             R0, #0x77 ; 'w'
424D60:  IT GE
424D62:  MOVGE           R0, R2
424D64:  LDR             R2, [SP,#0xD0+var_84]
424D66:  RSB.W           R0, R0, R0,LSL#4
424D6A:  LDR             R3, [SP,#0xD0+var_78]
424D6C:  ADD.W           R0, R4, R0,LSL#3
424D70:  ADD.W           R0, R2, R0,LSL#3
424D74:  MOV             R2, R8
424D76:  BLX             j__ZN6CWorld24ProcessLineOfSightSectorER7CSectorR13CRepeatSectorRK8CColLineR9CColPointRfRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSightSector(CSector &,CRepeatSector &,CColLine const&,CColPoint &,float &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
424D7A:  LDR             R1, [SP,#0xD0+var_94]
424D7C:  ADD.W           R0, R10, #1
424D80:  ADDS            R5, #0x10
424D82:  CMP             R10, R1
424D84:  MOV             R10, R0
424D86:  BLT             loc_424D06
424D88:  B.W             loc_4258F4
424D8C:  CMP             R10, R0
424D8E:  STR             R1, [SP,#0xD0+var_98]
424D90:  BNE.W           loc_424EFC
424D94:  MOVS            R0, #0
424D96:  CMP.W           R10, #0
424D9A:  IT GT
424D9C:  MOVGT           R0, R10
424D9E:  MOVS            R2, #0x77 ; 'w'
424DA0:  CMP             R0, #0x77 ; 'w'
424DA2:  IT GE
424DA4:  MOVGE           R0, R2
424DA6:  MOV             R2, R5
424DA8:  RSB.W           R0, R0, R0,LSL#4
424DAC:  CMP             R5, R1
424DAE:  MOV.W           R6, R0,LSL#3
424DB2:  MOV.W           R0, R10,LSL#4
424DB6:  UXTB            R4, R0
424DB8:  BGE.W           loc_42500E
424DBC:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x424DCA)
424DC0:  MOV             R8, R2
424DC2:  LDR.W           R1, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x424DCC)
424DC6:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
424DC8:  ADD             R1, PC; _ZN6CWorld11ms_aSectorsE_ptr
424DCA:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
424DCC:  STR             R0, [SP,#0xD0+var_84]
424DCE:  LDR             R0, [R1]; CWorld::ms_aSectors ...
424DD0:  STR             R0, [SP,#0xD0+var_88]
424DD2:  LDRD.W          R9, R5, [SP,#0xD0+var_80]
424DD6:  LDR.W           R10, [SP,#0xD0+var_9C]
424DDA:  ADD.W           R11, SP, #0xD0+var_74
424DDE:  MOV             R1, R10; CVector *
424DE0:  MOV             R2, R9; CVector *
424DE2:  MOV             R0, R11; this
424DE4:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
424DE8:  LDR             R0, [R7,#arg_18]
424DEA:  CMP.W           R8, #0
424DEE:  STR             R0, [SP,#0xD0+var_B0]
424DF0:  MOV.W           R1, #0x77 ; 'w'
424DF4:  LDR             R0, [R7,#arg_1C]
424DF6:  STR             R0, [SP,#0xD0+var_AC]
424DF8:  ADD             R0, SP, #0xD0+var_54
424DFA:  STRD.W          R0, R5, [SP,#0xD0+var_D0]
424DFE:  LDR             R0, [R7,#arg_0]
424E00:  STR             R0, [SP,#0xD0+var_C8]
424E02:  LDR             R0, [R7,#arg_4]
424E04:  STR             R0, [SP,#0xD0+var_C4]
424E06:  LDR             R0, [R7,#arg_8]
424E08:  STR             R0, [SP,#0xD0+var_C0]
424E0A:  LDR             R0, [R7,#arg_C]
424E0C:  STR             R0, [SP,#0xD0+var_BC]
424E0E:  LDR             R0, [R7,#arg_10]
424E10:  STR             R0, [SP,#0xD0+var_B8]
424E12:  LDR             R0, [R7,#arg_14]
424E14:  STR             R0, [SP,#0xD0+var_B4]
424E16:  MOV.W           R0, #0
424E1A:  IT GT
424E1C:  MOVGT           R0, R8
424E1E:  CMP             R0, #0x77 ; 'w'
424E20:  IT GE
424E22:  MOVGE           R0, R1
424E24:  LDR             R1, [SP,#0xD0+var_88]
424E26:  ADD             R0, R6
424E28:  LDR             R2, [SP,#0xD0+var_84]
424E2A:  LDR             R3, [SP,#0xD0+var_78]
424E2C:  ADD.W           R0, R1, R0,LSL#3
424E30:  AND.W           R1, R8, #0xF
424E34:  ORRS            R1, R4
424E36:  ADD.W           R1, R1, R1,LSL#1
424E3A:  ADD.W           R1, R2, R1,LSL#2
424E3E:  MOV             R2, R11
424E40:  BLX             j__ZN6CWorld24ProcessLineOfSightSectorER7CSectorR13CRepeatSectorRK8CColLineR9CColPointRfRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSightSector(CSector &,CRepeatSector &,CColLine const&,CColPoint &,float &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
424E44:  LDR             R1, [SP,#0xD0+var_98]
424E46:  ADD.W           R0, R8, #1
424E4A:  CMP             R8, R1
424E4C:  MOV             R8, R0
424E4E:  BLT             loc_424DDA
424E50:  B.W             loc_4258F4
424E54:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x424E60)
424E58:  LDR.W           R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x424E68)
424E5C:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
424E5E:  LDR.W           R8, [SP,#0xD0+var_80]
424E62:  LDR             R6, [SP,#0xD0+var_9C]
424E64:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
424E66:  LDR             R0, [R0]; CWorld::ms_aSectors ...
424E68:  STR             R0, [SP,#0xD0+var_84]
424E6A:  LDR             R0, [R1]; CWorld::ms_aRepeatSectors ...
424E6C:  STR             R0, [SP,#0xD0+var_88]
424E6E:  ADD.W           R11, SP, #0xD0+var_74
424E72:  MOV             R1, R6; CVector *
424E74:  MOV             R2, R8; CVector *
424E76:  MOV             R0, R11; this
424E78:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
424E7C:  LDR             R0, [R7,#arg_18]
424E7E:  CMP.W           R10, #0
424E82:  STR             R0, [SP,#0xD0+var_B0]
424E84:  MOV.W           R2, #0x77 ; 'w'
424E88:  LDR             R0, [R7,#arg_1C]
424E8A:  STR             R0, [SP,#0xD0+var_AC]
424E8C:  ADD             R0, SP, #0xD0+var_54
424E8E:  STR             R0, [SP,#0xD0+var_D0]
424E90:  LDR             R0, [SP,#0xD0+var_7C]
424E92:  STR             R0, [SP,#0xD0+var_CC]
424E94:  LDR             R0, [R7,#arg_0]
424E96:  STR             R0, [SP,#0xD0+var_C8]
424E98:  LDR             R0, [R7,#arg_4]
424E9A:  STR             R0, [SP,#0xD0+var_C4]
424E9C:  LDR             R0, [R7,#arg_8]
424E9E:  STR             R0, [SP,#0xD0+var_C0]
424EA0:  LDR             R0, [R7,#arg_C]
424EA2:  STR             R0, [SP,#0xD0+var_BC]
424EA4:  LDR             R0, [R7,#arg_10]
424EA6:  STR             R0, [SP,#0xD0+var_B8]
424EA8:  LDR             R0, [R7,#arg_14]
424EAA:  STR             R0, [SP,#0xD0+var_B4]
424EAC:  AND.W           R0, R5, #0xF0
424EB0:  ORR.W           R0, R0, R9
424EB4:  LDR             R1, [SP,#0xD0+var_88]
424EB6:  ADD.W           R0, R0, R0,LSL#1
424EBA:  ADD.W           R1, R1, R0,LSL#2
424EBE:  MOV.W           R0, #0
424EC2:  IT GT
424EC4:  MOVGT           R0, R10
424EC6:  CMP             R0, #0x77 ; 'w'
424EC8:  IT GE
424ECA:  MOVGE           R0, R2
424ECC:  LDR             R2, [SP,#0xD0+var_84]
424ECE:  RSB.W           R0, R0, R0,LSL#4
424ED2:  LDR             R3, [SP,#0xD0+var_78]
424ED4:  ADD.W           R0, R4, R0,LSL#3
424ED8:  ADD.W           R0, R2, R0,LSL#3
424EDC:  MOV             R2, R11
424EDE:  BLX             j__ZN6CWorld24ProcessLineOfSightSectorER7CSectorR13CRepeatSectorRK8CColLineR9CColPointRfRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSightSector(CSector &,CRepeatSector &,CColLine const&,CColPoint &,float &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
424EE2:  LDR             R1, [SP,#0xD0+var_94]
424EE4:  SUB.W           R0, R10, #1
424EE8:  SUBS            R5, #0x10
424EEA:  CMP             R10, R1
424EEC:  MOV             R10, R0
424EEE:  BGT             loc_424E6E
424EF0:  B.W             loc_4258F4
424EF4:  DCFS 50.0
424EF8:  DCFS 60.0
424EFC:  VSUB.F32        S0, S26, S24
424F00:  STR             R5, [SP,#0xD0+var_A0]
424F02:  VSUB.F32        S2, S20, S22
424F06:  VCMPE.F32       S26, S24
424F0A:  VMRS            APSR_nzcv, FPSCR
424F0E:  VDIV.F32        S20, S2, S0
424F12:  BLE.W           loc_4250A2
424F16:  SUB.W           R0, R5, #0x3B ; ';'
424F1A:  VMOV            S0, R0
424F1E:  VCVT.F32.S32    S0, S0
424F22:  VMUL.F32        S0, S0, S16
424F26:  VSUB.F32        S0, S0, S24
424F2A:  VMUL.F32        S0, S20, S0
424F2E:  VADD.F32        S0, S22, S0
424F32:  VDIV.F32        S0, S0, S16
424F36:  VADD.F32        S0, S0, S18
424F3A:  VMOV            R0, S0; x
424F3E:  BLX             floorf
424F42:  VMOV            S0, R0
424F46:  MOVS            R4, #0
424F48:  CMP             R5, #0
424F4A:  MOV.W           R0, #0x77 ; 'w'
424F4E:  IT GT
424F50:  MOVGT           R4, R5
424F52:  VCVT.S32.F32    S0, S0
424F56:  CMP             R4, #0x77 ; 'w'
424F58:  AND.W           R8, R5, #0xF
424F5C:  IT GE
424F5E:  MOVGE           R4, R0
424F60:  MOV.W           R5, R10,LSL#4
424F64:  VMOV            R0, S0
424F68:  STR             R0, [SP,#0xD0+var_A4]
424F6A:  CMP             R0, R10
424F6C:  BLE.W           loc_42519C
424F70:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x424F7C)
424F74:  LDR.W           R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x424F84)
424F78:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
424F7A:  LDR.W           R9, [SP,#0xD0+var_80]
424F7E:  LDR             R6, [SP,#0xD0+var_9C]
424F80:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
424F82:  LDR             R0, [R0]; CWorld::ms_aSectors ...
424F84:  STR             R0, [SP,#0xD0+var_84]
424F86:  LDR             R0, [R1]; CWorld::ms_aRepeatSectors ...
424F88:  STR             R0, [SP,#0xD0+var_88]
424F8A:  ADD.W           R11, SP, #0xD0+var_74
424F8E:  MOV             R1, R6; CVector *
424F90:  MOV             R2, R9; CVector *
424F92:  MOV             R0, R11; this
424F94:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
424F98:  LDR             R0, [R7,#arg_18]
424F9A:  CMP.W           R10, #0
424F9E:  STR             R0, [SP,#0xD0+var_B0]
424FA0:  MOV.W           R2, #0x77 ; 'w'
424FA4:  LDR             R0, [R7,#arg_1C]
424FA6:  STR             R0, [SP,#0xD0+var_AC]
424FA8:  ADD             R0, SP, #0xD0+var_54
424FAA:  STR             R0, [SP,#0xD0+var_D0]
424FAC:  LDR             R0, [SP,#0xD0+var_7C]
424FAE:  STR             R0, [SP,#0xD0+var_CC]
424FB0:  LDR             R0, [R7,#arg_0]
424FB2:  STR             R0, [SP,#0xD0+var_C8]
424FB4:  LDR             R0, [R7,#arg_4]
424FB6:  STR             R0, [SP,#0xD0+var_C4]
424FB8:  LDR             R0, [R7,#arg_8]
424FBA:  STR             R0, [SP,#0xD0+var_C0]
424FBC:  LDR             R0, [R7,#arg_C]
424FBE:  STR             R0, [SP,#0xD0+var_BC]
424FC0:  LDR             R0, [R7,#arg_10]
424FC2:  STR             R0, [SP,#0xD0+var_B8]
424FC4:  LDR             R0, [R7,#arg_14]
424FC6:  STR             R0, [SP,#0xD0+var_B4]
424FC8:  AND.W           R0, R5, #0xF0
424FCC:  ORR.W           R0, R0, R8
424FD0:  LDR             R1, [SP,#0xD0+var_88]
424FD2:  ADD.W           R0, R0, R0,LSL#1
424FD6:  ADD.W           R1, R1, R0,LSL#2
424FDA:  MOV.W           R0, #0
424FDE:  IT GT
424FE0:  MOVGT           R0, R10
424FE2:  CMP             R0, #0x77 ; 'w'
424FE4:  IT GE
424FE6:  MOVGE           R0, R2
424FE8:  LDR             R2, [SP,#0xD0+var_84]
424FEA:  RSB.W           R0, R0, R0,LSL#4
424FEE:  LDR             R3, [SP,#0xD0+var_78]
424FF0:  ADD.W           R0, R4, R0,LSL#3
424FF4:  ADD.W           R0, R2, R0,LSL#3
424FF8:  MOV             R2, R11
424FFA:  BLX             j__ZN6CWorld24ProcessLineOfSightSectorER7CSectorR13CRepeatSectorRK8CColLineR9CColPointRfRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSightSector(CSector &,CRepeatSector &,CColLine const&,CColPoint &,float &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
424FFE:  LDR             R3, [SP,#0xD0+var_A4]
425000:  ADD.W           R0, R10, #1
425004:  ADDS            R5, #0x10
425006:  CMP             R10, R3
425008:  MOV             R10, R0
42500A:  BLT             loc_424F8A
42500C:  B               loc_425238
42500E:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42501C)
425012:  MOV             R5, R2
425014:  LDR.W           R1, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x42501E)
425018:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
42501A:  ADD             R1, PC; _ZN6CWorld11ms_aSectorsE_ptr
42501C:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
42501E:  STR             R0, [SP,#0xD0+var_88]
425020:  LDR             R0, [R1]; CWorld::ms_aSectors ...
425022:  STR             R0, [SP,#0xD0+var_84]
425024:  LDRD.W          R9, R8, [SP,#0xD0+var_80]
425028:  LDR.W           R10, [SP,#0xD0+var_9C]
42502C:  ADD.W           R11, SP, #0xD0+var_74
425030:  MOV             R1, R10; CVector *
425032:  MOV             R2, R9; CVector *
425034:  MOV             R0, R11; this
425036:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
42503A:  LDR             R0, [R7,#arg_18]
42503C:  CMP             R5, #0
42503E:  STR             R0, [SP,#0xD0+var_B0]
425040:  MOV.W           R1, #0x77 ; 'w'
425044:  LDR             R0, [R7,#arg_1C]
425046:  STR             R0, [SP,#0xD0+var_AC]
425048:  ADD             R0, SP, #0xD0+var_54
42504A:  STRD.W          R0, R8, [SP,#0xD0+var_D0]
42504E:  LDR             R0, [R7,#arg_0]
425050:  STR             R0, [SP,#0xD0+var_C8]
425052:  LDR             R0, [R7,#arg_4]
425054:  STR             R0, [SP,#0xD0+var_C4]
425056:  LDR             R0, [R7,#arg_8]
425058:  STR             R0, [SP,#0xD0+var_C0]
42505A:  LDR             R0, [R7,#arg_C]
42505C:  STR             R0, [SP,#0xD0+var_BC]
42505E:  LDR             R0, [R7,#arg_10]
425060:  STR             R0, [SP,#0xD0+var_B8]
425062:  LDR             R0, [R7,#arg_14]
425064:  STR             R0, [SP,#0xD0+var_B4]
425066:  MOV.W           R0, #0
42506A:  IT GT
42506C:  MOVGT           R0, R5
42506E:  CMP             R0, #0x77 ; 'w'
425070:  IT GE
425072:  MOVGE           R0, R1
425074:  LDR             R1, [SP,#0xD0+var_84]
425076:  ADD             R0, R6
425078:  LDR             R2, [SP,#0xD0+var_88]
42507A:  LDR             R3, [SP,#0xD0+var_78]
42507C:  ADD.W           R0, R1, R0,LSL#3
425080:  AND.W           R1, R5, #0xF
425084:  ORRS            R1, R4
425086:  ADD.W           R1, R1, R1,LSL#1
42508A:  ADD.W           R1, R2, R1,LSL#2
42508E:  MOV             R2, R11
425090:  BLX             j__ZN6CWorld24ProcessLineOfSightSectorER7CSectorR13CRepeatSectorRK8CColLineR9CColPointRfRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSightSector(CSector &,CRepeatSector &,CColLine const&,CColPoint &,float &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
425094:  LDR             R1, [SP,#0xD0+var_98]
425096:  SUBS            R0, R5, #1
425098:  CMP             R5, R1
42509A:  MOV             R5, R0
42509C:  BGT             loc_42502C
42509E:  B.W             loc_4258F4
4250A2:  SUB.W           R0, R5, #0x3C ; '<'
4250A6:  VMOV            S0, R0
4250AA:  VCVT.F32.S32    S0, S0
4250AE:  VMUL.F32        S0, S0, S16
4250B2:  VSUB.F32        S0, S0, S24
4250B6:  VMUL.F32        S0, S20, S0
4250BA:  VADD.F32        S0, S22, S0
4250BE:  VDIV.F32        S0, S0, S16
4250C2:  VADD.F32        S0, S0, S18
4250C6:  VMOV            R0, S0; x
4250CA:  BLX             floorf
4250CE:  VMOV            S0, R0
4250D2:  MOVS            R4, #0
4250D4:  CMP             R5, #0
4250D6:  MOV.W           R0, #0x77 ; 'w'
4250DA:  IT GT
4250DC:  MOVGT           R4, R5
4250DE:  VCVT.S32.F32    S0, S0
4250E2:  CMP             R4, #0x77 ; 'w'
4250E4:  AND.W           R2, R5, #0xF
4250E8:  IT GE
4250EA:  MOVGE           R4, R0
4250EC:  MOV.W           R5, R10,LSL#4
4250F0:  VMOV            R0, S0
4250F4:  STR             R0, [SP,#0xD0+var_A4]
4250F6:  CMP             R0, R10
4250F8:  BLE.W           loc_4254AC
4250FC:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x42510A)
425100:  MOV             R11, R2
425102:  LDR.W           R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x425112)
425106:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
425108:  LDR.W           R9, [SP,#0xD0+var_9C]
42510C:  LDR             R6, [SP,#0xD0+var_78]
42510E:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
425110:  LDR             R0, [R0]; CWorld::ms_aSectors ...
425112:  STR             R0, [SP,#0xD0+var_84]
425114:  LDR             R0, [R1]; CWorld::ms_aRepeatSectors ...
425116:  STR             R0, [SP,#0xD0+var_88]
425118:  ADD.W           R8, SP, #0xD0+var_74
42511C:  LDR             R2, [SP,#0xD0+var_80]; CVector *
42511E:  MOV             R1, R9; CVector *
425120:  MOV             R0, R8; this
425122:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
425126:  LDR             R0, [R7,#arg_18]
425128:  CMP.W           R10, #0
42512C:  STR             R0, [SP,#0xD0+var_B0]
42512E:  MOV.W           R2, #0x77 ; 'w'
425132:  LDR             R0, [R7,#arg_1C]
425134:  MOV             R3, R6
425136:  STR             R0, [SP,#0xD0+var_AC]
425138:  ADD             R0, SP, #0xD0+var_54
42513A:  STR             R0, [SP,#0xD0+var_D0]
42513C:  LDR             R0, [SP,#0xD0+var_7C]
42513E:  STR             R0, [SP,#0xD0+var_CC]
425140:  LDR             R0, [R7,#arg_0]
425142:  STR             R0, [SP,#0xD0+var_C8]
425144:  LDR             R0, [R7,#arg_4]
425146:  STR             R0, [SP,#0xD0+var_C4]
425148:  LDR             R0, [R7,#arg_8]
42514A:  STR             R0, [SP,#0xD0+var_C0]
42514C:  LDR             R0, [R7,#arg_C]
42514E:  STR             R0, [SP,#0xD0+var_BC]
425150:  LDR             R0, [R7,#arg_10]
425152:  STR             R0, [SP,#0xD0+var_B8]
425154:  LDR             R0, [R7,#arg_14]
425156:  STR             R0, [SP,#0xD0+var_B4]
425158:  AND.W           R0, R5, #0xF0
42515C:  ORR.W           R0, R0, R11
425160:  LDR             R1, [SP,#0xD0+var_88]
425162:  ADD.W           R0, R0, R0,LSL#1
425166:  ADD.W           R1, R1, R0,LSL#2
42516A:  MOV.W           R0, #0
42516E:  IT GT
425170:  MOVGT           R0, R10
425172:  CMP             R0, #0x77 ; 'w'
425174:  IT GE
425176:  MOVGE           R0, R2
425178:  LDR             R2, [SP,#0xD0+var_84]
42517A:  RSB.W           R0, R0, R0,LSL#4
42517E:  ADD.W           R0, R4, R0,LSL#3
425182:  ADD.W           R0, R2, R0,LSL#3
425186:  MOV             R2, R8
425188:  BLX             j__ZN6CWorld24ProcessLineOfSightSectorER7CSectorR13CRepeatSectorRK8CColLineR9CColPointRfRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSightSector(CSector &,CRepeatSector &,CColLine const&,CColPoint &,float &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
42518C:  LDR             R3, [SP,#0xD0+var_A4]
42518E:  ADD.W           R0, R10, #1
425192:  ADDS            R5, #0x10
425194:  CMP             R10, R3
425196:  MOV             R10, R0
425198:  BLT             loc_425118
42519A:  B               loc_42554C
42519C:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x4251A8)
4251A0:  LDR.W           R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4251B0)
4251A4:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
4251A6:  LDR.W           R9, [SP,#0xD0+var_80]
4251AA:  LDR             R6, [SP,#0xD0+var_9C]
4251AC:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4251AE:  LDR             R0, [R0]; CWorld::ms_aSectors ...
4251B0:  STR             R0, [SP,#0xD0+var_84]
4251B2:  LDR             R0, [R1]; CWorld::ms_aRepeatSectors ...
4251B4:  STR             R0, [SP,#0xD0+var_88]
4251B6:  ADD.W           R11, SP, #0xD0+var_74
4251BA:  MOV             R1, R6; CVector *
4251BC:  MOV             R2, R9; CVector *
4251BE:  MOV             R0, R11; this
4251C0:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
4251C4:  LDR             R0, [R7,#arg_18]
4251C6:  CMP.W           R10, #0
4251CA:  STR             R0, [SP,#0xD0+var_B0]
4251CC:  MOV.W           R2, #0x77 ; 'w'
4251D0:  LDR             R0, [R7,#arg_1C]
4251D2:  STR             R0, [SP,#0xD0+var_AC]
4251D4:  ADD             R0, SP, #0xD0+var_54
4251D6:  STR             R0, [SP,#0xD0+var_D0]
4251D8:  LDR             R0, [SP,#0xD0+var_7C]
4251DA:  STR             R0, [SP,#0xD0+var_CC]
4251DC:  LDR             R0, [R7,#arg_0]
4251DE:  STR             R0, [SP,#0xD0+var_C8]
4251E0:  LDR             R0, [R7,#arg_4]
4251E2:  STR             R0, [SP,#0xD0+var_C4]
4251E4:  LDR             R0, [R7,#arg_8]
4251E6:  STR             R0, [SP,#0xD0+var_C0]
4251E8:  LDR             R0, [R7,#arg_C]
4251EA:  STR             R0, [SP,#0xD0+var_BC]
4251EC:  LDR             R0, [R7,#arg_10]
4251EE:  STR             R0, [SP,#0xD0+var_B8]
4251F0:  LDR             R0, [R7,#arg_14]
4251F2:  STR             R0, [SP,#0xD0+var_B4]
4251F4:  AND.W           R0, R5, #0xF0
4251F8:  ORR.W           R0, R0, R8
4251FC:  LDR             R1, [SP,#0xD0+var_88]
4251FE:  ADD.W           R0, R0, R0,LSL#1
425202:  ADD.W           R1, R1, R0,LSL#2
425206:  MOV.W           R0, #0
42520A:  IT GT
42520C:  MOVGT           R0, R10
42520E:  CMP             R0, #0x77 ; 'w'
425210:  IT GE
425212:  MOVGE           R0, R2
425214:  LDR             R2, [SP,#0xD0+var_84]
425216:  RSB.W           R0, R0, R0,LSL#4
42521A:  LDR             R3, [SP,#0xD0+var_78]
42521C:  ADD.W           R0, R4, R0,LSL#3
425220:  ADD.W           R0, R2, R0,LSL#3
425224:  MOV             R2, R11
425226:  BLX             j__ZN6CWorld24ProcessLineOfSightSectorER7CSectorR13CRepeatSectorRK8CColLineR9CColPointRfRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSightSector(CSector &,CRepeatSector &,CColLine const&,CColPoint &,float &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
42522A:  LDR             R3, [SP,#0xD0+var_A4]
42522C:  SUB.W           R0, R10, #1
425230:  SUBS            R5, #0x10
425232:  CMP             R10, R3
425234:  MOV             R10, R0
425236:  BGT             loc_4251B6
425238:  LDR             R6, [SP,#0xD0+var_A0]
42523A:  LDR             R1, [SP,#0xD0+var_98]
42523C:  ADDS            R0, R6, #1
42523E:  CMP             R0, R1
425240:  BGE.W           loc_4253EE
425244:  LDR.W           R1, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x425252)
425248:  MOVS            R5, #0x77 ; 'w'
42524A:  LDR.W           R2, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x425254)
42524E:  ADD             R1, PC; _ZN6CWorld11ms_aSectorsE_ptr
425250:  ADD             R2, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
425252:  LDR             R1, [R1]; CWorld::ms_aSectors ...
425254:  STR             R1, [SP,#0xD0+var_84]
425256:  LDR             R1, [R2]; CWorld::ms_aRepeatSectors ...
425258:  STR             R1, [SP,#0xD0+var_88]
42525A:  LDR.W           R1, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x425266)
42525E:  LDR.W           R2, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x425268)
425262:  ADD             R1, PC; _ZN6CWorld11ms_aSectorsE_ptr
425264:  ADD             R2, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
425266:  LDR             R1, [R1]; CWorld::ms_aSectors ...
425268:  STR             R1, [SP,#0xD0+var_8C]
42526A:  LDR             R1, [R2]; CWorld::ms_aRepeatSectors ...
42526C:  STR             R1, [SP,#0xD0+var_90]
42526E:  MOV             R1, R6
425270:  MOV             R4, R0
425272:  SUB.W           R0, R1, #0x3A ; ':'
425276:  MOV             R8, R3
425278:  VMOV            S0, R0
42527C:  VCVT.F32.S32    S0, S0
425280:  LDR             R0, [SP,#0xD0+var_9C]
425282:  VLDR            S2, [R0]
425286:  VLDR            S4, [R0,#4]
42528A:  VMUL.F32        S0, S0, S16
42528E:  VSUB.F32        S0, S0, S2
425292:  VMUL.F32        S0, S20, S0
425296:  VADD.F32        S0, S4, S0
42529A:  VDIV.F32        S0, S0, S16
42529E:  VADD.F32        S0, S0, S18
4252A2:  VMOV            R0, S0; x
4252A6:  BLX             floorf
4252AA:  VMOV            S0, R0
4252AE:  CMP             R4, #0
4252B0:  MOV.W           R9, #0
4252B4:  AND.W           R6, R4, #0xF
4252B8:  IT GT
4252BA:  MOVGT           R9, R4
4252BC:  VCVT.S32.F32    S0, S0
4252C0:  CMP.W           R9, #0x77 ; 'w'
4252C4:  IT GE
4252C6:  MOVGE           R9, R5
4252C8:  STR             R4, [SP,#0xD0+var_A0]
4252CA:  MOV.W           R4, R8,LSL#4
4252CE:  VMOV            R11, S0
4252D2:  CMP             R8, R11
4252D4:  BGE             loc_42535C
4252D6:  LDR.W           R10, [SP,#0xD0+var_9C]
4252DA:  ADD             R5, SP, #0xD0+var_74
4252DC:  LDR             R2, [SP,#0xD0+var_80]; CVector *
4252DE:  MOV             R0, R5; this
4252E0:  MOV             R1, R10; CVector *
4252E2:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
4252E6:  LDR             R0, [R7,#arg_18]
4252E8:  CMP.W           R8, #0
4252EC:  STR             R0, [SP,#0xD0+var_B0]
4252EE:  MOV.W           R2, #0x77 ; 'w'
4252F2:  LDR             R0, [R7,#arg_1C]
4252F4:  STR             R0, [SP,#0xD0+var_AC]
4252F6:  ADD             R0, SP, #0xD0+var_54
4252F8:  STR             R0, [SP,#0xD0+var_D0]
4252FA:  LDR             R0, [SP,#0xD0+var_7C]
4252FC:  STR             R0, [SP,#0xD0+var_CC]
4252FE:  LDR             R0, [R7,#arg_0]
425300:  STR             R0, [SP,#0xD0+var_C8]
425302:  LDR             R0, [R7,#arg_4]
425304:  STR             R0, [SP,#0xD0+var_C4]
425306:  LDR             R0, [R7,#arg_8]
425308:  STR             R0, [SP,#0xD0+var_C0]
42530A:  LDR             R0, [R7,#arg_C]
42530C:  STR             R0, [SP,#0xD0+var_BC]
42530E:  LDR             R0, [R7,#arg_10]
425310:  STR             R0, [SP,#0xD0+var_B8]
425312:  LDR             R0, [R7,#arg_14]
425314:  STR             R0, [SP,#0xD0+var_B4]
425316:  AND.W           R0, R4, #0xF0
42531A:  ORR.W           R0, R0, R6
42531E:  LDR             R1, [SP,#0xD0+var_88]
425320:  ADD.W           R0, R0, R0,LSL#1
425324:  ADD.W           R1, R1, R0,LSL#2
425328:  MOV.W           R0, #0
42532C:  IT GT
42532E:  MOVGT           R0, R8
425330:  CMP             R0, #0x77 ; 'w'
425332:  IT GE
425334:  MOVGE           R0, R2
425336:  LDR             R2, [SP,#0xD0+var_84]
425338:  RSB.W           R0, R0, R0,LSL#4
42533C:  LDR             R3, [SP,#0xD0+var_78]
42533E:  ADD.W           R0, R9, R0,LSL#3
425342:  ADD.W           R0, R2, R0,LSL#3
425346:  MOV             R2, R5
425348:  BLX             j__ZN6CWorld24ProcessLineOfSightSectorER7CSectorR13CRepeatSectorRK8CColLineR9CColPointRfRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSightSector(CSector &,CRepeatSector &,CColLine const&,CColPoint &,float &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
42534C:  ADD.W           R0, R8, #1
425350:  ADDS            R4, #0x10
425352:  MOV             R3, R11
425354:  CMP             R8, R3
425356:  MOV             R8, R0
425358:  BLT             loc_4252DC
42535A:  B               loc_4253E0
42535C:  LDR.W           R10, [SP,#0xD0+var_9C]
425360:  ADD             R5, SP, #0xD0+var_74
425362:  LDR             R2, [SP,#0xD0+var_80]; CVector *
425364:  MOV             R1, R10; CVector *
425366:  MOV             R0, R5; this
425368:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
42536C:  LDR             R0, [R7,#arg_18]
42536E:  CMP.W           R8, #0
425372:  STR             R0, [SP,#0xD0+var_B0]
425374:  MOV.W           R2, #0x77 ; 'w'
425378:  LDR             R0, [R7,#arg_1C]
42537A:  STR             R0, [SP,#0xD0+var_AC]
42537C:  ADD             R0, SP, #0xD0+var_54
42537E:  STR             R0, [SP,#0xD0+var_D0]
425380:  LDR             R0, [SP,#0xD0+var_7C]
425382:  STR             R0, [SP,#0xD0+var_CC]
425384:  LDR             R0, [R7,#arg_0]
425386:  STR             R0, [SP,#0xD0+var_C8]
425388:  LDR             R0, [R7,#arg_4]
42538A:  STR             R0, [SP,#0xD0+var_C4]
42538C:  LDR             R0, [R7,#arg_8]
42538E:  STR             R0, [SP,#0xD0+var_C0]
425390:  LDR             R0, [R7,#arg_C]
425392:  STR             R0, [SP,#0xD0+var_BC]
425394:  LDR             R0, [R7,#arg_10]
425396:  STR             R0, [SP,#0xD0+var_B8]
425398:  LDR             R0, [R7,#arg_14]
42539A:  STR             R0, [SP,#0xD0+var_B4]
42539C:  AND.W           R0, R4, #0xF0
4253A0:  ORR.W           R0, R0, R6
4253A4:  LDR             R1, [SP,#0xD0+var_90]
4253A6:  ADD.W           R0, R0, R0,LSL#1
4253AA:  ADD.W           R1, R1, R0,LSL#2
4253AE:  MOV.W           R0, #0
4253B2:  IT GT
4253B4:  MOVGT           R0, R8
4253B6:  CMP             R0, #0x77 ; 'w'
4253B8:  IT GE
4253BA:  MOVGE           R0, R2
4253BC:  LDR             R2, [SP,#0xD0+var_8C]
4253BE:  RSB.W           R0, R0, R0,LSL#4
4253C2:  LDR             R3, [SP,#0xD0+var_78]
4253C4:  ADD.W           R0, R9, R0,LSL#3
4253C8:  ADD.W           R0, R2, R0,LSL#3
4253CC:  MOV             R2, R5
4253CE:  BLX             j__ZN6CWorld24ProcessLineOfSightSectorER7CSectorR13CRepeatSectorRK8CColLineR9CColPointRfRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSightSector(CSector &,CRepeatSector &,CColLine const&,CColPoint &,float &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
4253D2:  SUB.W           R0, R8, #1
4253D6:  SUBS            R4, #0x10
4253D8:  MOV             R3, R11
4253DA:  CMP             R8, R3
4253DC:  MOV             R8, R0
4253DE:  BGT             loc_425360
4253E0:  LDR             R6, [SP,#0xD0+var_A0]
4253E2:  MOVS            R5, #0x77 ; 'w'
4253E4:  LDR             R1, [SP,#0xD0+var_98]
4253E6:  ADDS            R0, R6, #1
4253E8:  CMP             R0, R1
4253EA:  BNE.W           loc_42526E
4253EE:  MOVS            R4, #0
4253F0:  CMP             R1, #0
4253F2:  IT GT
4253F4:  MOVGT           R4, R1
4253F6:  MOVS            R0, #0x77 ; 'w'
4253F8:  CMP             R4, #0x77 ; 'w'
4253FA:  AND.W           R9, R1, #0xF
4253FE:  IT GE
425400:  MOVGE           R4, R0
425402:  LDR             R0, [SP,#0xD0+var_94]
425404:  LSLS            R5, R3, #4
425406:  CMP             R3, R0
425408:  BGE.W           loc_4257C0
42540C:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x425418)
425410:  LDR.W           R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x425422)
425414:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
425416:  LDR.W           R10, [SP,#0xD0+var_80]
42541A:  LDR.W           R8, [SP,#0xD0+var_9C]
42541E:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
425420:  LDR             R0, [R0]; CWorld::ms_aSectors ...
425422:  STR             R0, [SP,#0xD0+var_84]
425424:  LDR             R0, [R1]; CWorld::ms_aRepeatSectors ...
425426:  STR             R0, [SP,#0xD0+var_88]
425428:  ADD             R6, SP, #0xD0+var_74
42542A:  MOV             R1, R8; CVector *
42542C:  MOV             R2, R10; CVector *
42542E:  MOV             R11, R3
425430:  MOV             R0, R6; this
425432:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
425436:  LDR             R0, [R7,#arg_18]
425438:  CMP.W           R11, #0
42543C:  STR             R0, [SP,#0xD0+var_B0]
42543E:  MOV.W           R2, #0x77 ; 'w'
425442:  LDR             R0, [R7,#arg_1C]
425444:  STR             R0, [SP,#0xD0+var_AC]
425446:  ADD             R0, SP, #0xD0+var_54
425448:  STR             R0, [SP,#0xD0+var_D0]
42544A:  LDR             R0, [SP,#0xD0+var_7C]
42544C:  STR             R0, [SP,#0xD0+var_CC]
42544E:  LDR             R0, [R7,#arg_0]
425450:  STR             R0, [SP,#0xD0+var_C8]
425452:  LDR             R0, [R7,#arg_4]
425454:  STR             R0, [SP,#0xD0+var_C4]
425456:  LDR             R0, [R7,#arg_8]
425458:  STR             R0, [SP,#0xD0+var_C0]
42545A:  LDR             R0, [R7,#arg_C]
42545C:  STR             R0, [SP,#0xD0+var_BC]
42545E:  LDR             R0, [R7,#arg_10]
425460:  STR             R0, [SP,#0xD0+var_B8]
425462:  LDR             R0, [R7,#arg_14]
425464:  STR             R0, [SP,#0xD0+var_B4]
425466:  AND.W           R0, R5, #0xF0
42546A:  ORR.W           R0, R0, R9
42546E:  LDR             R1, [SP,#0xD0+var_88]
425470:  ADD.W           R0, R0, R0,LSL#1
425474:  ADD.W           R1, R1, R0,LSL#2
425478:  MOV.W           R0, #0
42547C:  IT GT
42547E:  MOVGT           R0, R11
425480:  CMP             R0, #0x77 ; 'w'
425482:  IT GE
425484:  MOVGE           R0, R2
425486:  LDR             R2, [SP,#0xD0+var_84]
425488:  RSB.W           R0, R0, R0,LSL#4
42548C:  LDR             R3, [SP,#0xD0+var_78]
42548E:  ADD.W           R0, R4, R0,LSL#3
425492:  ADD.W           R0, R2, R0,LSL#3
425496:  MOV             R2, R6
425498:  BLX             j__ZN6CWorld24ProcessLineOfSightSectorER7CSectorR13CRepeatSectorRK8CColLineR9CColPointRfRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSightSector(CSector &,CRepeatSector &,CColLine const&,CColPoint &,float &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
42549C:  ADD.W           R0, R11, #1
4254A0:  LDR             R1, [SP,#0xD0+var_94]
4254A2:  ADDS            R5, #0x10
4254A4:  CMP             R11, R1
4254A6:  MOV             R3, R0
4254A8:  BLT             loc_425428
4254AA:  B               loc_4258F4
4254AC:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x4254BA)
4254B0:  MOV             R6, R2
4254B2:  LDR.W           R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4254C4)
4254B6:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
4254B8:  LDR.W           R9, [SP,#0xD0+var_9C]
4254BC:  LDR.W           R11, [SP,#0xD0+var_78]
4254C0:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4254C2:  LDR             R0, [R0]; CWorld::ms_aSectors ...
4254C4:  STR             R0, [SP,#0xD0+var_84]
4254C6:  LDR             R0, [R1]; CWorld::ms_aRepeatSectors ...
4254C8:  STR             R0, [SP,#0xD0+var_88]
4254CA:  ADD.W           R8, SP, #0xD0+var_74
4254CE:  LDR             R2, [SP,#0xD0+var_80]; CVector *
4254D0:  MOV             R1, R9; CVector *
4254D2:  MOV             R0, R8; this
4254D4:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
4254D8:  LDR             R0, [R7,#arg_18]
4254DA:  CMP.W           R10, #0
4254DE:  STR             R0, [SP,#0xD0+var_B0]
4254E0:  MOV.W           R2, #0x77 ; 'w'
4254E4:  LDR             R0, [R7,#arg_1C]
4254E6:  MOV             R3, R11
4254E8:  STR             R0, [SP,#0xD0+var_AC]
4254EA:  ADD             R0, SP, #0xD0+var_54
4254EC:  STR             R0, [SP,#0xD0+var_D0]
4254EE:  LDR             R0, [SP,#0xD0+var_7C]
4254F0:  STR             R0, [SP,#0xD0+var_CC]
4254F2:  LDR             R0, [R7,#arg_0]
4254F4:  STR             R0, [SP,#0xD0+var_C8]
4254F6:  LDR             R0, [R7,#arg_4]
4254F8:  STR             R0, [SP,#0xD0+var_C4]
4254FA:  LDR             R0, [R7,#arg_8]
4254FC:  STR             R0, [SP,#0xD0+var_C0]
4254FE:  LDR             R0, [R7,#arg_C]
425500:  STR             R0, [SP,#0xD0+var_BC]
425502:  LDR             R0, [R7,#arg_10]
425504:  STR             R0, [SP,#0xD0+var_B8]
425506:  LDR             R0, [R7,#arg_14]
425508:  STR             R0, [SP,#0xD0+var_B4]
42550A:  AND.W           R0, R5, #0xF0
42550E:  ORR.W           R0, R0, R6
425512:  LDR             R1, [SP,#0xD0+var_88]
425514:  ADD.W           R0, R0, R0,LSL#1
425518:  ADD.W           R1, R1, R0,LSL#2
42551C:  MOV.W           R0, #0
425520:  IT GT
425522:  MOVGT           R0, R10
425524:  CMP             R0, #0x77 ; 'w'
425526:  IT GE
425528:  MOVGE           R0, R2
42552A:  LDR             R2, [SP,#0xD0+var_84]
42552C:  RSB.W           R0, R0, R0,LSL#4
425530:  ADD.W           R0, R4, R0,LSL#3
425534:  ADD.W           R0, R2, R0,LSL#3
425538:  MOV             R2, R8
42553A:  BLX             j__ZN6CWorld24ProcessLineOfSightSectorER7CSectorR13CRepeatSectorRK8CColLineR9CColPointRfRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSightSector(CSector &,CRepeatSector &,CColLine const&,CColPoint &,float &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
42553E:  LDR             R3, [SP,#0xD0+var_A4]
425540:  SUB.W           R0, R10, #1
425544:  SUBS            R5, #0x10
425546:  CMP             R10, R3
425548:  MOV             R10, R0
42554A:  BGT             loc_4254CA
42554C:  LDR             R6, [SP,#0xD0+var_A0]
42554E:  LDR             R1, [SP,#0xD0+var_98]
425550:  SUBS            R0, R6, #1
425552:  CMP             R0, R1
425554:  BLE.W           loc_425704
425558:  LDR.W           R1, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x425568)
42555C:  MOV.W           R8, #0x77 ; 'w'
425560:  LDR.W           R2, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42556A)
425564:  ADD             R1, PC; _ZN6CWorld11ms_aSectorsE_ptr
425566:  ADD             R2, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
425568:  LDR             R1, [R1]; CWorld::ms_aSectors ...
42556A:  STR             R1, [SP,#0xD0+var_84]
42556C:  LDR             R1, [R2]; CWorld::ms_aRepeatSectors ...
42556E:  STR             R1, [SP,#0xD0+var_88]
425570:  LDR             R1, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x425578)
425572:  LDR             R2, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42557A)
425574:  ADD             R1, PC; _ZN6CWorld11ms_aSectorsE_ptr
425576:  ADD             R2, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
425578:  LDR             R1, [R1]; CWorld::ms_aSectors ...
42557A:  STR             R1, [SP,#0xD0+var_8C]
42557C:  LDR             R1, [R2]; CWorld::ms_aRepeatSectors ...
42557E:  STR             R1, [SP,#0xD0+var_90]
425580:  MOV             R1, R6
425582:  MOV             R5, R0
425584:  SUB.W           R0, R1, #0x3D ; '='
425588:  MOV             R11, R3
42558A:  VMOV            S0, R0
42558E:  VCVT.F32.S32    S0, S0
425592:  LDR             R0, [SP,#0xD0+var_9C]
425594:  VLDR            S2, [R0]
425598:  VLDR            S4, [R0,#4]
42559C:  VMUL.F32        S0, S0, S16
4255A0:  VSUB.F32        S0, S0, S2
4255A4:  VMUL.F32        S0, S20, S0
4255A8:  VADD.F32        S0, S4, S0
4255AC:  VDIV.F32        S0, S0, S16
4255B0:  VADD.F32        S0, S0, S18
4255B4:  VMOV            R0, S0; x
4255B8:  BLX             floorf
4255BC:  VMOV            S0, R0
4255C0:  CMP             R5, #0
4255C2:  MOV.W           R4, #0
4255C6:  IT GT
4255C8:  MOVGT           R4, R5
4255CA:  VCVT.S32.F32    S0, S0
4255CE:  CMP             R4, #0x77 ; 'w'
4255D0:  IT GE
4255D2:  MOVGE           R4, R8
4255D4:  AND.W           R8, R5, #0xF
4255D8:  STR             R5, [SP,#0xD0+var_A0]
4255DA:  VMOV            R10, S0
4255DE:  CMP             R11, R10
4255E0:  BGE             loc_42566C
4255E2:  LDR.W           R9, [SP,#0xD0+var_9C]
4255E6:  ADD             R5, SP, #0xD0+var_74
4255E8:  MOV.W           R6, R11,LSL#4
4255EC:  LDR             R2, [SP,#0xD0+var_80]; CVector *
4255EE:  MOV             R0, R5; this
4255F0:  MOV             R1, R9; CVector *
4255F2:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
4255F6:  LDR             R0, [R7,#arg_18]
4255F8:  CMP.W           R11, #0
4255FC:  STR             R0, [SP,#0xD0+var_B0]
4255FE:  MOV.W           R2, #0x77 ; 'w'
425602:  LDR             R0, [R7,#arg_1C]
425604:  STR             R0, [SP,#0xD0+var_AC]
425606:  ADD             R0, SP, #0xD0+var_54
425608:  STR             R0, [SP,#0xD0+var_D0]
42560A:  LDR             R0, [SP,#0xD0+var_7C]
42560C:  STR             R0, [SP,#0xD0+var_CC]
42560E:  LDR             R0, [R7,#arg_0]
425610:  STR             R0, [SP,#0xD0+var_C8]
425612:  LDR             R0, [R7,#arg_4]
425614:  STR             R0, [SP,#0xD0+var_C4]
425616:  LDR             R0, [R7,#arg_8]
425618:  STR             R0, [SP,#0xD0+var_C0]
42561A:  LDR             R0, [R7,#arg_C]
42561C:  STR             R0, [SP,#0xD0+var_BC]
42561E:  LDR             R0, [R7,#arg_10]
425620:  STR             R0, [SP,#0xD0+var_B8]
425622:  LDR             R0, [R7,#arg_14]
425624:  STR             R0, [SP,#0xD0+var_B4]
425626:  AND.W           R0, R6, #0xF0
42562A:  ORR.W           R0, R0, R8
42562E:  LDR             R1, [SP,#0xD0+var_88]
425630:  ADD.W           R0, R0, R0,LSL#1
425634:  ADD.W           R1, R1, R0,LSL#2
425638:  MOV.W           R0, #0
42563C:  IT GT
42563E:  MOVGT           R0, R11
425640:  CMP             R0, #0x77 ; 'w'
425642:  IT GE
425644:  MOVGE           R0, R2
425646:  LDR             R2, [SP,#0xD0+var_84]
425648:  RSB.W           R0, R0, R0,LSL#4
42564C:  LDR             R3, [SP,#0xD0+var_78]
42564E:  ADD.W           R0, R4, R0,LSL#3
425652:  ADD.W           R0, R2, R0,LSL#3
425656:  MOV             R2, R5
425658:  BLX             j__ZN6CWorld24ProcessLineOfSightSectorER7CSectorR13CRepeatSectorRK8CColLineR9CColPointRfRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSightSector(CSector &,CRepeatSector &,CColLine const&,CColPoint &,float &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
42565C:  ADD.W           R0, R11, #1
425660:  ADDS            R6, #0x10
425662:  MOV             R3, R10
425664:  CMP             R11, R3
425666:  MOV             R11, R0
425668:  BLT             loc_4255EC
42566A:  B               loc_4256F4
42566C:  LDR             R6, [SP,#0xD0+var_9C]
42566E:  MOV.W           R9, R11,LSL#4
425672:  ADD             R5, SP, #0xD0+var_74
425674:  LDR             R2, [SP,#0xD0+var_80]; CVector *
425676:  MOV             R1, R6; CVector *
425678:  MOV             R0, R5; this
42567A:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
42567E:  LDR             R0, [R7,#arg_18]
425680:  CMP.W           R11, #0
425684:  STR             R0, [SP,#0xD0+var_B0]
425686:  MOV.W           R2, #0x77 ; 'w'
42568A:  LDR             R0, [R7,#arg_1C]
42568C:  STR             R0, [SP,#0xD0+var_AC]
42568E:  ADD             R0, SP, #0xD0+var_54
425690:  STR             R0, [SP,#0xD0+var_D0]
425692:  LDR             R0, [SP,#0xD0+var_7C]
425694:  STR             R0, [SP,#0xD0+var_CC]
425696:  LDR             R0, [R7,#arg_0]
425698:  STR             R0, [SP,#0xD0+var_C8]
42569A:  LDR             R0, [R7,#arg_4]
42569C:  STR             R0, [SP,#0xD0+var_C4]
42569E:  LDR             R0, [R7,#arg_8]
4256A0:  STR             R0, [SP,#0xD0+var_C0]
4256A2:  LDR             R0, [R7,#arg_C]
4256A4:  STR             R0, [SP,#0xD0+var_BC]
4256A6:  LDR             R0, [R7,#arg_10]
4256A8:  STR             R0, [SP,#0xD0+var_B8]
4256AA:  LDR             R0, [R7,#arg_14]
4256AC:  STR             R0, [SP,#0xD0+var_B4]
4256AE:  AND.W           R0, R9, #0xF0
4256B2:  ORR.W           R0, R0, R8
4256B6:  LDR             R1, [SP,#0xD0+var_90]
4256B8:  ADD.W           R0, R0, R0,LSL#1
4256BC:  ADD.W           R1, R1, R0,LSL#2
4256C0:  MOV.W           R0, #0
4256C4:  IT GT
4256C6:  MOVGT           R0, R11
4256C8:  CMP             R0, #0x77 ; 'w'
4256CA:  IT GE
4256CC:  MOVGE           R0, R2
4256CE:  LDR             R2, [SP,#0xD0+var_8C]
4256D0:  RSB.W           R0, R0, R0,LSL#4
4256D4:  LDR             R3, [SP,#0xD0+var_78]
4256D6:  ADD.W           R0, R4, R0,LSL#3
4256DA:  ADD.W           R0, R2, R0,LSL#3
4256DE:  MOV             R2, R5
4256E0:  BLX             j__ZN6CWorld24ProcessLineOfSightSectorER7CSectorR13CRepeatSectorRK8CColLineR9CColPointRfRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSightSector(CSector &,CRepeatSector &,CColLine const&,CColPoint &,float &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
4256E4:  SUB.W           R0, R11, #1
4256E8:  SUB.W           R9, R9, #0x10
4256EC:  MOV             R3, R10
4256EE:  CMP             R11, R3
4256F0:  MOV             R11, R0
4256F2:  BGT             loc_425672
4256F4:  LDR             R6, [SP,#0xD0+var_A0]
4256F6:  MOV.W           R8, #0x77 ; 'w'
4256FA:  LDR             R1, [SP,#0xD0+var_98]
4256FC:  SUBS            R0, R6, #1
4256FE:  CMP             R0, R1
425700:  BGT.W           loc_425580
425704:  MOVS            R4, #0
425706:  CMP             R1, #0
425708:  IT GT
42570A:  MOVGT           R4, R1
42570C:  MOVS            R0, #0x77 ; 'w'
42570E:  CMP             R4, #0x77 ; 'w'
425710:  AND.W           R6, R1, #0xF
425714:  IT GE
425716:  MOVGE           R4, R0
425718:  LDR             R0, [SP,#0xD0+var_94]
42571A:  LSLS            R5, R3, #4
42571C:  CMP             R3, R0
42571E:  BGE.W           loc_42585A
425722:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x42572A)
425724:  LDR             R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x425734)
425726:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
425728:  LDR.W           R11, [SP,#0xD0+var_80]
42572C:  LDR.W           R8, [SP,#0xD0+var_9C]
425730:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
425732:  LDR             R0, [R0]; CWorld::ms_aSectors ...
425734:  STR             R0, [SP,#0xD0+var_84]
425736:  LDR             R0, [R1]; CWorld::ms_aRepeatSectors ...
425738:  STR             R0, [SP,#0xD0+var_88]
42573A:  ADD.W           R9, SP, #0xD0+var_74
42573E:  MOV             R1, R8; CVector *
425740:  MOV             R2, R11; CVector *
425742:  MOV             R10, R3
425744:  MOV             R0, R9; this
425746:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
42574A:  LDR             R0, [R7,#arg_18]
42574C:  CMP.W           R10, #0
425750:  STR             R0, [SP,#0xD0+var_B0]
425752:  MOV.W           R2, #0x77 ; 'w'
425756:  LDR             R0, [R7,#arg_1C]
425758:  STR             R0, [SP,#0xD0+var_AC]
42575A:  ADD             R0, SP, #0xD0+var_54
42575C:  STR             R0, [SP,#0xD0+var_D0]
42575E:  LDR             R0, [SP,#0xD0+var_7C]
425760:  STR             R0, [SP,#0xD0+var_CC]
425762:  LDR             R0, [R7,#arg_0]
425764:  STR             R0, [SP,#0xD0+var_C8]
425766:  LDR             R0, [R7,#arg_4]
425768:  STR             R0, [SP,#0xD0+var_C4]
42576A:  LDR             R0, [R7,#arg_8]
42576C:  STR             R0, [SP,#0xD0+var_C0]
42576E:  LDR             R0, [R7,#arg_C]
425770:  STR             R0, [SP,#0xD0+var_BC]
425772:  LDR             R0, [R7,#arg_10]
425774:  STR             R0, [SP,#0xD0+var_B8]
425776:  LDR             R0, [R7,#arg_14]
425778:  STR             R0, [SP,#0xD0+var_B4]
42577A:  AND.W           R0, R5, #0xF0
42577E:  ORR.W           R0, R0, R6
425782:  LDR             R1, [SP,#0xD0+var_88]
425784:  ADD.W           R0, R0, R0,LSL#1
425788:  ADD.W           R1, R1, R0,LSL#2
42578C:  MOV.W           R0, #0
425790:  IT GT
425792:  MOVGT           R0, R10
425794:  CMP             R0, #0x77 ; 'w'
425796:  IT GE
425798:  MOVGE           R0, R2
42579A:  LDR             R2, [SP,#0xD0+var_84]
42579C:  RSB.W           R0, R0, R0,LSL#4
4257A0:  LDR             R3, [SP,#0xD0+var_78]
4257A2:  ADD.W           R0, R4, R0,LSL#3
4257A6:  ADD.W           R0, R2, R0,LSL#3
4257AA:  MOV             R2, R9
4257AC:  BLX             j__ZN6CWorld24ProcessLineOfSightSectorER7CSectorR13CRepeatSectorRK8CColLineR9CColPointRfRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSightSector(CSector &,CRepeatSector &,CColLine const&,CColPoint &,float &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
4257B0:  ADD.W           R0, R10, #1
4257B4:  LDR             R1, [SP,#0xD0+var_94]
4257B6:  ADDS            R5, #0x10
4257B8:  CMP             R10, R1
4257BA:  MOV             R3, R0
4257BC:  BLT             loc_42573A
4257BE:  B               loc_4258F4
4257C0:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x4257C8)
4257C2:  LDR             R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4257D2)
4257C4:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
4257C6:  LDR.W           R10, [SP,#0xD0+var_80]
4257CA:  LDR.W           R8, [SP,#0xD0+var_9C]
4257CE:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4257D0:  LDR             R0, [R0]; CWorld::ms_aSectors ...
4257D2:  STR             R0, [SP,#0xD0+var_84]
4257D4:  LDR             R0, [R1]; CWorld::ms_aRepeatSectors ...
4257D6:  STR             R0, [SP,#0xD0+var_88]
4257D8:  ADD.W           R11, SP, #0xD0+var_74
4257DC:  MOV             R1, R8; CVector *
4257DE:  MOV             R2, R10; CVector *
4257E0:  MOV             R6, R3
4257E2:  MOV             R0, R11; this
4257E4:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
4257E8:  LDR             R0, [R7,#arg_18]
4257EA:  CMP             R6, #0
4257EC:  STR             R0, [SP,#0xD0+var_B0]
4257EE:  MOV.W           R2, #0x77 ; 'w'
4257F2:  LDR             R0, [R7,#arg_1C]
4257F4:  STR             R0, [SP,#0xD0+var_AC]
4257F6:  ADD             R0, SP, #0xD0+var_54
4257F8:  STR             R0, [SP,#0xD0+var_D0]
4257FA:  LDR             R0, [SP,#0xD0+var_7C]
4257FC:  STR             R0, [SP,#0xD0+var_CC]
4257FE:  LDR             R0, [R7,#arg_0]
425800:  STR             R0, [SP,#0xD0+var_C8]
425802:  LDR             R0, [R7,#arg_4]
425804:  STR             R0, [SP,#0xD0+var_C4]
425806:  LDR             R0, [R7,#arg_8]
425808:  STR             R0, [SP,#0xD0+var_C0]
42580A:  LDR             R0, [R7,#arg_C]
42580C:  STR             R0, [SP,#0xD0+var_BC]
42580E:  LDR             R0, [R7,#arg_10]
425810:  STR             R0, [SP,#0xD0+var_B8]
425812:  LDR             R0, [R7,#arg_14]
425814:  STR             R0, [SP,#0xD0+var_B4]
425816:  AND.W           R0, R5, #0xF0
42581A:  ORR.W           R0, R0, R9
42581E:  LDR             R1, [SP,#0xD0+var_88]
425820:  ADD.W           R0, R0, R0,LSL#1
425824:  ADD.W           R1, R1, R0,LSL#2
425828:  MOV.W           R0, #0
42582C:  IT GT
42582E:  MOVGT           R0, R6
425830:  CMP             R0, #0x77 ; 'w'
425832:  IT GE
425834:  MOVGE           R0, R2
425836:  LDR             R2, [SP,#0xD0+var_84]
425838:  RSB.W           R0, R0, R0,LSL#4
42583C:  LDR             R3, [SP,#0xD0+var_78]
42583E:  ADD.W           R0, R4, R0,LSL#3
425842:  ADD.W           R0, R2, R0,LSL#3
425846:  MOV             R2, R11
425848:  BLX             j__ZN6CWorld24ProcessLineOfSightSectorER7CSectorR13CRepeatSectorRK8CColLineR9CColPointRfRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSightSector(CSector &,CRepeatSector &,CColLine const&,CColPoint &,float &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
42584C:  SUBS            R0, R6, #1
42584E:  LDR             R1, [SP,#0xD0+var_94]
425850:  SUBS            R5, #0x10
425852:  CMP             R6, R1
425854:  MOV             R3, R0
425856:  BGT             loc_4257D8
425858:  B               loc_4258F4
42585A:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x425864)
42585C:  MOV             R10, R6
42585E:  LDR             R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42586E)
425860:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
425862:  LDR.W           R11, [SP,#0xD0+var_80]
425866:  LDR.W           R8, [SP,#0xD0+var_9C]
42586A:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
42586C:  LDR             R0, [R0]; CWorld::ms_aSectors ...
42586E:  STR             R0, [SP,#0xD0+var_84]
425870:  LDR             R0, [R1]; CWorld::ms_aRepeatSectors ...
425872:  STR             R0, [SP,#0xD0+var_88]
425874:  ADD.W           R9, SP, #0xD0+var_74
425878:  MOV             R1, R8; CVector *
42587A:  MOV             R2, R11; CVector *
42587C:  MOV             R6, R3
42587E:  MOV             R0, R9; this
425880:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
425884:  LDR             R0, [R7,#arg_18]
425886:  CMP             R6, #0
425888:  STR             R0, [SP,#0xD0+var_B0]
42588A:  MOV.W           R2, #0x77 ; 'w'
42588E:  LDR             R0, [R7,#arg_1C]
425890:  STR             R0, [SP,#0xD0+var_AC]
425892:  ADD             R0, SP, #0xD0+var_54
425894:  STR             R0, [SP,#0xD0+var_D0]
425896:  LDR             R0, [SP,#0xD0+var_7C]
425898:  STR             R0, [SP,#0xD0+var_CC]
42589A:  LDR             R0, [R7,#arg_0]
42589C:  STR             R0, [SP,#0xD0+var_C8]
42589E:  LDR             R0, [R7,#arg_4]
4258A0:  STR             R0, [SP,#0xD0+var_C4]
4258A2:  LDR             R0, [R7,#arg_8]
4258A4:  STR             R0, [SP,#0xD0+var_C0]
4258A6:  LDR             R0, [R7,#arg_C]
4258A8:  STR             R0, [SP,#0xD0+var_BC]
4258AA:  LDR             R0, [R7,#arg_10]
4258AC:  STR             R0, [SP,#0xD0+var_B8]
4258AE:  LDR             R0, [R7,#arg_14]
4258B0:  STR             R0, [SP,#0xD0+var_B4]
4258B2:  AND.W           R0, R5, #0xF0
4258B6:  ORR.W           R0, R0, R10
4258BA:  LDR             R1, [SP,#0xD0+var_88]
4258BC:  ADD.W           R0, R0, R0,LSL#1
4258C0:  ADD.W           R1, R1, R0,LSL#2
4258C4:  MOV.W           R0, #0
4258C8:  IT GT
4258CA:  MOVGT           R0, R6
4258CC:  CMP             R0, #0x77 ; 'w'
4258CE:  IT GE
4258D0:  MOVGE           R0, R2
4258D2:  LDR             R2, [SP,#0xD0+var_84]
4258D4:  RSB.W           R0, R0, R0,LSL#4
4258D8:  LDR             R3, [SP,#0xD0+var_78]
4258DA:  ADD.W           R0, R4, R0,LSL#3
4258DE:  ADD.W           R0, R2, R0,LSL#3
4258E2:  MOV             R2, R9
4258E4:  BLX             j__ZN6CWorld24ProcessLineOfSightSectorER7CSectorR13CRepeatSectorRK8CColLineR9CColPointRfRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSightSector(CSector &,CRepeatSector &,CColLine const&,CColPoint &,float &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
4258E8:  SUBS            R0, R6, #1
4258EA:  LDR             R1, [SP,#0xD0+var_94]
4258EC:  SUBS            R5, #0x10
4258EE:  CMP             R6, R1
4258F0:  MOV             R3, R0
4258F2:  BGT             loc_425874
4258F4:  VMOV.F32        S0, #1.0
4258F8:  VLDR            S2, [SP,#0xD0+var_54]
4258FC:  MOVS            R0, #0
4258FE:  VCMPE.F32       S2, S0
425902:  VMRS            APSR_nzcv, FPSCR
425906:  IT LT
425908:  MOVLT           R0, #1
42590A:  ADD             SP, SP, #0x80
42590C:  VPOP            {D8-D13}
425910:  ADD             SP, SP, #4
425912:  POP.W           {R8-R11}
425916:  POP             {R4-R7,PC}
