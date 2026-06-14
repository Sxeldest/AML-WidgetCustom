; =========================================================
; Game Engine Function: _ZN8CShadows26CastPlayerShadowSectorListER8CPtrListffffP7CVectorffffshhhffPP10CPolyBunchPhi
; Address            : 0x5BAF20 - 0x5BB0AC
; =========================================================

5BAF20:  PUSH            {R4-R7,LR}
5BAF22:  ADD             R7, SP, #0xC
5BAF24:  PUSH.W          {R8-R11}
5BAF28:  SUB             SP, SP, #4
5BAF2A:  VPUSH           {D8-D15}
5BAF2E:  SUB             SP, SP, #0x50; int
5BAF30:  LDR             R6, [R0]
5BAF32:  CMP             R6, #0
5BAF34:  BEQ.W           loc_5BB09E
5BAF38:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x5BAF4A)
5BAF3A:  VMOV            S20, R3
5BAF3E:  LDR.W           R11, [R7,#arg_4]
5BAF42:  VMOV            S22, R2
5BAF46:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
5BAF48:  VLDR            S16, [R7,#arg_2C]
5BAF4C:  VLDR            S18, [R7,#arg_28]
5BAF50:  VMOV            S24, R1
5BAF54:  LDR.W           R8, [R0]; CWorld::ms_nCurrentScanCode ...
5BAF58:  ADD             R4, SP, #0xB0+var_70
5BAF5A:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x5BAF64)
5BAF5C:  VLDR            S26, [R7,#arg_14]
5BAF60:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
5BAF62:  VLDR            S28, [R7,#arg_10]
5BAF66:  VLDR            S30, [R7,#arg_C]
5BAF6A:  LDR.W           R9, [R0]; CGame::currArea ...
5BAF6E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5BAF78)
5BAF70:  VLDR            S17, [R7,#arg_8]
5BAF74:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5BAF76:  VLDR            S19, [R7,#arg_0]
5BAF7A:  VLDR            S21, =0.97
5BAF7E:  LDR.W           R10, [R0]; CModelInfo::ms_modelInfoPtrs ...
5BAF82:  LDRD.W          R5, R6, [R6]
5BAF86:  LDRH.W          R0, [R8]; CWorld::ms_nCurrentScanCode
5BAF8A:  LDRH            R1, [R5,#0x30]
5BAF8C:  CMP             R1, R0
5BAF8E:  ITTT NE
5BAF90:  LDRBNE          R1, [R5,#0x1C]
5BAF92:  STRHNE          R0, [R5,#0x30]
5BAF94:  MOVSNE.W        R0, R1,LSL#31
5BAF98:  BNE             loc_5BAFA0
5BAF9A:  CMP             R6, #0
5BAF9C:  BNE             loc_5BAF82
5BAF9E:  B               loc_5BB09E
5BAFA0:  LDRB.W          R0, [R5,#0x33]
5BAFA4:  CMP             R0, #0xD
5BAFA6:  ITT NE
5BAFA8:  LDRNE.W         R1, [R9]; CGame::currArea
5BAFAC:  CMPNE           R1, R0
5BAFAE:  BNE             loc_5BAF9A
5BAFB0:  LDR             R0, [R5,#0x14]
5BAFB2:  CBNZ            R0, loc_5BAFC4
5BAFB4:  MOV             R0, R5; this
5BAFB6:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5BAFBA:  LDR             R1, [R5,#0x14]; CMatrix *
5BAFBC:  ADDS            R0, R5, #4; this
5BAFBE:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5BAFC2:  LDR             R0, [R5,#0x14]
5BAFC4:  VLDR            S0, [R0,#0x28]
5BAFC8:  VCMPE.F32       S0, S21
5BAFCC:  VMRS            APSR_nzcv, FPSCR
5BAFD0:  BLE             loc_5BAF9A
5BAFD2:  LDR             R0, [R5]
5BAFD4:  MOV             R1, R5
5BAFD6:  LDR             R2, [R0,#0x28]
5BAFD8:  MOV             R0, R4
5BAFDA:  BLX             R2
5BAFDC:  VLDR            S0, [SP,#0xB0+var_68]
5BAFE0:  VCMPE.F32       S0, S24
5BAFE4:  VMRS            APSR_nzcv, FPSCR
5BAFE8:  BLE             loc_5BAF9A
5BAFEA:  VLDR            S0, [SP,#0xB0+var_70]
5BAFEE:  VCMPE.F32       S0, S20
5BAFF2:  VMRS            APSR_nzcv, FPSCR
5BAFF6:  BGE             loc_5BAF9A
5BAFF8:  VLDR            S0, [SP,#0xB0+var_6C]
5BAFFC:  VCMPE.F32       S0, S22
5BB000:  VMRS            APSR_nzcv, FPSCR
5BB004:  BLE             loc_5BAF9A
5BB006:  VLDR            S0, [SP,#0xB0+var_64]
5BB00A:  VCMPE.F32       S0, S19
5BB00E:  VMRS            APSR_nzcv, FPSCR
5BB012:  BGE             loc_5BAF9A
5BB014:  LDRSH.W         R0, [R5,#0x26]
5BB018:  LDR             R1, [R5,#0x14]; int
5BB01A:  VLDR            S0, [R11,#8]
5BB01E:  LDR.W           R0, [R10,R0,LSL#2]
5BB022:  ADD.W           R2, R1, #0x30 ; '0'
5BB026:  CMP             R1, #0
5BB028:  VSUB.F32        S6, S0, S18
5BB02C:  LDR             R0, [R0,#0x2C]
5BB02E:  IT EQ
5BB030:  ADDEQ           R2, R5, #4; int
5BB032:  VLDR            S2, [R2,#8]
5BB036:  VLDR            S4, [R0,#0x14]
5BB03A:  VADD.F32        S4, S2, S4
5BB03E:  VCMPE.F32       S6, S4
5BB042:  VMRS            APSR_nzcv, FPSCR
5BB046:  BGE             loc_5BAF9A
5BB048:  VLDR            S4, [R0,#8]
5BB04C:  VADD.F32        S2, S2, S4
5BB050:  VCMPE.F32       S0, S2
5BB054:  VMRS            APSR_nzcv, FPSCR
5BB058:  BLE             loc_5BAF9A
5BB05A:  LDR             R0, [R7,#arg_30]
5BB05C:  STR             R0, [SP,#0xB0+var_80]; int
5BB05E:  LDR             R0, [R7,#arg_34]
5BB060:  STR             R0, [SP,#0xB0+var_7C]; int
5BB062:  LDR             R0, [R7,#arg_38]
5BB064:  STR             R0, [SP,#0xB0+var_78]; int
5BB066:  LDR             R0, [R7,#arg_18]
5BB068:  VSTR            S18, [SP,#0xB0+var_88]
5BB06C:  VSTR            S16, [SP,#0xB0+var_84]
5BB070:  STR             R0, [SP,#0xB0+var_98]; int
5BB072:  LDR             R0, [R7,#arg_1C]
5BB074:  STR             R0, [SP,#0xB0+var_94]; int
5BB076:  LDR             R0, [R7,#arg_20]
5BB078:  STR             R0, [SP,#0xB0+var_90]; int
5BB07A:  LDR             R0, [R7,#arg_24]
5BB07C:  STR             R0, [SP,#0xB0+var_8C]; int
5BB07E:  MOV             R0, R5; int
5BB080:  VSTR            S17, [SP,#0xB0+var_A8]
5BB084:  VSTR            S30, [SP,#0xB0+var_A4]
5BB088:  VSTR            S28, [SP,#0xB0+var_A0]
5BB08C:  VSTR            S26, [SP,#0xB0+var_9C]
5BB090:  STR.W           R11, [SP,#0xB0+var_AC]; int
5BB094:  BLX.W           j__ZN8CShadows18CastShadowEntityXYEP7CEntityffffP7CVectorffffshhhffPP10CPolyBunchPhi; CShadows::CastShadowEntityXY(CEntity *,float,float,float,float,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,float,CPolyBunch **,uchar *,int)
5BB098:  CMP             R6, #0
5BB09A:  BNE.W           loc_5BAF82
5BB09E:  ADD             SP, SP, #0x50 ; 'P'
5BB0A0:  VPOP            {D8-D15}
5BB0A4:  ADD             SP, SP, #4
5BB0A6:  POP.W           {R8-R11}
5BB0AA:  POP             {R4-R7,PC}
