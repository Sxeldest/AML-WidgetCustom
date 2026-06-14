; =========================================================
; Game Engine Function: _ZN10CEntryExit18WarpGangWithPlayerEP4CPed
; Address            : 0x3071D4 - 0x3074E6
; =========================================================

3071D4:  PUSH            {R4-R7,LR}
3071D6:  ADD             R7, SP, #0xC
3071D8:  PUSH.W          {R8-R11}
3071DC:  SUB             SP, SP, #4
3071DE:  VPUSH           {D8}
3071E2:  SUB             SP, SP, #0x50
3071E4:  MOV             R11, R1
3071E6:  LDR             R1, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x3071F0)
3071E8:  LDR.W           R0, [R11,#0x444]
3071EC:  ADD             R1, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
3071EE:  LDR             R0, [R0,#0x38]
3071F0:  LDR             R1, [R1]; CPedGroups::ms_activeGroups ...
3071F2:  LDRB            R1, [R1,R0]
3071F4:  CMP             R1, #0
3071F6:  BEQ.W           loc_3074D8
3071FA:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x307204)
3071FC:  MOV.W           R2, #0x2D4
307200:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
307202:  LDR             R1, [R1]; CPedGroups::ms_groups ...
307204:  MLA.W           R0, R0, R2, R1
307208:  MOV             R1, R11; CPed *
30720A:  ADDS            R0, #8; this
30720C:  STR             R0, [SP,#0x78+var_44]
30720E:  BLX             j__ZNK19CPedGroupMembership8IsLeaderEPK4CPed; CPedGroupMembership::IsLeader(CPed const*)
307212:  CMP             R0, #1
307214:  BNE.W           loc_3074D8
307218:  ADD.W           R0, R11, #4
30721C:  STR             R0, [SP,#0x78+var_48]
30721E:  LDR             R0, =(_ZN35CTaskComplexFollowLeaderInFormation10ms_offsetsE_ptr - 0x307230)
307220:  MOV.W           R9, #0xFFFFFFFF
307224:  VLDR            S16, =0.0
307228:  MOV.W           R8, #0
30722C:  ADD             R0, PC; _ZN35CTaskComplexFollowLeaderInFormation10ms_offsetsE_ptr
30722E:  LDR             R0, [R0]; CTaskComplexFollowLeaderInFormation::ms_offsets ...
307230:  STR             R0, [SP,#0x78+var_50]
307232:  LDR             R0, =(_ZN35CTaskComplexFollowLeaderInFormation10ms_offsetsE_ptr - 0x307238)
307234:  ADD             R0, PC; _ZN35CTaskComplexFollowLeaderInFormation10ms_offsetsE_ptr
307236:  LDR             R0, [R0]; CTaskComplexFollowLeaderInFormation::ms_offsets ...
307238:  STR             R0, [SP,#0x78+var_54]
30723A:  LDR             R0, =(_ZN35CTaskComplexFollowLeaderInFormation10ms_offsetsE_ptr - 0x307240)
30723C:  ADD             R0, PC; _ZN35CTaskComplexFollowLeaderInFormation10ms_offsetsE_ptr
30723E:  LDR             R0, [R0]; CTaskComplexFollowLeaderInFormation::ms_offsets ...
307240:  STR             R0, [SP,#0x78+var_58]
307242:  ADD.W           R9, R9, #1
307246:  LDR             R0, [SP,#0x78+var_44]; this
307248:  MOV             R1, R9; int
30724A:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
30724E:  MOV             R5, R0
307250:  CMP             R5, #0
307252:  BEQ.W           loc_3074D0
307256:  CMP.W           R8, #7
30725A:  BGT.W           loc_3074D0
30725E:  CMP             R5, R11
307260:  BEQ.W           loc_3074D0
307264:  LDR.W           R0, [R11,#0x14]
307268:  MOVS            R3, #0
30726A:  LDR.W           R10, [SP,#0x78+var_48]
30726E:  MOVS            R4, #1
307270:  CMP             R0, #0
307272:  IT NE
307274:  ADDNE.W         R10, R0, #0x30 ; '0'
307278:  LDR             R0, [SP,#0x78+var_50]
30727A:  VLDR            S4, [R10,#8]
30727E:  ADD.W           R0, R0, R8,LSL#3
307282:  VLDR            S0, [R10]
307286:  VLDR            S2, [R10,#4]
30728A:  VADD.F32        S4, S4, S16
30728E:  VLDR            S6, [R0]
307292:  VLDR            S8, [R0,#4]
307296:  VADD.F32        S0, S6, S0
30729A:  STR             R3, [SP,#0x78+var_78]
30729C:  VADD.F32        S2, S8, S2
3072A0:  VMOV            R2, S4
3072A4:  VSTR            S4, [SP,#0x78+var_2C]
3072A8:  VMOV            R0, S0
3072AC:  VMOV            R1, S2
3072B0:  VSTR            S2, [SP,#0x78+var_30]
3072B4:  VSTR            S0, [SP,#0x78+var_34]
3072B8:  STRD.W          R4, R4, [SP,#0x78+var_74]
3072BC:  STRD.W          R4, R4, [SP,#0x78+var_6C]
3072C0:  STRD.W          R4, R3, [SP,#0x78+var_64]; bool
3072C4:  MOV             R3, #0x3EB33333
3072CC:  BLX             j__ZN6CWorld22TestSphereAgainstWorldE7CVectorfP7CEntitybbbbbb; CWorld::TestSphereAgainstWorld(CVector,float,CEntity *,bool,bool,bool,bool,bool,bool)
3072D0:  ADD.W           R6, R8, #1
3072D4:  CBNZ            R0, loc_3072F6
3072D6:  MOVS            R0, #0
3072D8:  MOVS            R1, #1
3072DA:  STR             R0, [SP,#0x78+var_78]; bool
3072DC:  MOVS            R2, #(stderr+1); CVector *
3072DE:  STRD.W          R1, R1, [SP,#0x78+var_74]; bool
3072E2:  ADD             R1, SP, #0x78+var_34; CVector *
3072E4:  STRD.W          R0, R0, [SP,#0x78+var_6C]; CColLine *
3072E8:  MOV             R0, R10; this
3072EA:  MOVS            R3, #1; bool
3072EC:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
3072F0:  CMP             R0, #0
3072F2:  BNE.W           loc_307424
3072F6:  CMP.W           R8, #6
3072FA:  BGT.W           loc_3074D8
3072FE:  LDR.W           R0, [R11,#0x14]
307302:  MOVS            R3, #0
307304:  LDR             R4, [SP,#0x78+var_48]
307306:  CMP             R0, #0
307308:  IT NE
30730A:  ADDNE.W         R4, R0, #0x30 ; '0'
30730E:  LDR             R0, [SP,#0x78+var_54]
307310:  VLDR            S4, [R4,#8]
307314:  ADD.W           R0, R0, R6,LSL#3
307318:  VLDR            S0, [R4]
30731C:  VLDR            S2, [R4,#4]
307320:  VADD.F32        S4, S4, S16
307324:  VLDR            S6, [R0]
307328:  MOVS            R6, #1
30732A:  VLDR            S8, [R0,#4]
30732E:  VADD.F32        S0, S6, S0
307332:  STR             R3, [SP,#0x78+var_78]
307334:  VADD.F32        S2, S8, S2
307338:  VMOV            R2, S4
30733C:  VSTR            S4, [SP,#0x78+var_2C]
307340:  VMOV            R0, S0
307344:  VMOV            R1, S2
307348:  VSTR            S2, [SP,#0x78+var_30]
30734C:  VSTR            S0, [SP,#0x78+var_34]
307350:  STRD.W          R6, R6, [SP,#0x78+var_74]
307354:  STRD.W          R6, R6, [SP,#0x78+var_6C]
307358:  STRD.W          R6, R3, [SP,#0x78+var_64]; bool
30735C:  MOV             R3, #0x3EB33333
307364:  BLX             j__ZN6CWorld22TestSphereAgainstWorldE7CVectorfP7CEntitybbbbbb; CWorld::TestSphereAgainstWorld(CVector,float,CEntity *,bool,bool,bool,bool,bool,bool)
307368:  ADD.W           R6, R8, #2
30736C:  CBNZ            R0, loc_30738C
30736E:  MOVS            R0, #0
307370:  MOVS            R1, #1
307372:  STR             R0, [SP,#0x78+var_78]; bool
307374:  MOVS            R2, #(stderr+1); CVector *
307376:  STRD.W          R1, R1, [SP,#0x78+var_74]; bool
30737A:  ADD             R1, SP, #0x78+var_34; CVector *
30737C:  STRD.W          R0, R0, [SP,#0x78+var_6C]; CColLine *
307380:  MOV             R0, R4; this
307382:  MOVS            R3, #1; bool
307384:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
307388:  CMP             R0, #0
30738A:  BNE             loc_307424
30738C:  CMP.W           R8, #5
307390:  BGT.W           loc_3074D8
307394:  LDR.W           R0, [R11,#0x14]
307398:  MOVS            R3, #0
30739A:  LDR             R4, [SP,#0x78+var_48]
30739C:  CMP             R0, #0
30739E:  IT NE
3073A0:  ADDNE.W         R4, R0, #0x30 ; '0'
3073A4:  LDR             R0, [SP,#0x78+var_58]
3073A6:  VLDR            S4, [R4,#8]
3073AA:  ADD.W           R0, R0, R6,LSL#3
3073AE:  VLDR            S0, [R4]
3073B2:  VLDR            S2, [R4,#4]
3073B6:  VADD.F32        S4, S4, S16
3073BA:  VLDR            S6, [R0]
3073BE:  MOVS            R6, #1
3073C0:  VLDR            S8, [R0,#4]
3073C4:  VADD.F32        S0, S6, S0
3073C8:  STR             R3, [SP,#0x78+var_78]
3073CA:  VADD.F32        S2, S8, S2
3073CE:  VMOV            R2, S4
3073D2:  VSTR            S4, [SP,#0x78+var_2C]
3073D6:  VMOV            R0, S0
3073DA:  VMOV            R1, S2
3073DE:  VSTR            S2, [SP,#0x78+var_30]
3073E2:  VSTR            S0, [SP,#0x78+var_34]
3073E6:  STRD.W          R6, R6, [SP,#0x78+var_74]
3073EA:  STRD.W          R6, R6, [SP,#0x78+var_6C]
3073EE:  STRD.W          R6, R3, [SP,#0x78+var_64]; bool
3073F2:  MOV             R3, #0x3EB33333
3073FA:  BLX             j__ZN6CWorld22TestSphereAgainstWorldE7CVectorfP7CEntitybbbbbb; CWorld::TestSphereAgainstWorld(CVector,float,CEntity *,bool,bool,bool,bool,bool,bool)
3073FE:  CMP             R0, #0
307400:  BNE             loc_3074D8
307402:  MOVS            R0, #0
307404:  MOVS            R1, #1
307406:  STR             R0, [SP,#0x78+var_78]; float
307408:  MOVS            R2, #(stderr+1); CVector *
30740A:  STRD.W          R1, R1, [SP,#0x78+var_74]; bool
30740E:  ADD             R1, SP, #0x78+var_34; CVector *
307410:  STRD.W          R0, R0, [SP,#0x78+var_6C]; CColLine *
307414:  MOV             R0, R4; this
307416:  MOVS            R3, #1; bool
307418:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
30741C:  CMP             R0, #1
30741E:  BNE             loc_3074D8
307420:  ADD.W           R6, R8, #3
307424:  STR             R6, [SP,#0x78+var_4C]
307426:  MOV.W           R10, #0
30742A:  LDR             R0, [R5,#0x14]
30742C:  MOV             R8, R11
30742E:  LDR.W           R1, [R11,#0x14]
307432:  ADD.W           R2, R0, #0x30 ; '0'
307436:  CMP             R0, #0
307438:  IT EQ
30743A:  ADDEQ           R2, R5, #4
30743C:  LDR             R0, [SP,#0x78+var_48]
30743E:  CMP             R1, #0
307440:  VLDR            S0, [R2]
307444:  VLDR            S2, [R2,#4]
307448:  IT NE
30744A:  ADDNE.W         R0, R1, #0x30 ; '0'
30744E:  VLDR            S4, [R0]
307452:  VLDR            S6, [R0,#4]
307456:  ADD             R0, SP, #0x78+var_40; this
307458:  VSUB.F32        S0, S4, S0
30745C:  VSTR            S0, [SP,#0x78+var_40]
307460:  VSUB.F32        S0, S6, S2
307464:  STR.W           R10, [SP,#0x78+var_38]
307468:  VSTR            S0, [SP,#0x78+var_3C]
30746C:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
307470:  LDRD.W          R0, R1, [SP,#0x78+var_40]; float
307474:  MOVS            R2, #0; float
307476:  MOVS            R3, #0; float
307478:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
30747C:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
307480:  MOV             R4, R0
307482:  LDR             R0, [R5]
307484:  ADD             R3, SP, #0x78+var_34
307486:  LDM             R3, {R1-R3}
307488:  LDR             R6, [R0,#0x3C]
30748A:  MOV             R0, R5
30748C:  STR.W           R10, [SP,#0x78+var_78]
307490:  BLX             R6
307492:  LDR.W           R0, [R5,#0x440]; this
307496:  MOVS            R1, #0; bool
307498:  BLX             j__ZN16CPedIntelligence16FlushImmediatelyEb; CPedIntelligence::FlushImmediately(bool)
30749C:  LDR             R0, [R5,#0x14]; this
30749E:  VMOV            S0, R4
3074A2:  STR.W           R4, [R5,#0x55C]
3074A6:  CMP             R0, #0
3074A8:  STR.W           R4, [R5,#0x560]
3074AC:  BEQ             loc_3074B6
3074AE:  MOV             R1, R4; x
3074B0:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
3074B4:  B               loc_3074BA
3074B6:  VSTR            S0, [R5,#0x10]
3074BA:  MOV             R11, R8
3074BC:  LDR             R1, [SP,#0x78+var_4C]
3074BE:  LDRB.W          R0, [R11,#0x33]
3074C2:  STRB.W          R0, [R5,#0x33]
3074C6:  LDR.W           R0, [R11,#0x794]
3074CA:  MOV             R8, R1
3074CC:  STR.W           R0, [R5,#0x794]
3074D0:  CMP.W           R9, #6
3074D4:  BLT.W           loc_307242
3074D8:  ADD             SP, SP, #0x50 ; 'P'
3074DA:  VPOP            {D8}
3074DE:  ADD             SP, SP, #4
3074E0:  POP.W           {R8-R11}
3074E4:  POP             {R4-R7,PC}
