; =========================================================
; Game Engine Function: _ZN8CShadows20CastShadowSectorListER8CPtrListffffP7CVectorffffshhhffPP10CPolyBunchPhi
; Address            : 0x5BB0BC - 0x5BB248
; =========================================================

5BB0BC:  PUSH            {R4-R7,LR}
5BB0BE:  ADD             R7, SP, #0xC
5BB0C0:  PUSH.W          {R8-R11}
5BB0C4:  SUB             SP, SP, #4
5BB0C6:  VPUSH           {D8-D15}
5BB0CA:  SUB             SP, SP, #0x50; int
5BB0CC:  LDR             R6, [R0]
5BB0CE:  CMP             R6, #0
5BB0D0:  BEQ.W           loc_5BB23A
5BB0D4:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x5BB0E6)
5BB0D6:  VMOV            S20, R3
5BB0DA:  LDR.W           R11, [R7,#arg_4]
5BB0DE:  VMOV            S22, R2
5BB0E2:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
5BB0E4:  VLDR            S16, [R7,#arg_2C]
5BB0E8:  VLDR            S18, [R7,#arg_28]
5BB0EC:  VMOV            S24, R1
5BB0F0:  LDR.W           R8, [R0]; CWorld::ms_nCurrentScanCode ...
5BB0F4:  ADD             R4, SP, #0xB0+var_70
5BB0F6:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x5BB100)
5BB0F8:  VLDR            S26, [R7,#arg_14]
5BB0FC:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
5BB0FE:  VLDR            S28, [R7,#arg_10]
5BB102:  VLDR            S30, [R7,#arg_C]
5BB106:  LDR.W           R9, [R0]; CGame::currArea ...
5BB10A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5BB114)
5BB10C:  VLDR            S17, [R7,#arg_8]
5BB110:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5BB112:  VLDR            S19, [R7,#arg_0]
5BB116:  VLDR            S21, =0.97
5BB11A:  LDR.W           R10, [R0]; CModelInfo::ms_modelInfoPtrs ...
5BB11E:  LDRD.W          R5, R6, [R6]
5BB122:  LDRH.W          R0, [R8]; CWorld::ms_nCurrentScanCode
5BB126:  LDRH            R1, [R5,#0x30]
5BB128:  CMP             R1, R0
5BB12A:  BEQ.W           loc_5BB234
5BB12E:  LDR             R1, [R5,#0x1C]
5BB130:  STRH            R0, [R5,#0x30]
5BB132:  AND.W           R0, R1, #0x10001
5BB136:  TEQ.W           R0, #1
5BB13A:  BNE             loc_5BB234
5BB13C:  LDRB.W          R0, [R5,#0x33]
5BB140:  CMP             R0, #0xD
5BB142:  ITT NE
5BB144:  LDRNE.W         R1, [R9]; CGame::currArea
5BB148:  CMPNE           R1, R0
5BB14A:  BNE             loc_5BB234
5BB14C:  LDR             R0, [R5,#0x14]
5BB14E:  CBNZ            R0, loc_5BB160
5BB150:  MOV             R0, R5; this
5BB152:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5BB156:  LDR             R1, [R5,#0x14]; CMatrix *
5BB158:  ADDS            R0, R5, #4; this
5BB15A:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5BB15E:  LDR             R0, [R5,#0x14]
5BB160:  VLDR            S0, [R0,#0x28]
5BB164:  VCMPE.F32       S0, S21
5BB168:  VMRS            APSR_nzcv, FPSCR
5BB16C:  BLE             loc_5BB234
5BB16E:  LDR             R0, [R5]
5BB170:  MOV             R1, R5
5BB172:  LDR             R2, [R0,#0x28]
5BB174:  MOV             R0, R4
5BB176:  BLX             R2
5BB178:  VLDR            S0, [SP,#0xB0+var_68]
5BB17C:  VCMPE.F32       S0, S24
5BB180:  VMRS            APSR_nzcv, FPSCR
5BB184:  BLE             loc_5BB234
5BB186:  VLDR            S0, [SP,#0xB0+var_70]
5BB18A:  VCMPE.F32       S0, S20
5BB18E:  VMRS            APSR_nzcv, FPSCR
5BB192:  BGE             loc_5BB234
5BB194:  VLDR            S0, [SP,#0xB0+var_6C]
5BB198:  VCMPE.F32       S0, S22
5BB19C:  VMRS            APSR_nzcv, FPSCR
5BB1A0:  BLE             loc_5BB234
5BB1A2:  VLDR            S0, [SP,#0xB0+var_64]
5BB1A6:  VCMPE.F32       S0, S19
5BB1AA:  VMRS            APSR_nzcv, FPSCR
5BB1AE:  BGE             loc_5BB234
5BB1B0:  LDRSH.W         R0, [R5,#0x26]
5BB1B4:  LDR             R1, [R5,#0x14]; int
5BB1B6:  VLDR            S0, [R11,#8]
5BB1BA:  LDR.W           R0, [R10,R0,LSL#2]
5BB1BE:  ADD.W           R2, R1, #0x30 ; '0'
5BB1C2:  CMP             R1, #0
5BB1C4:  VSUB.F32        S6, S0, S18
5BB1C8:  LDR             R0, [R0,#0x2C]
5BB1CA:  IT EQ
5BB1CC:  ADDEQ           R2, R5, #4; int
5BB1CE:  VLDR            S2, [R2,#8]
5BB1D2:  VLDR            S4, [R0,#0x14]
5BB1D6:  VADD.F32        S4, S2, S4
5BB1DA:  VCMPE.F32       S6, S4
5BB1DE:  VMRS            APSR_nzcv, FPSCR
5BB1E2:  BGE             loc_5BB234
5BB1E4:  VLDR            S4, [R0,#8]
5BB1E8:  VADD.F32        S2, S2, S4
5BB1EC:  VCMPE.F32       S0, S2
5BB1F0:  VMRS            APSR_nzcv, FPSCR
5BB1F4:  BLE             loc_5BB234
5BB1F6:  LDR             R0, [R7,#arg_30]
5BB1F8:  STR             R0, [SP,#0xB0+var_80]; int
5BB1FA:  LDR             R0, [R7,#arg_34]
5BB1FC:  STR             R0, [SP,#0xB0+var_7C]; int
5BB1FE:  LDR             R0, [R7,#arg_38]
5BB200:  STR             R0, [SP,#0xB0+var_78]; int
5BB202:  LDR             R0, [R7,#arg_18]
5BB204:  VSTR            S18, [SP,#0xB0+var_88]
5BB208:  VSTR            S16, [SP,#0xB0+var_84]
5BB20C:  STR             R0, [SP,#0xB0+var_98]; int
5BB20E:  LDR             R0, [R7,#arg_1C]
5BB210:  STR             R0, [SP,#0xB0+var_94]; int
5BB212:  LDR             R0, [R7,#arg_20]
5BB214:  STR             R0, [SP,#0xB0+var_90]; int
5BB216:  LDR             R0, [R7,#arg_24]
5BB218:  STR             R0, [SP,#0xB0+var_8C]; int
5BB21A:  MOV             R0, R5; int
5BB21C:  VSTR            S17, [SP,#0xB0+var_A8]
5BB220:  VSTR            S30, [SP,#0xB0+var_A4]
5BB224:  VSTR            S28, [SP,#0xB0+var_A0]
5BB228:  VSTR            S26, [SP,#0xB0+var_9C]
5BB22C:  STR.W           R11, [SP,#0xB0+var_AC]; int
5BB230:  BLX.W           j__ZN8CShadows18CastShadowEntityXYEP7CEntityffffP7CVectorffffshhhffPP10CPolyBunchPhi; CShadows::CastShadowEntityXY(CEntity *,float,float,float,float,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,float,CPolyBunch **,uchar *,int)
5BB234:  CMP             R6, #0
5BB236:  BNE.W           loc_5BB11E
5BB23A:  ADD             SP, SP, #0x50 ; 'P'
5BB23C:  VPOP            {D8-D15}
5BB240:  ADD             SP, SP, #4
5BB242:  POP.W           {R8-R11}
5BB246:  POP             {R4-R7,PC}
