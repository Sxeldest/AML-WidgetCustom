; =========================================================
; Game Engine Function: _ZN28CPedDamageResponseCalculator21ComputeWillForceDeathEP4CPedR18CPedDamageResponse
; Address            : 0x3721D4 - 0x37236A
; =========================================================

3721D4:  PUSH            {R4-R7,LR}
3721D6:  ADD             R7, SP, #0xC
3721D8:  PUSH.W          {R8}
3721DC:  MOV             R5, R1
3721DE:  MOV             R4, R0
3721E0:  LDRB.W          R0, [R5,#0x489]
3721E4:  LSLS            R0, R0, #0x1B
3721E6:  BMI.W           loc_3722D4
3721EA:  LDR             R0, [R4,#0xC]
3721EC:  SUB.W           R1, R0, #8; switch 45 cases
3721F0:  MOVS            R0, #0; this
3721F2:  CMP             R1, #0x2C ; ','
3721F4:  BHI.W           def_3721FC; jumptable 003721FC default case, cases 9-15,17-21,37,40-50
3721F8:  ADDW            R6, R5, #0x484
3721FC:  TBB.W           [PC,R1]; switch jump
372200:  DCB 0x86; jump table for switch statement
372201:  DCB 0x83
372202:  DCB 0x83
372203:  DCB 0x83
372204:  DCB 0x83
372205:  DCB 0x83
372206:  DCB 0x83
372207:  DCB 0x83
372208:  DCB 0x5E
372209:  DCB 0x83
37220A:  DCB 0x83
37220B:  DCB 0x83
37220C:  DCB 0x83
37220D:  DCB 0x83
37220E:  DCB 0x17
37220F:  DCB 0x17
372210:  DCB 0x17
372211:  DCB 0x17
372212:  DCB 0x17
372213:  DCB 0x17
372214:  DCB 0x17
372215:  DCB 0x17
372216:  DCB 0x17
372217:  DCB 0x17
372218:  DCB 0x17
372219:  DCB 0x17
37221A:  DCB 0x17
37221B:  DCB 0x5E
37221C:  DCB 0x5E
37221D:  DCB 0x83
37221E:  DCB 0x17
37221F:  DCB 0x5E
372220:  DCB 0x83
372221:  DCB 0x83
372222:  DCB 0x83
372223:  DCB 0x83
372224:  DCB 0x83
372225:  DCB 0x83
372226:  DCB 0x83
372227:  DCB 0x83
372228:  DCB 0x83
372229:  DCB 0x83
37222A:  DCB 0x83
37222B:  DCB 0x5E
37222C:  DCB 0x17
37222D:  ALIGN 2
37222E:  MOV             R0, R5; jumptable 003721FC cases 22-34,38,52
372230:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
372234:  CBNZ            R0, loc_37224A
372236:  LDRB            R0, [R6,#5]
372238:  LSLS            R0, R0, #0x1B
37223A:  BMI             loc_37224A
37223C:  LDR             R0, [R4,#0xC]
37223E:  SUBS            R0, #0x21 ; '!'
372240:  CMP             R0, #2
372242:  BCS             loc_3722DC
372244:  MOV.W           R8, #0
372248:  B               loc_37224E
37224A:  MOV.W           R8, #1
37224E:  LDRB            R0, [R6,#1]
372250:  LSLS            R0, R0, #0x1F
372252:  ITT NE
372254:  LDRNE.W         R0, [R5,#0x590]
372258:  CMPNE           R0, #0
37225A:  BEQ             loc_37226A
37225C:  MOV             R0, R5; this
37225E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
372262:  CBNZ            R0, loc_37226A
372264:  LDRB            R0, [R6,#5]
372266:  LSLS            R0, R0, #0x1B
372268:  BPL             loc_3722AC
37226A:  MOV             R0, R5; this
37226C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
372270:  CBNZ            R0, loc_3722A6
372272:  LDR             R0, [R4]; this
372274:  CBZ             R0, loc_3722A6
372276:  LDRB.W          R1, [R0,#0x3A]
37227A:  AND.W           R1, R1, #7
37227E:  CMP             R1, #3
372280:  BNE             loc_3722A6
372282:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
372286:  CMP             R0, #1
372288:  BNE             loc_3722A6
37228A:  LDR             R0, [R4]
37228C:  LDR.W           R0, [R0,#0x444]
372290:  LDR             R1, [R0,#0x70]
372292:  CMP             R1, #5
372294:  IT NE
372296:  CMPNE.W         R8, #0
37229A:  BEQ             loc_3722AC
37229C:  LDRH            R0, [R0,#0x34]
37229E:  ANDS.W          R0, R0, #8
3722A2:  BEQ             loc_3722D4
3722A4:  B               loc_3722AC
3722A6:  CMP.W           R8, #0
3722AA:  BNE             loc_3722D4
3722AC:  LDR             R1, [R4,#8]
3722AE:  MOVS            R0, #0
3722B0:  CMP             R1, #9
3722B2:  IT EQ
3722B4:  MOVEQ           R0, #1
3722B6:  POP.W           {R8}
3722BA:  POP             {R4-R7,PC}
3722BC:  BLX             j__ZN13CLocalisation8KillPedsEv; jumptable 003721FC cases 16,35,36,39,51
3722C0:  CBZ             R0, loc_3722D4
3722C2:  MOV             R0, R5; this
3722C4:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3722C8:  CMP             R0, #0
3722CA:  ITT EQ
3722CC:  LDRBEQ          R0, [R6,#1]
3722CE:  MOVSEQ.W        R0, R0,LSL#31
3722D2:  BEQ             loc_3722E6
3722D4:  MOVS            R0, #0
3722D6:  POP.W           {R8}
3722DA:  POP             {R4-R7,PC}
3722DC:  BLX             rand
3722E0:  AND.W           R8, R0, #7
3722E4:  B               loc_37224E
3722E6:  VMOV.F32        S0, #1.0
3722EA:  VLDR            S2, [R4,#4]
3722EE:  ADDW            R0, R5, #0x544
3722F2:  VADD.F32        S0, S2, S0
3722F6:  VLDR            S2, [R0]
3722FA:  VCMPE.F32       S0, S2
3722FE:  VMRS            APSR_nzcv, FPSCR
372302:  BLE             loc_3722D4
372304:  MOVS            R0, #1
372306:  POP.W           {R8}; jumptable 003721FC default case, cases 9-15,17-21,37,40-50
37230A:  POP             {R4-R7,PC}
37230C:  LDR             R0, [R4]; jumptable 003721FC case 8
37230E:  CMP             R0, #0
372310:  BEQ             loc_3722D4
372312:  LDRB.W          R1, [R0,#0x3A]
372316:  AND.W           R1, R1, #7
37231A:  CMP             R1, #3
37231C:  BNE             loc_3722D4
37231E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
372322:  CMP             R0, #1
372324:  BNE             loc_3722D4
372326:  LDR             R4, [R4]
372328:  LDR.W           R0, [R4,#0x440]; this
37232C:  BLX             j__ZNK16CPedIntelligence15GetTaskFightingEv; CPedIntelligence::GetTaskFighting(void)
372330:  CMP             R0, #0
372332:  BEQ             loc_3722D4
372334:  LDR.W           R0, [R4,#0x440]; this
372338:  BLX             j__ZNK16CPedIntelligence15GetTaskFightingEv; CPedIntelligence::GetTaskFighting(void)
37233C:  LDRB.W          R0, [R0,#0x24]
372340:  CMP             R0, #0xB
372342:  BNE             loc_3722D4
372344:  LDR.W           R0, [R4,#0x440]; this
372348:  BLX             j__ZNK16CPedIntelligence15GetTaskFightingEv; CPedIntelligence::GetTaskFighting(void)
37234C:  LDRB.W          R0, [R0,#0x25]
372350:  CMP             R0, #2
372352:  BNE             loc_37235E
372354:  BLX             rand
372358:  TST.W           R0, #1
37235C:  BNE             loc_372304
37235E:  BLX             rand
372362:  TST.W           R0, #7
372366:  BNE             loc_3722D4
372368:  B               loc_372304
