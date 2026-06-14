; =========================================================
; Game Engine Function: _ZN6CWorld20FindLodOfTypeInRangeEjRK7CVectorfbPssPP7CEntity
; Address            : 0x4290BC - 0x429262
; =========================================================

4290BC:  PUSH            {R4-R7,LR}
4290BE:  ADD             R7, SP, #0xC
4290C0:  PUSH.W          {R8-R11}
4290C4:  SUB             SP, SP, #4
4290C6:  VPUSH           {D8-D10}
4290CA:  SUB             SP, SP, #0x18
4290CC:  MOV             R5, R1
4290CE:  VMOV            S16, R2
4290D2:  VLDR            S2, [R5,#4]
4290D6:  MOV             R6, R0
4290D8:  VLDR            S8, =200.0
4290DC:  MOV             R4, R3
4290DE:  VADD.F32        S4, S2, S16
4290E2:  VLDR            S0, [R5]
4290E6:  VSUB.F32        S2, S2, S16
4290EA:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4290FC)
4290EC:  VADD.F32        S6, S0, S16
4290F0:  LDR.W           R8, [R7,#arg_0]
4290F4:  VSUB.F32        S0, S0, S16
4290F8:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4290FA:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
4290FC:  VDIV.F32        S4, S4, S8
429100:  VDIV.F32        S6, S6, S8
429104:  VDIV.F32        S2, S2, S8
429108:  VDIV.F32        S0, S0, S8
42910C:  VMOV.F32        S8, #15.0
429110:  VADD.F32        S4, S4, S8
429114:  VADD.F32        S6, S6, S8
429118:  VADD.F32        S2, S2, S8
42911C:  VADD.F32        S0, S0, S8
429120:  VCVT.S32.F32    S4, S4
429124:  VCVT.S32.F32    S18, S6
429128:  VCVT.S32.F32    S2, S2
42912C:  VCVT.S32.F32    S20, S0
429130:  LDRH            R0, [R0]; this
429132:  VMOV            R1, S4
429136:  STR             R1, [SP,#0x50+var_50]
429138:  VMOV            R1, S2
42913C:  STR             R1, [SP,#0x50+var_48]
42913E:  MOVW            R1, #0xFFFF
429142:  CMP             R0, R1
429144:  BEQ             loc_42914A
429146:  ADDS            R0, #1
429148:  B               loc_429150
42914A:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
42914E:  MOVS            R0, #1
429150:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x429156)
429152:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
429154:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
429156:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
429158:  MOVS            R0, #0
42915A:  STRH.W          R0, [R8]
42915E:  LDR             R0, [SP,#0x50+var_50]
429160:  LDR             R1, [SP,#0x50+var_48]
429162:  CMP             R1, R0
429164:  BGT             loc_429254
429166:  VMOV            R0, S20
42916A:  LDR.W           R11, [R7,#arg_4]
42916E:  VMUL.F32        S0, S16, S16
429172:  STR             R0, [SP,#0x50+var_4C]
429174:  VMOV            R0, S18
429178:  STR             R0, [SP,#0x50+var_3C]
42917A:  LDR             R0, =(_ZN6CWorld15ms_aLodPtrListsE_ptr - 0x429180)
42917C:  ADD             R0, PC; _ZN6CWorld15ms_aLodPtrListsE_ptr
42917E:  LDR             R0, [R0]; CWorld::ms_aLodPtrLists ...
429180:  STR             R0, [SP,#0x50+var_44]
429182:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x429188)
429184:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
429186:  LDR             R1, [R0]; CWorld::ms_nCurrentScanCode ...
429188:  LDR             R0, [SP,#0x50+var_4C]
42918A:  LDR             R2, [SP,#0x50+var_3C]
42918C:  CMP             R0, R2
42918E:  BGT             loc_429244
429190:  LDR             R0, [SP,#0x50+var_48]
429192:  LDR.W           R9, [SP,#0x50+var_4C]
429196:  RSB.W           R0, R0, R0,LSL#4
42919A:  LSLS            R0, R0, #1
42919C:  STR             R0, [SP,#0x50+var_40]
42919E:  LDR             R0, [SP,#0x50+var_40]
4291A0:  ADD.W           R3, R9, R0
4291A4:  LDR             R0, [SP,#0x50+var_44]
4291A6:  LDR.W           R12, [R0,R3,LSL#2]
4291AA:  B               loc_4291C2
4291AC:  LDR             R0, [R7,#arg_8]
4291AE:  CMP             R0, #0
4291B0:  ITT NE
4291B2:  STRNE.W         R10, [R0,LR,LSL#2]
4291B6:  LDRHNE.W        LR, [R8]
4291BA:  ADD.W           R0, LR, #1
4291BE:  STRH.W          R0, [R8]
4291C2:  CMP.W           R12, #0
4291C6:  BEQ             loc_429238
4291C8:  LDRD.W          R10, R12, [R12]
4291CC:  LDRH            R3, [R1]; CWorld::ms_nCurrentScanCode
4291CE:  LDRH.W          R0, [R10,#0x30]
4291D2:  CMP             R0, R3
4291D4:  BEQ             loc_4291C2
4291D6:  LDRSH.W         R0, [R10,#0x26]
4291DA:  STRH.W          R3, [R10,#0x30]
4291DE:  CMP             R0, R6
4291E0:  BNE             loc_4291C2
4291E2:  LDR.W           R0, [R10,#0x14]
4291E6:  MOV             R3, R5
4291E8:  VLD1.32         {D16}, [R3]!
4291EC:  ADD.W           R2, R0, #0x30 ; '0'
4291F0:  CMP             R0, #0
4291F2:  IT EQ
4291F4:  ADDEQ.W         R2, R10, #4
4291F8:  VLDR            S2, [R3]
4291FC:  VLD1.32         {D17}, [R2]!
429200:  CMP             R4, #0
429202:  VSUB.F32        D16, D16, D17
429206:  VLDR            S4, [R2]
42920A:  VSUB.F32        S2, S2, S4
42920E:  VMUL.F32        D2, D16, D16
429212:  VADD.F32        S4, S4, S5
429216:  VMUL.F32        S2, S2, S2
42921A:  VADD.F32        S2, S4, S2
42921E:  IT NE
429220:  VMOVNE.F32      S2, S4
429224:  VCMPE.F32       S2, S0
429228:  VMRS            APSR_nzcv, FPSCR
42922C:  ITT LT
42922E:  LDRSHLT.W       LR, [R8]
429232:  CMPLT           LR, R11
429234:  BGE             loc_4291C2
429236:  B               loc_4291AC
429238:  LDR             R2, [SP,#0x50+var_3C]
42923A:  ADD.W           R0, R9, #1
42923E:  CMP             R9, R2
429240:  MOV             R9, R0
429242:  BLT             loc_42919E
429244:  LDR             R0, [SP,#0x50+var_48]
429246:  LDR             R2, [SP,#0x50+var_50]
429248:  MOV             R3, R0
42924A:  CMP             R3, R2
42924C:  ADD.W           R0, R3, #1
429250:  STR             R0, [SP,#0x50+var_48]
429252:  BLT             loc_429188
429254:  ADD             SP, SP, #0x18
429256:  VPOP            {D8-D10}
42925A:  ADD             SP, SP, #4
42925C:  POP.W           {R8-R11}
429260:  POP             {R4-R7,PC}
