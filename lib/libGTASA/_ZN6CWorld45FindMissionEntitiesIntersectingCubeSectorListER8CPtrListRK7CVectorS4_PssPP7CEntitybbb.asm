; =========================================================
; Game Engine Function: _ZN6CWorld45FindMissionEntitiesIntersectingCubeSectorListER8CPtrListRK7CVectorS4_PssPP7CEntitybbb
; Address            : 0x42A154 - 0x42A26E
; =========================================================

42A154:  PUSH            {R4-R7,LR}
42A156:  ADD             R7, SP, #0xC
42A158:  PUSH.W          {R8-R11}
42A15C:  LDR             R0, [R0]
42A15E:  CMP             R0, #0
42A160:  BEQ.W           loc_42A268
42A164:  LDR             R4, [R7,#arg_C]
42A166:  MOV.W           R8, #0x448
42A16A:  LDRD.W          LR, R5, [R7,#arg_4]
42A16E:  CMP             R5, #0
42A170:  ORR.W           R10, R5, R4
42A174:  LDR             R4, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x42A180)
42A176:  IT NE
42A178:  MOVNE.W         R8, #0x4A8
42A17C:  ADD             R4, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
42A17E:  LDR.W           R11, [R4]; CWorld::ms_nCurrentScanCode ...
42A182:  LDR             R4, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x42A188)
42A184:  ADD             R4, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
42A186:  LDR.W           R9, [R4]; CModelInfo::ms_modelInfoPtrs ...
42A18A:  LDRD.W          R4, R0, [R0]
42A18E:  LDRH.W          R5, [R11]; CWorld::ms_nCurrentScanCode
42A192:  LDRH            R6, [R4,#0x30]
42A194:  CMP             R6, R5
42A196:  BEQ             loc_42A264
42A198:  CMP.W           R10, #0
42A19C:  STRH            R5, [R4,#0x30]
42A19E:  BEQ             loc_42A1AA
42A1A0:  LDRB.W          R5, [R4,R8]
42A1A4:  CMP             R5, #2
42A1A6:  BEQ             loc_42A1B6
42A1A8:  B               loc_42A264
42A1AA:  LDRB.W          R5, [R4,#0x140]
42A1AE:  ORR.W           R5, R5, #4
42A1B2:  CMP             R5, #6
42A1B4:  BNE             loc_42A264
42A1B6:  LDRSH.W         R5, [R4,#0x26]
42A1BA:  LDR             R6, [R4,#0x14]
42A1BC:  LDR.W           R12, [R9,R5,LSL#2]
42A1C0:  ADD.W           R5, R6, #0x30 ; '0'
42A1C4:  CMP             R6, #0
42A1C6:  LDR.W           R12, [R12,#0x2C]
42A1CA:  IT EQ
42A1CC:  ADDEQ           R5, R4, #4
42A1CE:  VLDR            S2, [R5]
42A1D2:  VLDR            S6, [R1]
42A1D6:  VLDR            S0, [R12,#0x24]
42A1DA:  VADD.F32        S4, S2, S0
42A1DE:  VCMPE.F32       S4, S6
42A1E2:  VMRS            APSR_nzcv, FPSCR
42A1E6:  BLT             loc_42A264
42A1E8:  VSUB.F32        S2, S2, S0
42A1EC:  VLDR            S4, [R2]
42A1F0:  VCMPE.F32       S2, S4
42A1F4:  VMRS            APSR_nzcv, FPSCR
42A1F8:  BGT             loc_42A264
42A1FA:  VLDR            S2, [R5,#4]
42A1FE:  VLDR            S6, [R1,#4]
42A202:  VADD.F32        S4, S0, S2
42A206:  VCMPE.F32       S4, S6
42A20A:  VMRS            APSR_nzcv, FPSCR
42A20E:  BLT             loc_42A264
42A210:  VSUB.F32        S2, S2, S0
42A214:  VLDR            S4, [R2,#4]
42A218:  VCMPE.F32       S2, S4
42A21C:  VMRS            APSR_nzcv, FPSCR
42A220:  BGT             loc_42A264
42A222:  VLDR            S2, [R5,#8]
42A226:  VLDR            S6, [R1,#8]
42A22A:  VADD.F32        S4, S0, S2
42A22E:  VCMPE.F32       S4, S6
42A232:  VMRS            APSR_nzcv, FPSCR
42A236:  BLT             loc_42A264
42A238:  VSUB.F32        S0, S2, S0
42A23C:  VLDR            S2, [R2,#8]
42A240:  VCMPE.F32       S0, S2
42A244:  VMRS            APSR_nzcv, FPSCR
42A248:  BGT             loc_42A264
42A24A:  LDRSH.W         R5, [R3]
42A24E:  LDR             R6, [R7,#arg_0]
42A250:  CMP             R5, R6
42A252:  BGE             loc_42A264
42A254:  CMP.W           LR, #0
42A258:  ITT NE
42A25A:  STRNE.W         R4, [LR,R5,LSL#2]
42A25E:  LDRHNE          R5, [R3]
42A260:  ADDS            R6, R5, #1
42A262:  STRH            R6, [R3]
42A264:  CMP             R0, #0
42A266:  BNE             loc_42A18A
42A268:  POP.W           {R8-R11}
42A26C:  POP             {R4-R7,PC}
