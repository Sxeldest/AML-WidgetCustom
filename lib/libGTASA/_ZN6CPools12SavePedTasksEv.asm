; =========================================================
; Game Engine Function: _ZN6CPools12SavePedTasksEv
; Address            : 0x489100 - 0x489296
; =========================================================

489100:  PUSH            {R4-R7,LR}
489102:  ADD             R7, SP, #0xC
489104:  PUSH.W          {R8-R11}
489108:  SUB             SP, SP, #0xC
48910A:  BLX             j__ZN14CTaskSequences4SaveEv; CTaskSequences::Save(void)
48910E:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x489118)
489110:  MOV.W           R8, #0
489114:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
489116:  LDR             R0, [R0]; CPools::ms_pPedPool ...
489118:  LDR             R0, [R0]; CPools::ms_pPedPool
48911A:  LDR.W           R10, [R0,#8]
48911E:  CMP.W           R10, #0
489122:  BEQ             loc_489178
489124:  LDR             R1, =(IsMissionSave_ptr - 0x48912E)
489126:  MOV             R3, R10
489128:  MOVS            R6, #0
48912A:  ADD             R1, PC; IsMissionSave_ptr
48912C:  LDR             R2, [R1]; IsMissionSave
48912E:  LDR             R1, [R0,#4]
489130:  LDRB.W          R12, [R2]
489134:  LDRSB.W         R4, [R1]
489138:  CMP             R4, #0
48913A:  BLT             loc_48916E
48913C:  LDR             R4, [R0]
48913E:  ADDS            R4, R4, R6
489140:  BEQ             loc_48916E
489142:  LDR.W           R5, [R4,#0x484]
489146:  LDR.W           R4, [R4,#0x59C]
48914A:  LSLS            R5, R5, #0x17
48914C:  BPL             loc_489156
48914E:  CBZ             R4, loc_489156
489150:  CMP.W           R12, #0
489154:  BEQ             loc_48916E
489156:  CMP             R4, #0
489158:  MOV.W           R5, #0
48915C:  IT EQ
48915E:  MOVEQ           R5, #1
489160:  CMP.W           R12, #0
489164:  MOV             R2, R12
489166:  IT NE
489168:  MOVNE           R2, #1
48916A:  ORRS            R2, R5
48916C:  ADD             R8, R2
48916E:  ADDS            R1, #1
489170:  SUBS            R3, #1
489172:  ADDW            R6, R6, #0x7CC
489176:  BNE             loc_489134
489178:  LDR             R0, =(UseDataFence_ptr - 0x48917E)
48917A:  ADD             R0, PC; UseDataFence_ptr
48917C:  LDR             R0, [R0]; UseDataFence
48917E:  LDRB            R6, [R0]
489180:  CBZ             R6, loc_4891C0
489182:  LDR             R0, =(currentSaveFenceCount_ptr - 0x48918E)
489184:  MOVS            R3, #0
489186:  LDR             R1, =(UseDataFence_ptr - 0x489190)
489188:  LDR             R2, =(DataFence_ptr - 0x489192)
48918A:  ADD             R0, PC; currentSaveFenceCount_ptr
48918C:  ADD             R1, PC; UseDataFence_ptr
48918E:  ADD             R2, PC; DataFence_ptr
489190:  LDR             R0, [R0]; currentSaveFenceCount
489192:  LDR.W           R9, [R1]; UseDataFence
489196:  LDR             R1, [R2]; DataFence
489198:  LDR             R2, [R0]
48919A:  STRB.W          R3, [R9]
48919E:  LDRH            R1, [R1]
4891A0:  ADDS            R3, R2, #1
4891A2:  STR             R3, [R0]
4891A4:  MOVS            R0, #2; byte_count
4891A6:  ADDS            R5, R2, R1
4891A8:  BLX             malloc
4891AC:  MOV             R4, R0
4891AE:  MOVS            R1, #(stderr+2); void *
4891B0:  STRH            R5, [R4]
4891B2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4891B6:  MOV             R0, R4; p
4891B8:  BLX             free
4891BC:  STRB.W          R6, [R9]
4891C0:  MOVS            R0, #4; byte_count
4891C2:  BLX             malloc
4891C6:  MOV             R4, R0
4891C8:  MOVS            R1, #byte_4; void *
4891CA:  STR.W           R8, [R4]
4891CE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4891D2:  MOV             R0, R4; p
4891D4:  BLX             free
4891D8:  CMP.W           R10, #0
4891DC:  BEQ             loc_48928C
4891DE:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x4891EA)
4891E0:  MOVS            R6, #0
4891E2:  MOV.W           R5, #0x440
4891E6:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
4891E8:  LDR             R4, [R0]; CPools::ms_pPedPool ...
4891EA:  LDR             R0, =(IsMissionSave_ptr - 0x4891F0)
4891EC:  ADD             R0, PC; IsMissionSave_ptr
4891EE:  LDR             R0, [R0]; IsMissionSave
4891F0:  STMEA.W         SP, {R0,R4,R10}
4891F4:  LDR             R0, [R4]; CPools::ms_pPedPool
4891F6:  LDR             R1, [R0,#4]
4891F8:  LDRSB           R1, [R1,R6]
4891FA:  CMP             R1, #0
4891FC:  BLT             loc_489282
4891FE:  LDR.W           R11, [R0]
489202:  ADD.W           R8, R11, R5
489206:  CMP.W           R8, #0x440
48920A:  BEQ             loc_489282
48920C:  LDR.W           R1, [R8,#0x44]
489210:  LDR.W           R0, [R8,#0x15C]
489214:  LSLS            R1, R1, #0x17; CPed *
489216:  BMI             loc_48921A
489218:  CBZ             R0, loc_489222
48921A:  CBZ             R0, loc_489222
48921C:  LDR             R0, [SP,#0x28+var_28]
48921E:  LDRB            R0, [R0]
489220:  CBZ             R0, loc_489282
489222:  SUB.W           R0, R8, #0x440; this
489226:  BLX             j__ZN6CPools9GetPedRefEP4CPed; CPools::GetPedRef(CPed *)
48922A:  MOV             R9, R0
48922C:  MOVS            R0, #4; byte_count
48922E:  LDRB.W          R10, [R8,#8]
489232:  BLX             malloc
489236:  MOV             R4, R0
489238:  CMP.W           R10, #2
48923C:  BNE             loc_48926A
48923E:  MOV             R0, R4; this
489240:  MOVS            R1, #byte_4; void *
489242:  STR.W           R9, [R4]
489246:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48924A:  MOV             R0, R4; p
48924C:  BLX             free
489250:  LDRB.W          R0, [R8,#8]
489254:  LDRD.W          R4, R10, [SP,#0x28+var_24]
489258:  CMP             R0, #2
48925A:  BNE             loc_489282
48925C:  LDR.W           R0, [R11,R5]; this
489260:  CMP             R0, #0
489262:  IT NE
489264:  BLXNE           j__ZN16CPedIntelligence4SaveEv; CPedIntelligence::Save(void)
489268:  B               loc_489282
48926A:  MOV.W           R0, #0xFFFFFFFF
48926E:  MOVS            R1, #byte_4; void *
489270:  STR             R0, [R4]
489272:  MOV             R0, R4; this
489274:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489278:  MOV             R0, R4; p
48927A:  BLX             free
48927E:  LDRD.W          R4, R10, [SP,#0x28+var_24]
489282:  ADDS            R6, #1
489284:  ADDW            R5, R5, #0x7CC
489288:  CMP             R10, R6
48928A:  BNE             loc_4891F4
48928C:  MOVS            R0, #1
48928E:  ADD             SP, SP, #0xC
489290:  POP.W           {R8-R11}
489294:  POP             {R4-R7,PC}
