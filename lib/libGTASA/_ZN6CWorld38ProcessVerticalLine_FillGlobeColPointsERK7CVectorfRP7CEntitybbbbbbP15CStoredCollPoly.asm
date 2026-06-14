; =========================================================
; Game Engine Function: _ZN6CWorld38ProcessVerticalLine_FillGlobeColPointsERK7CVectorfRP7CEntitybbbbbbP15CStoredCollPoly
; Address            : 0x4263B4 - 0x4264D6
; =========================================================

4263B4:  PUSH            {R4-R7,LR}
4263B6:  ADD             R7, SP, #0xC
4263B8:  PUSH.W          {R8-R11}
4263BC:  SUB             SP, SP, #4
4263BE:  VPUSH           {D8-D10}
4263C2:  SUB             SP, SP, #0x48
4263C4:  MOV             R4, R0
4263C6:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4263D4)
4263C8:  LDRD.W          R9, R10, [R7,#arg_10]
4263CC:  VMOV            S16, R1
4263D0:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4263D2:  MOV             R5, R3
4263D4:  MOV             R8, R2
4263D6:  MOVW            R1, #0xFFFF
4263DA:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
4263DC:  LDRH            R0, [R0]; this
4263DE:  CMP             R0, R1
4263E0:  BEQ             loc_4263E6
4263E2:  ADDS            R0, #1
4263E4:  B               loc_4263EC
4263E6:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
4263EA:  MOVS            R0, #1
4263EC:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4263FA)
4263EE:  MOV.W           R11, #0
4263F2:  LDR             R2, =(FilledColPointIndex_ptr - 0x4263FC)
4263F4:  ADD             R6, SP, #0x80+var_58
4263F6:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4263F8:  ADD             R2, PC; FilledColPointIndex_ptr
4263FA:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
4263FC:  LDR             R2, [R2]; FilledColPointIndex
4263FE:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
426400:  MOV             R1, R4; CVector *
426402:  VLDR            S18, [R4]
426406:  VLDR            S20, [R4,#4]
42640A:  STR.W           R11, [R2]
42640E:  ADD             R2, SP, #0x80+var_64; CVector *
426410:  LDR             R0, [R4]
426412:  VSTR            S20, [SP,#0x80+var_60]
426416:  STR             R0, [SP,#0x80+var_64]
426418:  MOV             R0, R6; this
42641A:  VSTR            S16, [SP,#0x80+var_5C]
42641E:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
426422:  VLDR            S16, =50.0
426426:  VDIV.F32        S0, S18, S16
42642A:  VLDR            S18, =60.0
42642E:  VADD.F32        S0, S0, S18
426432:  VMOV            R0, S0; x
426436:  BLX             floorf
42643A:  VDIV.F32        S0, S20, S16
42643E:  MOV             R4, R0
426440:  VADD.F32        S0, S0, S18
426444:  VMOV            R0, S0; x
426448:  BLX             floorf
42644C:  LDR             R3, [R7,#arg_C]
42644E:  VMOV            S0, R4
426452:  STRD.W          R9, R10, [SP,#0x80+var_6C]
426456:  VMOV            S2, R0
42645A:  STR             R3, [SP,#0x80+var_70]
42645C:  LDR             R3, [R7,#arg_8]
42645E:  STR             R3, [SP,#0x80+var_74]
426460:  LDR             R3, [R7,#arg_4]
426462:  STR             R3, [SP,#0x80+var_78]
426464:  LDR             R3, [R7,#arg_0]
426466:  STR             R3, [SP,#0x80+var_7C]
426468:  STR             R5, [SP,#0x80+var_80]
42646A:  VCVT.S32.F32    S0, S0
42646E:  VCVT.S32.F32    S2, S2
426472:  LDR             R1, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x426478)
426474:  ADD             R1, PC; _ZN6CWorld11ms_aSectorsE_ptr
426476:  LDR             R2, [R1]; CWorld::ms_aSectors ...
426478:  LDR             R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x426486)
42647A:  VMOV            R0, S0
42647E:  VMOV            R5, S2
426482:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
426484:  LDR             R1, [R1]; CWorld::ms_aRepeatSectors ...
426486:  AND.W           R3, R0, #0xF
42648A:  CMP             R0, #0
42648C:  BFI.W           R3, R5, #4, #4
426490:  IT LE
426492:  MOVLE           R0, R11
426494:  CMP             R0, #0x77 ; 'w'
426496:  ADD.W           R3, R3, R3,LSL#1
42649A:  ADD.W           R1, R1, R3,LSL#2
42649E:  MOV.W           R3, #0x77 ; 'w'
4264A2:  IT GE
4264A4:  MOVGE           R0, R3
4264A6:  CMP             R5, #0
4264A8:  IT GT
4264AA:  MOVGT           R11, R5
4264AC:  CMP.W           R11, #0x77 ; 'w'
4264B0:  IT GE
4264B2:  MOVGE           R11, R3
4264B4:  RSB.W           R3, R11, R11,LSL#4
4264B8:  ADD.W           R0, R0, R3,LSL#3
4264BC:  MOV             R3, R8
4264BE:  ADD.W           R0, R2, R0,LSL#3
4264C2:  MOV             R2, R6
4264C4:  BLX             j__ZN6CWorld44ProcessVerticalLineSector_FillGlobeColPointsER7CSectorR13CRepeatSectorRK8CColLineRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLineSector_FillGlobeColPoints(CSector &,CRepeatSector &,CColLine const&,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
4264C8:  ADD             SP, SP, #0x48 ; 'H'
4264CA:  VPOP            {D8-D10}
4264CE:  ADD             SP, SP, #4
4264D0:  POP.W           {R8-R11}
4264D4:  POP             {R4-R7,PC}
