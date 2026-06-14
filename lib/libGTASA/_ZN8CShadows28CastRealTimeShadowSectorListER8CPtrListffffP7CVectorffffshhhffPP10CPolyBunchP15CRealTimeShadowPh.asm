; =========================================================
; Game Engine Function: _ZN8CShadows28CastRealTimeShadowSectorListER8CPtrListffffP7CVectorffffshhhffPP10CPolyBunchP15CRealTimeShadowPh
; Address            : 0x5BADB0 - 0x5BAF12
; =========================================================

5BADB0:  PUSH            {R4-R7,LR}
5BADB2:  ADD             R7, SP, #0xC
5BADB4:  PUSH.W          {R8-R11}
5BADB8:  SUB             SP, SP, #4
5BADBA:  VPUSH           {D8-D15}
5BADBE:  SUB             SP, SP, #0x40; int
5BADC0:  LDR             R4, [R0]
5BADC2:  CMP             R4, #0
5BADC4:  BEQ.W           loc_5BAF04
5BADC8:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x5BADDA)
5BADCA:  VMOV            S20, R3
5BADCE:  LDR.W           R8, [R7,#arg_4]
5BADD2:  VMOV            S22, R2
5BADD6:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
5BADD8:  VLDR            S16, [R7,#arg_2C]
5BADDC:  VLDR            S18, [R7,#arg_28]
5BADE0:  VMOV            S24, R1
5BADE4:  LDR.W           R10, [R0]; CWorld::ms_nCurrentScanCode ...
5BADE8:  ADD             R5, SP, #0xA0+var_70
5BADEA:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x5BADF4)
5BADEC:  VLDR            S26, [R7,#arg_14]
5BADF0:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
5BADF2:  VLDR            S28, [R7,#arg_10]
5BADF6:  VLDR            S30, [R7,#arg_C]
5BADFA:  LDR.W           R11, [R0]; CGame::currArea ...
5BADFE:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5BAE08)
5BAE00:  VLDR            S17, [R7,#arg_8]
5BAE04:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5BAE06:  VLDR            S19, [R7,#arg_0]
5BAE0A:  LDR.W           R9, [R0]; CModelInfo::ms_modelInfoPtrs ...
5BAE0E:  LDRD.W          R6, R4, [R4]
5BAE12:  LDRH.W          R0, [R10]; CWorld::ms_nCurrentScanCode
5BAE16:  LDRH            R1, [R6,#0x30]
5BAE18:  CMP             R1, R0
5BAE1A:  BEQ             loc_5BAEFE
5BAE1C:  LDR             R1, [R6,#0x1C]
5BAE1E:  STRH            R0, [R6,#0x30]
5BAE20:  AND.W           R0, R1, #0x10001
5BAE24:  TEQ.W           R0, #1
5BAE28:  BNE             loc_5BAEFE
5BAE2A:  LDRB.W          R0, [R6,#0x33]
5BAE2E:  CMP             R0, #0xD
5BAE30:  ITT NE
5BAE32:  LDRNE.W         R1, [R11]; CGame::currArea
5BAE36:  CMPNE           R1, R0
5BAE38:  BNE             loc_5BAEFE
5BAE3A:  LDR             R0, [R6]
5BAE3C:  MOV             R1, R6
5BAE3E:  LDR             R2, [R0,#0x28]
5BAE40:  MOV             R0, R5
5BAE42:  BLX             R2
5BAE44:  VLDR            S0, [SP,#0xA0+var_68]
5BAE48:  VCMPE.F32       S0, S24
5BAE4C:  VMRS            APSR_nzcv, FPSCR
5BAE50:  BLE             loc_5BAEFE
5BAE52:  VLDR            S0, [SP,#0xA0+var_70]
5BAE56:  VCMPE.F32       S0, S20
5BAE5A:  VMRS            APSR_nzcv, FPSCR
5BAE5E:  BGE             loc_5BAEFE
5BAE60:  VLDR            S0, [SP,#0xA0+var_6C]
5BAE64:  VCMPE.F32       S0, S22
5BAE68:  VMRS            APSR_nzcv, FPSCR
5BAE6C:  BLE             loc_5BAEFE
5BAE6E:  VLDR            S0, [SP,#0xA0+var_64]
5BAE72:  VCMPE.F32       S0, S19
5BAE76:  VMRS            APSR_nzcv, FPSCR
5BAE7A:  BGE             loc_5BAEFE
5BAE7C:  LDRSH.W         R0, [R6,#0x26]
5BAE80:  LDR             R1, [R6,#0x14]
5BAE82:  VLDR            S0, [R8,#8]
5BAE86:  LDR.W           R0, [R9,R0,LSL#2]
5BAE8A:  ADD.W           R2, R1, #0x30 ; '0'
5BAE8E:  CMP             R1, #0
5BAE90:  VSUB.F32        S6, S0, S18
5BAE94:  LDR             R0, [R0,#0x2C]
5BAE96:  IT EQ
5BAE98:  ADDEQ           R2, R6, #4
5BAE9A:  VLDR            S2, [R2,#8]
5BAE9E:  VLDR            S4, [R0,#0x14]
5BAEA2:  VADD.F32        S4, S2, S4
5BAEA6:  VCMPE.F32       S6, S4
5BAEAA:  VMRS            APSR_nzcv, FPSCR
5BAEAE:  BGE             loc_5BAEFE
5BAEB0:  VLDR            S4, [R0,#8]
5BAEB4:  VADD.F32        S2, S2, S4
5BAEB8:  VCMPE.F32       S0, S2
5BAEBC:  VMRS            APSR_nzcv, FPSCR
5BAEC0:  BLE             loc_5BAEFE
5BAEC2:  VMOV            R2, S17; int
5BAEC6:  LDR             R0, [R7,#arg_30]
5BAEC8:  VMOV            R3, S30; int
5BAECC:  STR             R0, [SP,#0xA0+var_80]; int
5BAECE:  LDR             R0, [R7,#arg_34]
5BAED0:  MOV             R1, R8; int
5BAED2:  STR             R0, [SP,#0xA0+var_7C]; CRealTimeShadow *
5BAED4:  LDR             R0, [R7,#arg_38]
5BAED6:  STR             R0, [SP,#0xA0+var_78]
5BAED8:  LDR             R0, [R7,#arg_18]
5BAEDA:  VSTR            S18, [SP,#0xA0+var_88]
5BAEDE:  VSTR            S16, [SP,#0xA0+var_84]
5BAEE2:  STR             R0, [SP,#0xA0+var_98]; int
5BAEE4:  LDR             R0, [R7,#arg_1C]
5BAEE6:  STR             R0, [SP,#0xA0+var_94]; int
5BAEE8:  LDR             R0, [R7,#arg_20]
5BAEEA:  STR             R0, [SP,#0xA0+var_90]; int
5BAEEC:  LDR             R0, [R7,#arg_24]
5BAEEE:  STR             R0, [SP,#0xA0+var_8C]; int
5BAEF0:  MOV             R0, R6; int
5BAEF2:  VSTR            S28, [SP,#0xA0+var_A0]
5BAEF6:  VSTR            S26, [SP,#0xA0+var_9C]
5BAEFA:  BLX.W           j__ZN8CShadows19CastShadowEntityXYZEP7CEntityP7CVectorffffshhhffPP10CPolyBunchP15CRealTimeShadowPh; CShadows::CastShadowEntityXYZ(CEntity *,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,float,CPolyBunch **,CRealTimeShadow *,uchar *)
5BAEFE:  CMP             R4, #0
5BAF00:  BNE.W           loc_5BAE0E
5BAF04:  ADD             SP, SP, #0x40 ; '@'
5BAF06:  VPOP            {D8-D15}
5BAF0A:  ADD             SP, SP, #4
5BAF0C:  POP.W           {R8-R11}
5BAF10:  POP             {R4-R7,PC}
