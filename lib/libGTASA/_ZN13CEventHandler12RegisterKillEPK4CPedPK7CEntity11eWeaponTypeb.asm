; =========================================================
; Game Engine Function: _ZN13CEventHandler12RegisterKillEPK4CPedPK7CEntity11eWeaponTypeb
; Address            : 0x38438C - 0x384446
; =========================================================

38438C:  PUSH            {R4-R7,LR}
38438E:  ADD             R7, SP, #0xC
384390:  PUSH.W          {R8}
384394:  MOV             R5, R0
384396:  MOV             R8, R3
384398:  MOV             R4, R2
38439A:  MOV             R6, R1
38439C:  CBZ             R5, loc_3843E4
38439E:  CBZ             R6, loc_3843D4
3843A0:  LDRB.W          R0, [R6,#0x3A]
3843A4:  AND.W           R1, R0, #7
3843A8:  CMP             R1, #3
3843AA:  BNE             loc_3843BE
3843AC:  MOV             R0, R6; this
3843AE:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3843B2:  CMP             R5, R6
3843B4:  IT NE
3843B6:  CMPNE           R0, #0
3843B8:  BNE             loc_3843EA
3843BA:  LDRB.W          R0, [R6,#0x3A]
3843BE:  AND.W           R0, R0, #7
3843C2:  CMP             R0, #2
3843C4:  BNE             loc_3843D4
3843C6:  MOV.W           R0, #0xFFFFFFFF; int
3843CA:  MOVS            R1, #0; bool
3843CC:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3843D0:  CMP             R0, R6
3843D2:  BEQ             loc_384434
3843D4:  MOV             R0, R5
3843D6:  MOV             R1, R4
3843D8:  POP.W           {R8}
3843DC:  POP.W           {R4-R7,LR}
3843E0:  B.W             j_j__ZN7CDarkel23RegisterKillNotByPlayerEPK4CPed11eWeaponType; j_CDarkel::RegisterKillNotByPlayer(CPed const*,eWeaponType)
3843E4:  POP.W           {R8}
3843E8:  POP             {R4-R7,PC}
3843EA:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3843FA)
3843EC:  MOV.W           R2, #0x194
3843F0:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x3843FC)
3843F2:  VMOV.F32        S0, #5.0
3843F6:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3843F8:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3843FA:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
3843FC:  LDR             R1, [R1]; CWorld::Players ...
3843FE:  LDR             R0, [R0]; CWorld::PlayerInFocus
384400:  SMLABB.W        R0, R0, R2, R1
384404:  MOV             R2, R8
384406:  VLDR            S2, [R0,#0x148]
38440A:  LDR.W           R1, [R0,#0x140]
38440E:  VADD.F32        S0, S2, S0
384412:  ADDS            R1, #0xA
384414:  STR.W           R1, [R0,#0x140]
384418:  MOV             R1, R4
38441A:  VSTR            S0, [R0,#0x148]
38441E:  MOV             R0, R5
384420:  LDR.W           R3, [R6,#0x59C]
384424:  BLX             j__ZN7CDarkel20RegisterKillByPlayerEPK4CPed11eWeaponTypebi; CDarkel::RegisterKillByPlayer(CPed const*,eWeaponType,bool,int)
384428:  POP.W           {R8}
38442C:  POP.W           {R4-R7,LR}
384430:  B.W             sub_19C44C
384434:  MOVS            R0, #(dword_78+1); this
384436:  MOV.W           R1, #0x3F800000; unsigned __int16
38443A:  POP.W           {R8}
38443E:  POP.W           {R4-R7,LR}
384442:  B.W             j_j__ZN6CStats13IncrementStatEtf; j_CStats::IncrementStat(ushort,float)
