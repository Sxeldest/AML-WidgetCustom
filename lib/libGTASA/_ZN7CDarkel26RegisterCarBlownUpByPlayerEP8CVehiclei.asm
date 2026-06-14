; =========================================================
; Game Engine Function: _ZN7CDarkel26RegisterCarBlownUpByPlayerEP8CVehiclei
; Address            : 0x3043F0 - 0x3044E0
; =========================================================

3043F0:  PUSH            {R4,R5,R7,LR}
3043F2:  ADD             R7, SP, #8
3043F4:  MOV             R4, R0
3043F6:  LDR             R0, =(_ZN7CDarkel6StatusE_ptr - 0x3043FE)
3043F8:  MOV             R5, R1
3043FA:  ADD             R0, PC; _ZN7CDarkel6StatusE_ptr
3043FC:  LDR             R0, [R0]; CDarkel::Status ...
3043FE:  LDRH            R0, [R0]; CDarkel::Status
304400:  CMP             R0, #4
304402:  IT NE
304404:  CMPNE           R0, #1
304406:  BNE             loc_30446A
304408:  LDR             R0, =(_ZN7CDarkel11ModelToKillE_ptr - 0x30440E)
30440A:  ADD             R0, PC; _ZN7CDarkel11ModelToKillE_ptr
30440C:  LDR             R0, [R0]; CDarkel::ModelToKill ...
30440E:  LDR             R0, [R0]; CDarkel::ModelToKill
304410:  ADDS            R1, R0, #2
304412:  ITT NE
304414:  LDRSHNE.W       R1, [R4,#0x26]
304418:  CMPNE           R0, R1
30441A:  BEQ             loc_30444C
30441C:  LDR             R2, =(_ZN7CDarkel12ModelToKill2E_ptr - 0x304422)
30441E:  ADD             R2, PC; _ZN7CDarkel12ModelToKill2E_ptr
304420:  LDR             R2, [R2]; CDarkel::ModelToKill2 ...
304422:  LDR             R2, [R2]; CDarkel::ModelToKill2
304424:  CMP             R2, R1
304426:  BEQ             loc_30444C
304428:  LDR             R2, =(_ZN7CDarkel12ModelToKill3E_ptr - 0x30442E)
30442A:  ADD             R2, PC; _ZN7CDarkel12ModelToKill3E_ptr
30442C:  LDR             R2, [R2]; CDarkel::ModelToKill3 ...
30442E:  LDR             R2, [R2]; CDarkel::ModelToKill3
304430:  CMP             R2, R1
304432:  BEQ             loc_30444C
304434:  LDR             R2, =(_ZN7CDarkel12ModelToKill4E_ptr - 0x30443A)
304436:  ADD             R2, PC; _ZN7CDarkel12ModelToKill4E_ptr
304438:  LDR             R2, [R2]; CDarkel::ModelToKill4 ...
30443A:  LDR             R2, [R2]; CDarkel::ModelToKill4
30443C:  CMP             R2, R1
30443E:  BEQ             loc_30444C
304440:  ADDS            R0, #3
304442:  ITT EQ
304444:  LDREQ.W         R0, [R4,#0x5A4]
304448:  CMPEQ           R0, #9
30444A:  BNE             loc_30446A
30444C:  LDR             R0, =(_ZN7CDarkel11KillsNeededE_ptr - 0x304454)
30444E:  LDR             R1, =(AudioEngine_ptr - 0x304456)
304450:  ADD             R0, PC; _ZN7CDarkel11KillsNeededE_ptr
304452:  ADD             R1, PC; AudioEngine_ptr
304454:  LDR             R2, [R0]; CDarkel::KillsNeeded ...
304456:  LDR             R0, [R1]; AudioEngine ; this
304458:  LDR             R3, [R2]; CDarkel::KillsNeeded
30445A:  SUBS            R1, R3, #1
30445C:  STR             R1, [R2]; CDarkel::KillsNeeded
30445E:  MOVS            R1, #0x2B ; '+'; int
304460:  MOVS            R2, #0; float
304462:  MOV.W           R3, #0x3F800000; float
304466:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
30446A:  LDR             R0, =(_ZN7CDarkel15RegisteredKillsE_ptr - 0x304474)
30446C:  LDRSH.W         R1, [R4,#0x26]
304470:  ADD             R0, PC; _ZN7CDarkel15RegisteredKillsE_ptr
304472:  LDR             R0, [R0]; CDarkel::RegisteredKills ...
304474:  ADD.W           R0, R0, R1,LSL#2
304478:  LDRH.W          R1, [R0,R5,LSL#1]
30447C:  ADDS            R1, #1
30447E:  STRH.W          R1, [R0,R5,LSL#1]
304482:  MOV             R0, R4; this
304484:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
304488:  SUBS            R0, #1; switch 5 cases
30448A:  CMP             R0, #4
30448C:  BHI             def_30448E; jumptable 0030448E default case
30448E:  TBB.W           [PC,R0]; switch jump
304492:  DCB 3; jump table for switch statement
304493:  DCB 3
304494:  DCB 5
304495:  DCB 7
304496:  DCB 5
304497:  ALIGN 2
304498:  MOVS            R0, #0x7A ; 'z'; jumptable 0030448E cases 1,2
30449A:  B               loc_3044A2
30449C:  MOVS            R0, #0x7C ; '|'; jumptable 0030448E cases 3,5
30449E:  B               loc_3044A2
3044A0:  MOVS            R0, #(dword_78+3); jumptable 0030448E case 4
3044A2:  MOV.W           R1, #0x3F800000; unsigned __int16
3044A6:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
3044AA:  LDR             R0, =(_ZN7CDarkel6StatusE_ptr - 0x3044B0); jumptable 0030448E default case
3044AC:  ADD             R0, PC; _ZN7CDarkel6StatusE_ptr
3044AE:  LDR             R0, [R0]; CDarkel::Status ...
3044B0:  LDRH            R0, [R0]; CDarkel::Status
3044B2:  CMP             R0, #4
3044B4:  ITT NE
3044B6:  CMPNE           R0, #1
3044B8:  POPNE           {R4,R5,R7,PC}
3044BA:  LDRH            R0, [R4,#0x26]
3044BC:  CMP.W           R0, #0x1B0
3044C0:  BNE             loc_3044C6
3044C2:  MOVS            R0, #0xD1
3044C4:  B               loc_3044D4
3044C6:  MOV             R0, R4; this
3044C8:  BLX             j__ZNK8CVehicle23IsLawEnforcementVehicleEv; CVehicle::IsLawEnforcementVehicle(void)
3044CC:  CMP             R0, #0
3044CE:  ITE EQ
3044D0:  MOVEQ           R0, #0xCF
3044D2:  MOVNE           R0, #dword_D0; this
3044D4:  MOV.W           R1, #0x3F800000; unsigned __int16
3044D8:  POP.W           {R4,R5,R7,LR}
3044DC:  B.W             j_j__ZN6CStats13IncrementStatEtf; j_CStats::IncrementStat(ushort,float)
