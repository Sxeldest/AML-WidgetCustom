; =========================================================
; Game Engine Function: _ZN6CWorld24FindObjectsOfTypeInRangeEjRK7CVectorfbPssPP7CEntitybbbbb
; Address            : 0x428AFC - 0x428FCE
; =========================================================

428AFC:  PUSH            {R4-R7,LR}
428AFE:  ADD             R7, SP, #0xC
428B00:  PUSH.W          {R8-R11}
428B04:  SUB             SP, SP, #4
428B06:  VPUSH           {D8-D12}
428B0A:  SUB             SP, SP, #0x48
428B0C:  MOV             R11, R1
428B0E:  VMOV            S16, R2
428B12:  VLDR            S18, [R11]
428B16:  MOV             R6, R0
428B18:  VLDR            S22, =50.0
428B1C:  MOV             R8, R3
428B1E:  VSUB.F32        S0, S18, S16
428B22:  VLDR            S24, =60.0
428B26:  VLDR            S20, [R11,#4]
428B2A:  VDIV.F32        S0, S0, S22
428B2E:  VADD.F32        S0, S0, S24
428B32:  VMOV            R0, S0; x
428B36:  BLX             floorf
428B3A:  VADD.F32        S0, S18, S16
428B3E:  MOV             R4, R0
428B40:  VSUB.F32        S2, S20, S16
428B44:  VDIV.F32        S0, S0, S22
428B48:  VADD.F32        S0, S0, S24
428B4C:  VDIV.F32        S2, S2, S22
428B50:  VMOV            R0, S0; x
428B54:  VADD.F32        S18, S2, S24
428B58:  BLX             floorf
428B5C:  VADD.F32        S0, S20, S16
428B60:  MOV             R9, R0
428B62:  VMOV            R0, S18; x
428B66:  LDR.W           R5, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x428B72)
428B6A:  VMOV            S20, R4
428B6E:  ADD             R5, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
428B70:  VDIV.F32        S0, S0, S22
428B74:  VADD.F32        S0, S0, S24
428B78:  VMOV            R10, S0
428B7C:  BLX             floorf
428B80:  VMOV            S22, R0
428B84:  MOV             R0, R10; x
428B86:  BLX             floorf
428B8A:  VMOV            S0, R0
428B8E:  LDR             R0, [R5]; CWorld::ms_nCurrentScanCode ...
428B90:  VMOV            S2, R9
428B94:  LDR             R5, [R7,#arg_0]
428B96:  VCVT.S32.F32    S0, S0
428B9A:  VCVT.S32.F32    S18, S2
428B9E:  VCVT.S32.F32    S2, S22
428BA2:  VCVT.S32.F32    S20, S20
428BA6:  LDRH            R0, [R0]; this
428BA8:  VMOV            R1, S0
428BAC:  STR             R1, [SP,#0x90+var_8C]
428BAE:  VMOV            R1, S2
428BB2:  STR             R1, [SP,#0x90+var_84]
428BB4:  MOVW            R1, #0xFFFF
428BB8:  CMP             R0, R1
428BBA:  BEQ             loc_428BC0
428BBC:  ADDS            R0, #1
428BBE:  B               loc_428BC6
428BC0:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
428BC4:  MOVS            R0, #1
428BC6:  LDR.W           R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x428BCE)
428BCA:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
428BCC:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
428BCE:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
428BD0:  MOVS            R0, #0
428BD2:  STRH            R0, [R5]
428BD4:  LDR             R0, [SP,#0x90+var_8C]
428BD6:  LDR             R1, [SP,#0x90+var_84]
428BD8:  CMP             R1, R0
428BDA:  BGT.W           loc_428FC0
428BDE:  VMOV            R0, S20
428BE2:  LDR.W           R9, [R7,#arg_8]
428BE6:  VMUL.F32        S0, S16, S16
428BEA:  STR             R0, [SP,#0x90+var_88]
428BEC:  VMOV            R0, S18
428BF0:  STR             R0, [SP,#0x90+var_64]
428BF2:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x428BFA)
428BF6:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
428BF8:  LDR             R0, [R0]; CWorld::ms_aSectors ...
428BFA:  STR             R0, [SP,#0x90+var_70]
428BFC:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x428C04)
428C00:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
428C02:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
428C04:  STR             R0, [SP,#0x90+var_60]
428C06:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x428C0E)
428C0A:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
428C0C:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
428C0E:  STR             R0, [SP,#0x90+var_74]
428C10:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x428C18)
428C14:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
428C16:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
428C18:  STR             R0, [SP,#0x90+var_4C]
428C1A:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x428C22)
428C1E:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
428C20:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
428C22:  STR             R0, [SP,#0x90+var_78]
428C24:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x428C2C)
428C28:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
428C2A:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
428C2C:  STR             R0, [SP,#0x90+var_50]
428C2E:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x428C36)
428C32:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
428C34:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
428C36:  STR             R0, [SP,#0x90+var_7C]
428C38:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x428C40)
428C3C:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
428C3E:  LDR.W           LR, [R0]; CWorld::ms_nCurrentScanCode ...
428C42:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x428C4A)
428C46:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
428C48:  LDR             R0, [R0]; CWorld::ms_aSectors ...
428C4A:  STR             R0, [SP,#0x90+var_80]
428C4C:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x428C54)
428C50:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
428C52:  LDR.W           R10, [R0]; CWorld::ms_nCurrentScanCode ...
428C56:  LDR             R0, [SP,#0x90+var_88]
428C58:  LDR             R1, [SP,#0x90+var_64]
428C5A:  CMP             R0, R1
428C5C:  BGT.W           loc_428FB2
428C60:  LDR             R1, [SP,#0x90+var_84]
428C62:  MOVS            R0, #0
428C64:  MOVS            R2, #0x77 ; 'w'
428C66:  CMP             R1, #0
428C68:  IT GT
428C6A:  MOVGT           R0, R1
428C6C:  CMP             R0, #0x77 ; 'w'
428C6E:  IT GE
428C70:  MOVGE           R0, R2
428C72:  RSB.W           R0, R0, R0,LSL#4
428C76:  LSLS            R0, R0, #3
428C78:  STR             R0, [SP,#0x90+var_68]
428C7A:  LSLS            R0, R1, #4
428C7C:  UXTB            R0, R0
428C7E:  STR             R0, [SP,#0x90+var_6C]
428C80:  LDR             R0, [SP,#0x90+var_88]
428C82:  MOV             R1, R0
428C84:  AND.W           R0, R1, #0xF
428C88:  STR             R0, [SP,#0x90+var_58]
428C8A:  CMP             R1, #0
428C8C:  MOV.W           R0, #0
428C90:  STR             R1, [SP,#0x90+var_54]
428C92:  IT GT
428C94:  MOVGT           R0, R1
428C96:  MOVS            R1, #0x77 ; 'w'
428C98:  CMP             R0, #0x77 ; 'w'
428C9A:  MOV             R4, R9
428C9C:  IT GE
428C9E:  MOVGE           R0, R1
428CA0:  LDR             R1, [SP,#0x90+var_68]
428CA2:  ADD             R0, R1
428CA4:  STR             R0, [SP,#0x90+var_5C]
428CA6:  LDR             R0, [R7,#arg_C]
428CA8:  LDR             R1, [SP,#0x90+var_60]
428CAA:  CMP             R0, #1
428CAC:  BNE             loc_428D48
428CAE:  LDR             R0, [SP,#0x90+var_70]
428CB0:  LDR             R2, [SP,#0x90+var_5C]
428CB2:  LDR.W           R12, [R0,R2,LSL#3]
428CB6:  B               loc_428CBE
428CB8:  ADDS            R0, R3, #1
428CBA:  STRH            R0, [R1]
428CBC:  LDR             R1, [SP,#0x90+var_60]
428CBE:  CMP.W           R12, #0
428CC2:  BEQ             loc_428D48
428CC4:  LDRD.W          R9, R12, [R12]
428CC8:  LDRH            R0, [R1]
428CCA:  LDRH.W          R3, [R9,#0x30]
428CCE:  CMP             R3, R0
428CD0:  BEQ             loc_428CBE
428CD2:  LDRSH.W         R3, [R9,#0x26]
428CD6:  STRH.W          R0, [R9,#0x30]
428CDA:  CMP             R3, R6
428CDC:  BNE             loc_428CBE
428CDE:  LDR.W           R0, [R9,#0x14]
428CE2:  MOV             R3, R11
428CE4:  VLD1.32         {D16}, [R3]!
428CE8:  ADD.W           R2, R0, #0x30 ; '0'
428CEC:  CMP             R0, #0
428CEE:  IT EQ
428CF0:  ADDEQ.W         R2, R9, #4
428CF4:  VLDR            S2, [R3]
428CF8:  VLD1.32         {D17}, [R2]!
428CFC:  CMP.W           R8, #0
428D00:  VSUB.F32        D16, D16, D17
428D04:  VLDR            S4, [R2]
428D08:  VSUB.F32        S2, S2, S4
428D0C:  VMUL.F32        D2, D16, D16
428D10:  VADD.F32        S4, S4, S5
428D14:  VMUL.F32        S2, S2, S2
428D18:  VADD.F32        S2, S4, S2
428D1C:  IT NE
428D1E:  VMOVNE.F32      S2, S4
428D22:  VCMPE.F32       S2, S0
428D26:  VMRS            APSR_nzcv, FPSCR
428D2A:  BGE             loc_428CBE
428D2C:  LDRSH.W         R3, [R5]
428D30:  LDR             R0, [R7,#arg_4]
428D32:  CMP             R3, R0
428D34:  BGE             loc_428CBE
428D36:  MOV             R0, R4
428D38:  CBZ             R0, loc_428D44
428D3A:  STR.W           R9, [R0,R3,LSL#2]
428D3E:  MOV             R1, R5
428D40:  LDRH            R3, [R1]
428D42:  B               loc_428CB8
428D44:  MOV             R1, R5
428D46:  B               loc_428CB8
428D48:  LDR             R0, [SP,#0x90+var_6C]
428D4A:  MOV             R9, R4
428D4C:  LDR             R1, [SP,#0x90+var_58]
428D4E:  ORR.W           R12, R1, R0
428D52:  LDR             R0, [R7,#arg_10]
428D54:  CMP             R0, #1
428D56:  BNE             loc_428DE4
428D58:  LDR             R1, [SP,#0x90+var_74]
428D5A:  ADD.W           R0, R12, R12,LSL#1
428D5E:  LDR.W           R2, [R1,R0,LSL#2]
428D62:  B               loc_428D74
428D64:  CMP.W           R9, #0
428D68:  ITT NE
428D6A:  STRNE.W         R3, [R9,R0,LSL#2]
428D6E:  LDRHNE          R0, [R5]
428D70:  ADDS            R0, #1
428D72:  STRH            R0, [R5]
428D74:  CBZ             R2, loc_428DE4
428D76:  LDRD.W          R3, R2, [R2]
428D7A:  LDR             R0, [SP,#0x90+var_4C]
428D7C:  LDRH            R1, [R3,#0x30]
428D7E:  LDRH            R0, [R0]
428D80:  CMP             R1, R0
428D82:  BEQ             loc_428D74
428D84:  LDRSH.W         R1, [R3,#0x26]
428D88:  STRH            R0, [R3,#0x30]
428D8A:  CMP             R1, R6
428D8C:  BNE             loc_428D74
428D8E:  LDR             R0, [R3,#0x14]
428D90:  MOV             R1, R11
428D92:  VLD1.32         {D16}, [R1]!
428D96:  ADD.W           R4, R0, #0x30 ; '0'
428D9A:  CMP             R0, #0
428D9C:  IT EQ
428D9E:  ADDEQ           R4, R3, #4
428DA0:  VLDR            S2, [R1]
428DA4:  VLD1.32         {D17}, [R4]!
428DA8:  CMP.W           R8, #0
428DAC:  VSUB.F32        D16, D16, D17
428DB0:  VLDR            S4, [R4]
428DB4:  VSUB.F32        S2, S2, S4
428DB8:  VMUL.F32        D2, D16, D16
428DBC:  VADD.F32        S4, S4, S5
428DC0:  VMUL.F32        S2, S2, S2
428DC4:  VADD.F32        S2, S4, S2
428DC8:  IT NE
428DCA:  VMOVNE.F32      S2, S4
428DCE:  VCMPE.F32       S2, S0
428DD2:  VMRS            APSR_nzcv, FPSCR
428DD6:  BGE             loc_428D74
428DD8:  LDRSH.W         R0, [R5]
428DDC:  LDR             R1, [R7,#arg_4]
428DDE:  CMP             R0, R1
428DE0:  BGE             loc_428D74
428DE2:  B               loc_428D64
428DE4:  LDR             R0, [R7,#arg_14]
428DE6:  CMP             R0, #1
428DE8:  BNE             loc_428E78
428DEA:  ADD.W           R0, R12, R12,LSL#1
428DEE:  LDR             R1, [SP,#0x90+var_78]
428DF0:  ADD.W           R0, R1, R0,LSL#2
428DF4:  LDR             R2, [R0,#4]
428DF6:  B               loc_428E08
428DF8:  CMP.W           R9, #0
428DFC:  ITT NE
428DFE:  STRNE.W         R3, [R9,R0,LSL#2]
428E02:  LDRHNE          R0, [R5]
428E04:  ADDS            R0, #1
428E06:  STRH            R0, [R5]
428E08:  CBZ             R2, loc_428E78
428E0A:  LDRD.W          R3, R2, [R2]
428E0E:  LDR             R0, [SP,#0x90+var_50]
428E10:  LDRH            R1, [R3,#0x30]
428E12:  LDRH            R0, [R0]
428E14:  CMP             R1, R0
428E16:  BEQ             loc_428E08
428E18:  LDRSH.W         R1, [R3,#0x26]
428E1C:  STRH            R0, [R3,#0x30]
428E1E:  CMP             R1, R6
428E20:  BNE             loc_428E08
428E22:  LDR             R0, [R3,#0x14]
428E24:  MOV             R1, R11
428E26:  VLD1.32         {D16}, [R1]!
428E2A:  ADD.W           R4, R0, #0x30 ; '0'
428E2E:  CMP             R0, #0
428E30:  IT EQ
428E32:  ADDEQ           R4, R3, #4
428E34:  VLDR            S2, [R1]
428E38:  VLD1.32         {D17}, [R4]!
428E3C:  CMP.W           R8, #0
428E40:  VSUB.F32        D16, D16, D17
428E44:  VLDR            S4, [R4]
428E48:  VSUB.F32        S2, S2, S4
428E4C:  VMUL.F32        D2, D16, D16
428E50:  VADD.F32        S4, S4, S5
428E54:  VMUL.F32        S2, S2, S2
428E58:  VADD.F32        S2, S4, S2
428E5C:  IT NE
428E5E:  VMOVNE.F32      S2, S4
428E62:  VCMPE.F32       S2, S0
428E66:  VMRS            APSR_nzcv, FPSCR
428E6A:  BGE             loc_428E08
428E6C:  LDRSH.W         R0, [R5]
428E70:  LDR             R1, [R7,#arg_4]
428E72:  CMP             R0, R1
428E74:  BGE             loc_428E08
428E76:  B               loc_428DF8
428E78:  LDR             R0, [R7,#arg_18]
428E7A:  CMP             R0, #1
428E7C:  BNE             loc_428F14
428E7E:  ADD.W           R0, R12, R12,LSL#1
428E82:  LDR             R1, [SP,#0x90+var_7C]
428E84:  ADD.W           R0, R1, R0,LSL#2
428E88:  LDR             R2, [R0,#8]
428E8A:  B               loc_428EA4
428E8C:  DCFS 50.0
428E90:  DCFS 60.0
428E94:  CMP.W           R9, #0
428E98:  ITT NE
428E9A:  STRNE.W         R3, [R9,R0,LSL#2]
428E9E:  LDRHNE          R0, [R5]
428EA0:  ADDS            R0, #1
428EA2:  STRH            R0, [R5]
428EA4:  CBZ             R2, loc_428F14
428EA6:  LDRD.W          R3, R2, [R2]
428EAA:  LDRH.W          R0, [LR]; CWorld::ms_nCurrentScanCode
428EAE:  LDRH            R1, [R3,#0x30]
428EB0:  CMP             R1, R0
428EB2:  BEQ             loc_428EA4
428EB4:  LDRSH.W         R1, [R3,#0x26]
428EB8:  STRH            R0, [R3,#0x30]
428EBA:  CMP             R1, R6
428EBC:  BNE             loc_428EA4
428EBE:  LDR             R0, [R3,#0x14]
428EC0:  MOV             R1, R11
428EC2:  VLD1.32         {D16}, [R1]!
428EC6:  ADD.W           R4, R0, #0x30 ; '0'
428ECA:  CMP             R0, #0
428ECC:  IT EQ
428ECE:  ADDEQ           R4, R3, #4
428ED0:  VLDR            S2, [R1]
428ED4:  VLD1.32         {D17}, [R4]!
428ED8:  CMP.W           R8, #0
428EDC:  VSUB.F32        D16, D16, D17
428EE0:  VLDR            S4, [R4]
428EE4:  VSUB.F32        S2, S2, S4
428EE8:  VMUL.F32        D2, D16, D16
428EEC:  VADD.F32        S4, S4, S5
428EF0:  VMUL.F32        S2, S2, S2
428EF4:  VADD.F32        S2, S4, S2
428EF8:  IT NE
428EFA:  VMOVNE.F32      S2, S4
428EFE:  VCMPE.F32       S2, S0
428F02:  VMRS            APSR_nzcv, FPSCR
428F06:  BGE             loc_428EA4
428F08:  LDRSH.W         R0, [R5]
428F0C:  LDR             R1, [R7,#arg_4]
428F0E:  CMP             R0, R1
428F10:  BGE             loc_428EA4
428F12:  B               loc_428E94
428F14:  LDR             R0, [R7,#arg_1C]
428F16:  CMP             R0, #1
428F18:  BNE             loc_428FA6
428F1A:  LDR             R1, [SP,#0x90+var_5C]
428F1C:  LDR             R0, [SP,#0x90+var_80]
428F1E:  ADD.W           R0, R0, R1,LSL#3
428F22:  LDR             R2, [R0,#4]
428F24:  B               loc_428F36
428F26:  CMP.W           R9, #0
428F2A:  ITT NE
428F2C:  STRNE.W         R3, [R9,R0,LSL#2]
428F30:  LDRHNE          R0, [R5]
428F32:  ADDS            R0, #1
428F34:  STRH            R0, [R5]
428F36:  CBZ             R2, loc_428FA6
428F38:  LDRD.W          R3, R2, [R2]
428F3C:  LDRH.W          R0, [R10]; CWorld::ms_nCurrentScanCode
428F40:  LDRH            R1, [R3,#0x30]
428F42:  CMP             R1, R0
428F44:  BEQ             loc_428F36
428F46:  LDRSH.W         R1, [R3,#0x26]
428F4A:  STRH            R0, [R3,#0x30]
428F4C:  CMP             R1, R6
428F4E:  BNE             loc_428F36
428F50:  LDR             R0, [R3,#0x14]
428F52:  MOV             R1, R11
428F54:  VLD1.32         {D16}, [R1]!
428F58:  ADD.W           R4, R0, #0x30 ; '0'
428F5C:  CMP             R0, #0
428F5E:  IT EQ
428F60:  ADDEQ           R4, R3, #4
428F62:  VLDR            S2, [R1]
428F66:  VLD1.32         {D17}, [R4]!
428F6A:  CMP.W           R8, #0
428F6E:  VSUB.F32        D16, D16, D17
428F72:  VLDR            S4, [R4]
428F76:  VSUB.F32        S2, S2, S4
428F7A:  VMUL.F32        D2, D16, D16
428F7E:  VADD.F32        S4, S4, S5
428F82:  VMUL.F32        S2, S2, S2
428F86:  VADD.F32        S2, S4, S2
428F8A:  IT NE
428F8C:  VMOVNE.F32      S2, S4
428F90:  VCMPE.F32       S2, S0
428F94:  VMRS            APSR_nzcv, FPSCR
428F98:  BGE             loc_428F36
428F9A:  LDRSH.W         R0, [R5]
428F9E:  LDR             R1, [R7,#arg_4]
428FA0:  CMP             R0, R1
428FA2:  BGE             loc_428F36
428FA4:  B               loc_428F26
428FA6:  LDR             R2, [SP,#0x90+var_54]
428FA8:  LDR             R1, [SP,#0x90+var_64]
428FAA:  ADDS            R0, R2, #1
428FAC:  CMP             R2, R1
428FAE:  BLT.W           loc_428C82
428FB2:  LDR             R2, [SP,#0x90+var_84]
428FB4:  LDR             R1, [SP,#0x90+var_8C]
428FB6:  ADDS            R0, R2, #1
428FB8:  STR             R0, [SP,#0x90+var_84]
428FBA:  CMP             R2, R1
428FBC:  BLT.W           loc_428C56
428FC0:  ADD             SP, SP, #0x48 ; 'H'
428FC2:  VPOP            {D8-D12}
428FC6:  ADD             SP, SP, #4
428FC8:  POP.W           {R8-R11}
428FCC:  POP             {R4-R7,PC}
