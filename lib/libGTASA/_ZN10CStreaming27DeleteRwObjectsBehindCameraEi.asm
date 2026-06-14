; =========================================================
; Game Engine Function: _ZN10CStreaming27DeleteRwObjectsBehindCameraEi
; Address            : 0x2D5C68 - 0x2D63CC
; =========================================================

2D5C68:  PUSH            {R4-R7,LR}
2D5C6A:  ADD             R7, SP, #0xC
2D5C6C:  PUSH.W          {R8-R11}
2D5C70:  SUB             SP, SP, #4
2D5C72:  VPUSH           {D8-D10}
2D5C76:  SUB             SP, SP, #0x28
2D5C78:  MOV             R4, R0
2D5C7A:  LDR.W           R0, =(_ZN10CStreaming13ms_memoryUsedE_ptr - 0x2D5C82)
2D5C7E:  ADD             R0, PC; _ZN10CStreaming13ms_memoryUsedE_ptr
2D5C80:  LDR             R0, [R0]; CStreaming::ms_memoryUsed ...
2D5C82:  LDR             R0, [R0]; CStreaming::ms_memoryUsed
2D5C84:  CMP             R0, R4
2D5C86:  BGE             loc_2D5C96
2D5C88:  ADD             SP, SP, #0x28 ; '('
2D5C8A:  VPOP            {D8-D10}
2D5C8E:  ADD             SP, SP, #4
2D5C90:  POP.W           {R8-R11}
2D5C94:  POP             {R4-R7,PC}
2D5C96:  LDR.W           R0, =(TheCamera_ptr - 0x2D5CA2)
2D5C9A:  VLDR            S16, =50.0
2D5C9E:  ADD             R0, PC; TheCamera_ptr
2D5CA0:  VLDR            S20, =60.0
2D5CA4:  LDR             R6, [R0]; TheCamera
2D5CA6:  LDR             R0, [R6,#(dword_951FBC - 0x951FA8)]
2D5CA8:  ADD.W           R1, R0, #0x30 ; '0'
2D5CAC:  CMP             R0, #0
2D5CAE:  IT EQ
2D5CB0:  ADDEQ           R1, R6, #4
2D5CB2:  VLDR            S0, [R1]
2D5CB6:  VLDR            S18, [R1,#4]
2D5CBA:  VDIV.F32        S0, S0, S16
2D5CBE:  VADD.F32        S0, S0, S20
2D5CC2:  VMOV            R0, S0; x
2D5CC6:  BLX             floorf
2D5CCA:  VDIV.F32        S0, S18, S16
2D5CCE:  MOV             R5, R0
2D5CD0:  VADD.F32        S0, S0, S20
2D5CD4:  VMOV            R0, S0; x
2D5CD8:  BLX             floorf
2D5CDC:  ADD.W           R1, R6, #0x910
2D5CE0:  VMOV            S6, R5
2D5CE4:  VMOV            S4, R0
2D5CE8:  MOVS            R5, #0x77 ; 'w'
2D5CEA:  VLDR            S18, [R1]
2D5CEE:  ADDW            R1, R6, #0x90C
2D5CF2:  VLDR            S16, [R1]
2D5CF6:  VCVT.S32.F32    S4, S4
2D5CFA:  VCVT.S32.F32    S6, S6
2D5CFE:  MOVW            R1, #0xFFFF
2D5D02:  VABS.F32        S0, S18
2D5D06:  VABS.F32        S2, S16
2D5D0A:  VMOV            R3, S4
2D5D0E:  VMOV            R2, S6; int
2D5D12:  VCMPE.F32       S2, S0
2D5D16:  VMRS            APSR_nzcv, FPSCR
2D5D1A:  BLE             loc_2D5D56
2D5D1C:  ADD.W           R0, R3, #0xA
2D5D20:  SUB.W           R6, R3, #0xA
2D5D24:  CMP             R0, #0x77 ; 'w'
2D5D26:  MOV.W           R10, #0
2D5D2A:  IT GE
2D5D2C:  MOVGE           R0, R5
2D5D2E:  CMP             R6, #0
2D5D30:  VCMPE.F32       S16, #0.0
2D5D34:  STR             R0, [SP,#0x60+var_3C]
2D5D36:  IT LE
2D5D38:  MOVLE           R6, R10
2D5D3A:  VMRS            APSR_nzcv, FPSCR
2D5D3E:  BLE             loc_2D5D90
2D5D40:  SUBS            R5, R2, #2
2D5D42:  SUB.W           R0, R2, #0xA
2D5D46:  CMP             R5, #0
2D5D48:  IT LE
2D5D4A:  MOVLE           R5, R10
2D5D4C:  CMP             R0, #0
2D5D4E:  IT GT
2D5D50:  MOVGT           R10, R0
2D5D52:  MOVS            R0, #1
2D5D54:  B               loc_2D5DA8
2D5D56:  ADD.W           R0, R2, #0xA
2D5D5A:  MOVS            R6, #0
2D5D5C:  CMP             R0, #0x77 ; 'w'
2D5D5E:  VCMPE.F32       S18, #0.0
2D5D62:  IT GE
2D5D64:  MOVGE           R0, R5
2D5D66:  STR             R0, [SP,#0x60+var_3C]
2D5D68:  SUB.W           R0, R2, #0xA
2D5D6C:  CMP             R0, #0
2D5D6E:  IT LE
2D5D70:  MOVLE           R0, R6
2D5D72:  VMRS            APSR_nzcv, FPSCR
2D5D76:  STR             R0, [SP,#0x60+var_48]
2D5D78:  BLE             loc_2D5DC2
2D5D7A:  SUBS            R5, R3, #2
2D5D7C:  SUB.W           R0, R3, #0xA
2D5D80:  CMP             R5, #0
2D5D82:  IT LE
2D5D84:  MOVLE           R5, R6
2D5D86:  CMP             R0, #0
2D5D88:  IT GT
2D5D8A:  MOVGT           R6, R0
2D5D8C:  MOVS            R0, #1
2D5D8E:  B               loc_2D5DD8
2D5D90:  ADD.W           R10, R2, #0xA
2D5D94:  ADDS            R0, R2, #2
2D5D96:  CMP.W           R10, #0x77 ; 'w'
2D5D9A:  IT GE
2D5D9C:  MOVGE           R10, R5
2D5D9E:  CMP             R0, #0x77 ; 'w'
2D5DA0:  IT LT
2D5DA2:  MOVLT           R5, R0
2D5DA4:  MOV.W           R0, #0xFFFFFFFF
2D5DA8:  STRD.W          R2, R0, [SP,#0x60+var_54]
2D5DAC:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2D5DB4)
2D5DB0:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2D5DB2:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
2D5DB4:  LDRH            R0, [R0]; this
2D5DB6:  CMP             R0, R1
2D5DB8:  BNE             loc_2D5DF2
2D5DBA:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
2D5DBE:  MOVS            R0, #1
2D5DC0:  B               loc_2D5DF4
2D5DC2:  ADD.W           R6, R3, #0xA
2D5DC6:  ADDS            R0, R3, #2
2D5DC8:  CMP             R6, #0x77 ; 'w'
2D5DCA:  IT GE
2D5DCC:  MOVGE           R6, R5
2D5DCE:  CMP             R0, #0x77 ; 'w'
2D5DD0:  IT LT
2D5DD2:  MOVLT           R5, R0
2D5DD4:  MOV.W           R0, #0xFFFFFFFF
2D5DD8:  STRD.W          R3, R0, [SP,#0x60+var_50]
2D5DDC:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2D5DE4)
2D5DE0:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2D5DE2:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
2D5DE4:  LDRH            R0, [R0]; this
2D5DE6:  CMP             R0, R1
2D5DE8:  BNE             loc_2D5E32
2D5DEA:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
2D5DEE:  MOVS            R0, #1
2D5DF0:  B               loc_2D5E34
2D5DF2:  ADDS            R0, #1
2D5DF4:  LDR.W           R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2D5DFE)
2D5DF8:  CMP             R10, R5
2D5DFA:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2D5DFC:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
2D5DFE:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
2D5E00:  BNE             loc_2D5E6C
2D5E02:  VCMPE.F32       S16, #0.0
2D5E06:  VMRS            APSR_nzcv, FPSCR
2D5E0A:  BLE.W           loc_2D5FE6
2D5E0E:  LDR             R0, [SP,#0x60+var_54]
2D5E10:  ADD.W           R10, R0, #0xA
2D5E14:  SUB.W           R11, R0, #2
2D5E18:  CMP.W           R10, #0x77 ; 'w'
2D5E1C:  MOV.W           R0, #1
2D5E20:  IT GE
2D5E22:  MOVGE.W         R10, #0x77 ; 'w'
2D5E26:  CMP.W           R11, #0
2D5E2A:  IT LE
2D5E2C:  MOVLE.W         R11, #0
2D5E30:  B               loc_2D6008
2D5E32:  ADDS            R0, #1
2D5E34:  LDR.W           R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2D5E3E)
2D5E38:  CMP             R6, R5
2D5E3A:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2D5E3C:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
2D5E3E:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
2D5E40:  BNE             loc_2D5F30
2D5E42:  VCMPE.F32       S18, #0.0
2D5E46:  VMRS            APSR_nzcv, FPSCR
2D5E4A:  BLE.W           loc_2D602C
2D5E4E:  LDR             R0, [SP,#0x60+var_50]
2D5E50:  ADD.W           R8, R0, #0xA
2D5E54:  SUBS            R5, R0, #2
2D5E56:  CMP.W           R8, #0x77 ; 'w'
2D5E5A:  MOV.W           R0, #1
2D5E5E:  IT GE
2D5E60:  MOVGE.W         R8, #0x77 ; 'w'
2D5E64:  CMP             R5, #0
2D5E66:  IT LE
2D5E68:  MOVLE           R5, #0
2D5E6A:  B               loc_2D6048
2D5E6C:  LSLS            R0, R6, #4
2D5E6E:  STR             R0, [SP,#0x60+var_5C]
2D5E70:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x2D5E78)
2D5E74:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
2D5E76:  LDR             R0, [R0]; CWorld::ms_aSectors ...
2D5E78:  STR             R0, [SP,#0x60+var_40]
2D5E7A:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x2D5E82)
2D5E7E:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
2D5E80:  LDR             R0, [R0]; CWorld::ms_aSectors ...
2D5E82:  STR             R0, [SP,#0x60+var_44]
2D5E84:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x2D5E8C)
2D5E88:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
2D5E8A:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
2D5E8C:  STRD.W          R6, R0, [SP,#0x60+var_4C]
2D5E90:  STR             R5, [SP,#0x60+var_58]
2D5E92:  B               loc_2D5F1C
2D5E94:  CMP.W           R10, #0
2D5E98:  MOV             R6, R10
2D5E9A:  IT LE
2D5E9C:  MOVLE           R6, #0
2D5E9E:  MOVS            R0, #0x77 ; 'w'
2D5EA0:  CMP             R6, #0x77 ; 'w'
2D5EA2:  AND.W           R5, R10, #0xF
2D5EA6:  IT GE
2D5EA8:  MOVGE           R6, R0
2D5EAA:  LDR.W           R8, [SP,#0x60+var_5C]
2D5EAE:  LDR.W           R11, [SP,#0x60+var_4C]
2D5EB2:  CMP.W           R11, #0x77 ; 'w'
2D5EB6:  MOV.W           R0, #0x77 ; 'w'
2D5EBA:  IT LT
2D5EBC:  MOVLT           R0, R11
2D5EBE:  MOV             R1, R4; CPtrList *
2D5EC0:  RSB.W           R0, R0, R0,LSL#4
2D5EC4:  ADD.W           R9, R6, R0,LSL#3
2D5EC8:  LDR             R0, [SP,#0x60+var_40]
2D5ECA:  ADD.W           R0, R0, R9,LSL#3; this
2D5ECE:  BLX             j__ZN10CStreaming39DeleteRwObjectsBehindCameraInSectorListER8CPtrListi; CStreaming::DeleteRwObjectsBehindCameraInSectorList(CPtrList &,int)
2D5ED2:  CMP             R0, #0
2D5ED4:  BNE.W           loc_2D5C88
2D5ED8:  LDR             R0, [SP,#0x60+var_44]
2D5EDA:  MOV             R1, R4; CPtrList *
2D5EDC:  ADD.W           R0, R0, R9,LSL#3
2D5EE0:  ADDS            R0, #4; this
2D5EE2:  BLX             j__ZN10CStreaming39DeleteRwObjectsBehindCameraInSectorListER8CPtrListi; CStreaming::DeleteRwObjectsBehindCameraInSectorList(CPtrList &,int)
2D5EE6:  CMP             R0, #0
2D5EE8:  BNE.W           loc_2D5C88
2D5EEC:  AND.W           R0, R8, #0xF0
2D5EF0:  LDR             R1, [SP,#0x60+var_48]
2D5EF2:  ORRS            R0, R5
2D5EF4:  ADD.W           R0, R0, R0,LSL#1
2D5EF8:  ADD.W           R0, R1, R0,LSL#2
2D5EFC:  MOV             R1, R4; CPtrList *
2D5EFE:  ADDS            R0, #8; this
2D5F00:  BLX             j__ZN10CStreaming39DeleteRwObjectsBehindCameraInSectorListER8CPtrListi; CStreaming::DeleteRwObjectsBehindCameraInSectorList(CPtrList &,int)
2D5F04:  CMP             R0, #0
2D5F06:  BNE.W           loc_2D5C88
2D5F0A:  LDR             R1, [SP,#0x60+var_3C]
2D5F0C:  ADD.W           R0, R11, #1
2D5F10:  ADD.W           R8, R8, #0x10
2D5F14:  CMP             R11, R1
2D5F16:  MOV             R11, R0
2D5F18:  BLT             loc_2D5EB2
2D5F1A:  B               loc_2D5F22
2D5F1C:  LDR             R0, [SP,#0x60+var_3C]
2D5F1E:  CMP             R6, R0
2D5F20:  BLE             loc_2D5E94
2D5F22:  LDR             R0, [SP,#0x60+var_50]
2D5F24:  LDR             R5, [SP,#0x60+var_58]
2D5F26:  LDR             R6, [SP,#0x60+var_4C]
2D5F28:  ADD             R10, R0
2D5F2A:  CMP             R10, R5
2D5F2C:  BNE             loc_2D5F1C
2D5F2E:  B               loc_2D5E02
2D5F30:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x2D5F3A)
2D5F34:  STR             R5, [SP,#0x60+var_54]
2D5F36:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
2D5F38:  LDR.W           R10, [R0]; CWorld::ms_aSectors ...
2D5F3C:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x2D5F44)
2D5F40:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
2D5F42:  LDR             R0, [R0]; CWorld::ms_aSectors ...
2D5F44:  STR             R0, [SP,#0x60+var_40]
2D5F46:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x2D5F4E)
2D5F4A:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
2D5F4C:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
2D5F4E:  STR             R0, [SP,#0x60+var_44]
2D5F50:  B               loc_2D5FD2
2D5F52:  CMP             R6, #0
2D5F54:  MOV             R0, R6
2D5F56:  IT LE
2D5F58:  MOVLE           R0, #0
2D5F5A:  MOVS            R1, #0x77 ; 'w'
2D5F5C:  CMP             R0, #0x77 ; 'w'
2D5F5E:  IT GE
2D5F60:  MOVGE           R0, R1
2D5F62:  LDR.W           R11, [SP,#0x60+var_48]
2D5F66:  RSB.W           R0, R0, R0,LSL#4
2D5F6A:  MOV.W           R9, R0,LSL#3
2D5F6E:  LSLS            R0, R6, #4
2D5F70:  UXTB            R5, R0
2D5F72:  CMP.W           R11, #0x77 ; 'w'
2D5F76:  MOV.W           R0, #0x77 ; 'w'
2D5F7A:  IT LT
2D5F7C:  MOVLT           R0, R11
2D5F7E:  MOV             R1, R4; CPtrList *
2D5F80:  ADD.W           R8, R0, R9
2D5F84:  ADD.W           R0, R10, R8,LSL#3; this
2D5F88:  BLX             j__ZN10CStreaming39DeleteRwObjectsBehindCameraInSectorListER8CPtrListi; CStreaming::DeleteRwObjectsBehindCameraInSectorList(CPtrList &,int)
2D5F8C:  CMP             R0, #0
2D5F8E:  BNE.W           loc_2D5C88
2D5F92:  LDR             R0, [SP,#0x60+var_40]
2D5F94:  MOV             R1, R4; CPtrList *
2D5F96:  ADD.W           R0, R0, R8,LSL#3
2D5F9A:  ADDS            R0, #4; this
2D5F9C:  BLX             j__ZN10CStreaming39DeleteRwObjectsBehindCameraInSectorListER8CPtrListi; CStreaming::DeleteRwObjectsBehindCameraInSectorList(CPtrList &,int)
2D5FA0:  CMP             R0, #0
2D5FA2:  BNE.W           loc_2D5C88
2D5FA6:  AND.W           R0, R11, #0xF
2D5FAA:  LDR             R1, [SP,#0x60+var_44]
2D5FAC:  ORRS            R0, R5
2D5FAE:  ADD.W           R0, R0, R0,LSL#1
2D5FB2:  ADD.W           R0, R1, R0,LSL#2
2D5FB6:  MOV             R1, R4; CPtrList *
2D5FB8:  ADDS            R0, #8; this
2D5FBA:  BLX             j__ZN10CStreaming39DeleteRwObjectsBehindCameraInSectorListER8CPtrListi; CStreaming::DeleteRwObjectsBehindCameraInSectorList(CPtrList &,int)
2D5FBE:  CMP             R0, #0
2D5FC0:  BNE.W           loc_2D5C88
2D5FC4:  LDR             R1, [SP,#0x60+var_3C]
2D5FC6:  ADD.W           R0, R11, #1
2D5FCA:  CMP             R11, R1
2D5FCC:  MOV             R11, R0
2D5FCE:  BLT             loc_2D5F72
2D5FD0:  B               loc_2D5FDA
2D5FD2:  LDR             R0, [SP,#0x60+var_3C]
2D5FD4:  LDR             R1, [SP,#0x60+var_48]
2D5FD6:  CMP             R1, R0
2D5FD8:  BLE             loc_2D5F52
2D5FDA:  LDR             R0, [SP,#0x60+var_4C]
2D5FDC:  LDR             R5, [SP,#0x60+var_54]
2D5FDE:  ADD             R6, R0
2D5FE0:  CMP             R6, R5
2D5FE2:  BNE             loc_2D5FD2
2D5FE4:  B               loc_2D5E42
2D5FE6:  LDR             R0, [SP,#0x60+var_54]
2D5FE8:  SUB.W           R10, R0, #0xA
2D5FEC:  ADD.W           R11, R0, #2
2D5FF0:  CMP.W           R10, #0
2D5FF4:  MOV.W           R0, #0xFFFFFFFF
2D5FF8:  IT LE
2D5FFA:  MOVLE.W         R10, #0
2D5FFE:  CMP.W           R11, #0x77 ; 'w'
2D6002:  IT GE
2D6004:  MOVGE.W         R11, #0x77 ; 'w'
2D6008:  STR             R0, [SP,#0x60+var_50]
2D600A:  MOVW            R8, #0xFFFF
2D600E:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2D6016)
2D6012:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2D6014:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
2D6016:  LDRH            R0, [R0]; this
2D6018:  CMP             R0, R8
2D601A:  BNE             loc_2D6062
2D601C:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
2D6020:  MOVS            R0, #1
2D6022:  B               loc_2D6064
2D6024:  DCFS 50.0
2D6028:  DCFS 60.0
2D602C:  LDR             R0, [SP,#0x60+var_50]
2D602E:  SUB.W           R8, R0, #0xA
2D6032:  ADDS            R5, R0, #2
2D6034:  CMP.W           R8, #0
2D6038:  MOV.W           R0, #0xFFFFFFFF
2D603C:  IT LE
2D603E:  MOVLE.W         R8, #0
2D6042:  CMP             R5, #0x77 ; 'w'
2D6044:  IT GE
2D6046:  MOVGE           R5, #0x77 ; 'w'
2D6048:  STR             R0, [SP,#0x60+var_4C]
2D604A:  MOVW            R1, #0xFFFF
2D604E:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2D6054)
2D6050:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2D6052:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
2D6054:  LDRH            R0, [R0]; this
2D6056:  CMP             R0, R1
2D6058:  BNE             loc_2D6084
2D605A:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
2D605E:  MOVS            R0, #1
2D6060:  B               loc_2D6086
2D6062:  ADDS            R0, #1; this
2D6064:  LDR.W           R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2D606E)
2D6068:  CMP             R10, R11
2D606A:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2D606C:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
2D606E:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
2D6070:  BNE.W           loc_2D61FC
2D6074:  UXTH            R1, R0
2D6076:  CMP             R1, R8
2D6078:  BNE.W           loc_2D62D0
2D607C:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
2D6080:  MOVS            R0, #1
2D6082:  B               loc_2D62D2
2D6084:  ADDS            R0, #1
2D6086:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2D608E)
2D6088:  CMP             R8, R5
2D608A:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2D608C:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
2D608E:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
2D6090:  BEQ.W           loc_2D62DE
2D6094:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x2D609A)
2D6096:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
2D6098:  LDR.W           R9, [R0]; CWorld::ms_aSectors ...
2D609C:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x2D60A2)
2D609E:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
2D60A0:  LDR             R0, [R0]; CWorld::ms_aSectors ...
2D60A2:  STR             R0, [SP,#0x60+var_40]
2D60A4:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x2D60AA)
2D60A6:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
2D60A8:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
2D60AA:  STR             R0, [SP,#0x60+var_44]
2D60AC:  STRD.W          R8, R5, [SP,#0x60+var_54]
2D60B0:  B               loc_2D6134
2D60B2:  CMP.W           R8, #0
2D60B6:  MOV             R0, R8
2D60B8:  IT LE
2D60BA:  MOVLE           R0, #0
2D60BC:  MOVS            R1, #0x77 ; 'w'
2D60BE:  CMP             R0, #0x77 ; 'w'
2D60C0:  IT GE
2D60C2:  MOVGE           R0, R1
2D60C4:  LDR             R5, [SP,#0x60+var_48]
2D60C6:  RSB.W           R0, R0, R0,LSL#4
2D60CA:  MOV.W           R11, R0,LSL#3
2D60CE:  MOV.W           R0, R8,LSL#4
2D60D2:  UXTB.W          R10, R0
2D60D6:  CMP             R5, #0x77 ; 'w'
2D60D8:  MOV.W           R0, #0x77 ; 'w'
2D60DC:  IT LT
2D60DE:  MOVLT           R0, R5
2D60E0:  MOV             R1, R4; CPtrList *
2D60E2:  ADD.W           R6, R0, R11
2D60E6:  ADD.W           R0, R9, R6,LSL#3; this
2D60EA:  BLX             j__ZN10CStreaming39DeleteRwObjectsNotInFrustumInSectorListER8CPtrListi; CStreaming::DeleteRwObjectsNotInFrustumInSectorList(CPtrList &,int)
2D60EE:  CMP             R0, #0
2D60F0:  BNE.W           loc_2D5C88
2D60F4:  LDR             R0, [SP,#0x60+var_40]
2D60F6:  MOV             R1, R4; CPtrList *
2D60F8:  ADD.W           R0, R0, R6,LSL#3
2D60FC:  ADDS            R0, #4; this
2D60FE:  BLX             j__ZN10CStreaming39DeleteRwObjectsNotInFrustumInSectorListER8CPtrListi; CStreaming::DeleteRwObjectsNotInFrustumInSectorList(CPtrList &,int)
2D6102:  CMP             R0, #0
2D6104:  BNE.W           loc_2D5C88
2D6108:  AND.W           R0, R5, #0xF
2D610C:  LDR             R1, [SP,#0x60+var_44]
2D610E:  ORR.W           R0, R0, R10
2D6112:  ADD.W           R0, R0, R0,LSL#1
2D6116:  ADD.W           R0, R1, R0,LSL#2
2D611A:  MOV             R1, R4; CPtrList *
2D611C:  ADDS            R0, #8; this
2D611E:  BLX             j__ZN10CStreaming39DeleteRwObjectsNotInFrustumInSectorListER8CPtrListi; CStreaming::DeleteRwObjectsNotInFrustumInSectorList(CPtrList &,int)
2D6122:  CMP             R0, #0
2D6124:  BNE.W           loc_2D5C88
2D6128:  LDR             R1, [SP,#0x60+var_3C]
2D612A:  ADDS            R0, R5, #1
2D612C:  CMP             R5, R1
2D612E:  MOV             R5, R0
2D6130:  BLT             loc_2D60D6
2D6132:  B               loc_2D613C
2D6134:  LDR             R0, [SP,#0x60+var_3C]
2D6136:  LDR             R1, [SP,#0x60+var_48]
2D6138:  CMP             R1, R0
2D613A:  BLE             loc_2D60B2
2D613C:  LDR             R0, [SP,#0x60+var_4C]
2D613E:  LDR             R5, [SP,#0x60+var_50]
2D6140:  SUB.W           R8, R8, R0
2D6144:  CMP             R8, R5
2D6146:  BNE             loc_2D6134
2D6148:  LDR             R1, [SP,#0x60+var_54]
2D614A:  CMP             R1, R5
2D614C:  BEQ.W           loc_2D62DE
2D6150:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x2D6156)
2D6152:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
2D6154:  LDR.W           R9, [R0]; CWorld::ms_aSectors ...
2D6158:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x2D615E)
2D615A:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
2D615C:  LDR             R0, [R0]; CWorld::ms_aSectors ...
2D615E:  STR             R0, [SP,#0x60+var_40]
2D6160:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x2D6166)
2D6162:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
2D6164:  LDR.W           R8, [R0]; CWorld::ms_aRepeatSectors ...
2D6168:  STR             R1, [SP,#0x60+var_54]
2D616A:  LDR             R0, [SP,#0x60+var_3C]
2D616C:  LDR             R1, [SP,#0x60+var_48]
2D616E:  CMP             R1, R0
2D6170:  BGT             loc_2D61EE
2D6172:  LDR             R1, [SP,#0x60+var_54]
2D6174:  MOVS            R2, #0x77 ; 'w'; int
2D6176:  CMP             R1, #0
2D6178:  MOV             R0, R1
2D617A:  IT LE
2D617C:  MOVLE           R0, #0
2D617E:  CMP             R0, #0x77 ; 'w'
2D6180:  IT GE
2D6182:  MOVGE           R0, R2
2D6184:  LDR             R6, [SP,#0x60+var_48]
2D6186:  RSB.W           R0, R0, R0,LSL#4
2D618A:  MOV.W           R11, R0,LSL#3
2D618E:  LSLS            R0, R1, #4
2D6190:  UXTB.W          R10, R0
2D6194:  CMP             R6, #0x77 ; 'w'
2D6196:  MOV.W           R0, #0x77 ; 'w'
2D619A:  IT LT
2D619C:  MOVLT           R0, R6
2D619E:  MOV             R1, R4; CPtrList *
2D61A0:  ADD.W           R5, R0, R11
2D61A4:  ADD.W           R0, R9, R5,LSL#3; this
2D61A8:  BLX             j__ZN10CStreaming39DeleteRwObjectsBehindCameraInSectorListER8CPtrListi; CStreaming::DeleteRwObjectsBehindCameraInSectorList(CPtrList &,int)
2D61AC:  CMP             R0, #0
2D61AE:  BNE.W           loc_2D5C88
2D61B2:  LDR             R0, [SP,#0x60+var_40]
2D61B4:  MOV             R1, R4; CPtrList *
2D61B6:  ADD.W           R0, R0, R5,LSL#3
2D61BA:  ADDS            R0, #4; this
2D61BC:  BLX             j__ZN10CStreaming39DeleteRwObjectsBehindCameraInSectorListER8CPtrListi; CStreaming::DeleteRwObjectsBehindCameraInSectorList(CPtrList &,int)
2D61C0:  CMP             R0, #0
2D61C2:  BNE.W           loc_2D5C88
2D61C6:  AND.W           R0, R6, #0xF
2D61CA:  MOV             R1, R4; CPtrList *
2D61CC:  ORR.W           R0, R0, R10
2D61D0:  ADD.W           R0, R0, R0,LSL#1
2D61D4:  ADD.W           R0, R8, R0,LSL#2
2D61D8:  ADDS            R0, #8; this
2D61DA:  BLX             j__ZN10CStreaming39DeleteRwObjectsBehindCameraInSectorListER8CPtrListi; CStreaming::DeleteRwObjectsBehindCameraInSectorList(CPtrList &,int)
2D61DE:  CMP             R0, #0
2D61E0:  BNE.W           loc_2D5C88
2D61E4:  LDR             R1, [SP,#0x60+var_3C]
2D61E6:  ADDS            R0, R6, #1
2D61E8:  CMP             R6, R1
2D61EA:  MOV             R6, R0
2D61EC:  BLT             loc_2D6194
2D61EE:  LDR             R1, [SP,#0x60+var_54]
2D61F0:  LDR             R0, [SP,#0x60+var_4C]
2D61F2:  SUBS            R1, R1, R0
2D61F4:  LDR             R0, [SP,#0x60+var_50]
2D61F6:  CMP             R1, R0
2D61F8:  BNE             loc_2D6168
2D61FA:  B               loc_2D62DE
2D61FC:  LSLS            R0, R6, #4
2D61FE:  STR             R0, [SP,#0x60+var_5C]
2D6200:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x2D6206)
2D6202:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
2D6204:  LDR             R0, [R0]; CWorld::ms_aSectors ...
2D6206:  STR             R0, [SP,#0x60+var_40]
2D6208:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x2D620E)
2D620A:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
2D620C:  LDR             R0, [R0]; CWorld::ms_aSectors ...
2D620E:  STR             R0, [SP,#0x60+var_44]
2D6210:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x2D6216)
2D6212:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
2D6214:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
2D6216:  STRD.W          R6, R0, [SP,#0x60+var_4C]
2D621A:  STRD.W          R10, R11, [SP,#0x60+var_58]
2D621E:  B               loc_2D62A8
2D6220:  CMP.W           R10, #0
2D6224:  MOV             R11, R10
2D6226:  IT LE
2D6228:  MOVLE.W         R11, #0
2D622C:  MOVS            R0, #0x77 ; 'w'
2D622E:  CMP.W           R11, #0x77 ; 'w'
2D6232:  AND.W           R9, R10, #0xF
2D6236:  IT GE
2D6238:  MOVGE           R11, R0
2D623A:  LDR.W           R8, [SP,#0x60+var_5C]
2D623E:  LDR             R6, [SP,#0x60+var_4C]
2D6240:  CMP             R6, #0x77 ; 'w'
2D6242:  MOV.W           R0, #0x77 ; 'w'
2D6246:  IT LT
2D6248:  MOVLT           R0, R6
2D624A:  MOV             R1, R4; CPtrList *
2D624C:  RSB.W           R0, R0, R0,LSL#4
2D6250:  ADD.W           R5, R11, R0,LSL#3
2D6254:  LDR             R0, [SP,#0x60+var_40]
2D6256:  ADD.W           R0, R0, R5,LSL#3; this
2D625A:  BLX             j__ZN10CStreaming39DeleteRwObjectsNotInFrustumInSectorListER8CPtrListi; CStreaming::DeleteRwObjectsNotInFrustumInSectorList(CPtrList &,int)
2D625E:  CMP             R0, #0
2D6260:  BNE.W           loc_2D5C88
2D6264:  LDR             R0, [SP,#0x60+var_44]
2D6266:  MOV             R1, R4; CPtrList *
2D6268:  ADD.W           R0, R0, R5,LSL#3
2D626C:  ADDS            R0, #4; this
2D626E:  BLX             j__ZN10CStreaming39DeleteRwObjectsNotInFrustumInSectorListER8CPtrListi; CStreaming::DeleteRwObjectsNotInFrustumInSectorList(CPtrList &,int)
2D6272:  CMP             R0, #0
2D6274:  BNE.W           loc_2D5C88
2D6278:  AND.W           R0, R8, #0xF0
2D627C:  LDR             R1, [SP,#0x60+var_48]
2D627E:  ORR.W           R0, R0, R9
2D6282:  ADD.W           R0, R0, R0,LSL#1
2D6286:  ADD.W           R0, R1, R0,LSL#2
2D628A:  MOV             R1, R4; CPtrList *
2D628C:  ADDS            R0, #8; this
2D628E:  BLX             j__ZN10CStreaming39DeleteRwObjectsNotInFrustumInSectorListER8CPtrListi; CStreaming::DeleteRwObjectsNotInFrustumInSectorList(CPtrList &,int)
2D6292:  CMP             R0, #0
2D6294:  BNE.W           loc_2D5C88
2D6298:  LDR             R1, [SP,#0x60+var_3C]
2D629A:  ADDS            R0, R6, #1
2D629C:  ADD.W           R8, R8, #0x10
2D62A0:  CMP             R6, R1
2D62A2:  MOV             R6, R0
2D62A4:  BLT             loc_2D6240
2D62A6:  B               loc_2D62AE
2D62A8:  LDR             R0, [SP,#0x60+var_3C]
2D62AA:  CMP             R6, R0
2D62AC:  BLE             loc_2D6220
2D62AE:  LDR             R0, [SP,#0x60+var_50]
2D62B0:  LDR.W           R11, [SP,#0x60+var_54]
2D62B4:  LDR             R6, [SP,#0x60+var_4C]
2D62B6:  SUB.W           R10, R10, R0
2D62BA:  CMP             R10, R11
2D62BC:  BNE             loc_2D62A8
2D62BE:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2D62CC)
2D62C0:  MOVW            R8, #0xFFFF
2D62C4:  LDR.W           R10, [SP,#0x60+var_58]
2D62C8:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2D62CA:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
2D62CC:  LDRH            R0, [R0]; CWorld::ms_nCurrentScanCode
2D62CE:  B               loc_2D6074
2D62D0:  ADDS            R0, #1
2D62D2:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2D62DA)
2D62D4:  CMP             R10, R11
2D62D6:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2D62D8:  LDR             R1, [R1]; unsigned int
2D62DA:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
2D62DC:  BNE             loc_2D6306
2D62DE:  LDR             R0, =(_ZN10CStreaming13ms_memoryUsedE_ptr - 0x2D62E4)
2D62E0:  ADD             R0, PC; _ZN10CStreaming13ms_memoryUsedE_ptr
2D62E2:  LDR             R0, [R0]; CStreaming::ms_memoryUsed ...
2D62E4:  LDR             R0, [R0]; CStreaming::ms_memoryUsed
2D62E6:  CMP             R0, R4
2D62E8:  BLT.W           loc_2D5C88
2D62EC:  LDR             R0, =(_ZN10CStreaming13ms_memoryUsedE_ptr - 0x2D62F2)
2D62EE:  ADD             R0, PC; _ZN10CStreaming13ms_memoryUsedE_ptr
2D62F0:  LDR             R5, [R0]; CStreaming::ms_memoryUsed ...
2D62F2:  MOVS            R0, #0; this
2D62F4:  BLX             j__ZN10CStreaming20RemoveLeastUsedModelEj; CStreaming::RemoveLeastUsedModel(uint)
2D62F8:  LDR             R1, [R5]; CStreaming::ms_memoryUsed
2D62FA:  CMP             R1, R4
2D62FC:  BLT.W           loc_2D5C88
2D6300:  CMP             R0, #0
2D6302:  BNE             loc_2D62F2
2D6304:  B               loc_2D5C88
2D6306:  LSLS            R0, R6, #4
2D6308:  STR             R6, [SP,#0x60+var_4C]
2D630A:  STR             R0, [SP,#0x60+var_48]
2D630C:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x2D6316)
2D630E:  STR.W           R11, [SP,#0x60+var_54]
2D6312:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
2D6314:  LDR.W           R9, [R0]; CWorld::ms_aSectors ...
2D6318:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x2D631E)
2D631A:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
2D631C:  LDR             R0, [R0]; CWorld::ms_aSectors ...
2D631E:  STR             R0, [SP,#0x60+var_40]
2D6320:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x2D6326)
2D6322:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
2D6324:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
2D6326:  STR             R0, [SP,#0x60+var_44]
2D6328:  B               loc_2D63AC
2D632A:  LDR             R0, [SP,#0x60+var_58]
2D632C:  MOVS            R1, #0x77 ; 'w'
2D632E:  CMP             R0, #0
2D6330:  AND.W           R5, R0, #0xF
2D6334:  MOV             R6, R0
2D6336:  IT LE
2D6338:  MOVLE           R6, #0
2D633A:  CMP             R6, #0x77 ; 'w'
2D633C:  IT GE
2D633E:  MOVGE           R6, R1
2D6340:  LDRD.W          R8, R11, [SP,#0x60+var_4C]
2D6344:  CMP.W           R8, #0x77 ; 'w'
2D6348:  MOV.W           R0, #0x77 ; 'w'
2D634C:  IT LT
2D634E:  MOVLT           R0, R8
2D6350:  MOV             R1, R4; CPtrList *
2D6352:  RSB.W           R0, R0, R0,LSL#4
2D6356:  ADD.W           R10, R6, R0,LSL#3
2D635A:  ADD.W           R0, R9, R10,LSL#3; this
2D635E:  BLX             j__ZN10CStreaming39DeleteRwObjectsBehindCameraInSectorListER8CPtrListi; CStreaming::DeleteRwObjectsBehindCameraInSectorList(CPtrList &,int)
2D6362:  CMP             R0, #0
2D6364:  BNE.W           loc_2D5C88
2D6368:  LDR             R0, [SP,#0x60+var_40]
2D636A:  MOV             R1, R4; CPtrList *
2D636C:  ADD.W           R0, R0, R10,LSL#3
2D6370:  ADDS            R0, #4; this
2D6372:  BLX             j__ZN10CStreaming39DeleteRwObjectsBehindCameraInSectorListER8CPtrListi; CStreaming::DeleteRwObjectsBehindCameraInSectorList(CPtrList &,int)
2D6376:  CMP             R0, #0
2D6378:  BNE.W           loc_2D5C88
2D637C:  AND.W           R0, R11, #0xF0
2D6380:  LDR             R1, [SP,#0x60+var_44]
2D6382:  ORRS            R0, R5
2D6384:  ADD.W           R0, R0, R0,LSL#1
2D6388:  ADD.W           R0, R1, R0,LSL#2
2D638C:  MOV             R1, R4; CPtrList *
2D638E:  ADDS            R0, #8; this
2D6390:  BLX             j__ZN10CStreaming39DeleteRwObjectsBehindCameraInSectorListER8CPtrListi; CStreaming::DeleteRwObjectsBehindCameraInSectorList(CPtrList &,int)
2D6394:  CMP             R0, #0
2D6396:  BNE.W           loc_2D5C88
2D639A:  LDR             R1, [SP,#0x60+var_3C]
2D639C:  ADD.W           R0, R8, #1
2D63A0:  ADD.W           R11, R11, #0x10
2D63A4:  CMP             R8, R1
2D63A6:  MOV             R8, R0
2D63A8:  BLT             loc_2D6344
2D63AA:  B               loc_2D63B6
2D63AC:  LDR             R0, [SP,#0x60+var_3C]
2D63AE:  STR.W           R10, [SP,#0x60+var_58]
2D63B2:  CMP             R6, R0
2D63B4:  BLE             loc_2D632A
2D63B6:  LDR.W           R10, [SP,#0x60+var_58]
2D63BA:  LDR             R0, [SP,#0x60+var_50]
2D63BC:  LDR.W           R11, [SP,#0x60+var_54]
2D63C0:  LDR             R6, [SP,#0x60+var_4C]
2D63C2:  SUB.W           R10, R10, R0
2D63C6:  CMP             R10, R11
2D63C8:  BNE             loc_2D63AC
2D63CA:  B               loc_2D62DE
