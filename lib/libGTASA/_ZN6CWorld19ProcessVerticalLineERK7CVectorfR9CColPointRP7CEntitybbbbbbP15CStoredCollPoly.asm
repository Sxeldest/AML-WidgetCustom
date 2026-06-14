; =========================================================
; Game Engine Function: _ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly
; Address            : 0x426190 - 0x4262B2
; =========================================================

426190:  PUSH            {R4-R7,LR}
426192:  ADD             R7, SP, #0xC
426194:  PUSH.W          {R8-R11}
426198:  SUB             SP, SP, #4
42619A:  VPUSH           {D8-D10}
42619E:  SUB             SP, SP, #0x50
4261A0:  MOV             R4, R0
4261A2:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4261B0)
4261A4:  LDRD.W          R11, R10, [R7,#arg_14]
4261A8:  VMOV            S16, R1
4261AC:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4261AE:  MOV             R5, R3
4261B0:  MOV             R8, R2
4261B2:  MOVW            R1, #0xFFFF
4261B6:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
4261B8:  LDRH            R0, [R0]; this
4261BA:  CMP             R0, R1
4261BC:  BEQ             loc_4261C2
4261BE:  ADDS            R0, #1
4261C0:  B               loc_4261C8
4261C2:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
4261C6:  MOVS            R0, #1
4261C8:  LDR             R1, =(_ZN6CWorld27ms_iProcessLineNumCrossingsE_ptr - 0x4261D6)
4261CA:  MOVS            R6, #0
4261CC:  LDR             R2, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4261D8)
4261CE:  ADD.W           R9, SP, #0x88+var_58
4261D2:  ADD             R1, PC; _ZN6CWorld27ms_iProcessLineNumCrossingsE_ptr
4261D4:  ADD             R2, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4261D6:  LDR             R1, [R1]; CWorld::ms_iProcessLineNumCrossings ...
4261D8:  LDR             R2, [R2]; CWorld::ms_nCurrentScanCode ...
4261DA:  STR             R6, [R1]; CWorld::ms_iProcessLineNumCrossings
4261DC:  MOV             R1, R4; CVector *
4261DE:  STRH            R0, [R2]; CWorld::ms_nCurrentScanCode
4261E0:  ADD             R2, SP, #0x88+var_64; CVector *
4261E2:  VLDR            S18, [R4]
4261E6:  MOV             R0, R9; this
4261E8:  VLDR            S20, [R4,#4]
4261EC:  VSTR            S20, [SP,#0x88+var_60]
4261F0:  VSTR            S18, [SP,#0x88+var_64]
4261F4:  VSTR            S16, [SP,#0x88+var_5C]
4261F8:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
4261FC:  VLDR            S16, =50.0
426200:  VDIV.F32        S0, S18, S16
426204:  VLDR            S18, =60.0
426208:  VADD.F32        S0, S0, S18
42620C:  VMOV            R0, S0; x
426210:  BLX             floorf
426214:  VDIV.F32        S0, S20, S16
426218:  MOV             R4, R0
42621A:  VADD.F32        S0, S0, S18
42621E:  VMOV            R0, S0; x
426222:  BLX             floorf
426226:  LDR             R3, [R7,#arg_10]
426228:  VMOV            S0, R4
42622C:  STRD.W          R11, R10, [SP,#0x88+var_70]
426230:  VMOV            S2, R0
426234:  STR             R3, [SP,#0x88+var_74]
426236:  LDR             R3, [R7,#arg_C]
426238:  STR             R3, [SP,#0x88+var_78]
42623A:  LDR             R3, [R7,#arg_8]
42623C:  STR             R3, [SP,#0x88+var_7C]
42623E:  LDR             R3, [R7,#arg_4]
426240:  STR             R3, [SP,#0x88+var_80]
426242:  LDR             R3, [R7,#arg_0]
426244:  STR             R3, [SP,#0x88+var_84]
426246:  STR             R5, [SP,#0x88+var_88]
426248:  VCVT.S32.F32    S0, S0
42624C:  VCVT.S32.F32    S2, S2
426250:  LDR             R1, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x426256)
426252:  ADD             R1, PC; _ZN6CWorld11ms_aSectorsE_ptr
426254:  LDR             R2, [R1]; CWorld::ms_aSectors ...
426256:  LDR             R1, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x426264)
426258:  VMOV            R0, S0
42625C:  VMOV            R5, S2
426260:  ADD             R1, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
426262:  LDR             R1, [R1]; CWorld::ms_aRepeatSectors ...
426264:  AND.W           R3, R0, #0xF
426268:  CMP             R0, #0
42626A:  BFI.W           R3, R5, #4, #4
42626E:  IT LE
426270:  MOVLE           R0, R6
426272:  CMP             R0, #0x77 ; 'w'
426274:  ADD.W           R3, R3, R3,LSL#1
426278:  ADD.W           R1, R1, R3,LSL#2
42627C:  MOV.W           R3, #0x77 ; 'w'
426280:  IT GE
426282:  MOVGE           R0, R3
426284:  CMP             R5, #0
426286:  IT GT
426288:  MOVGT           R6, R5
42628A:  CMP             R6, #0x77 ; 'w'
42628C:  IT GE
42628E:  MOVGE           R6, R3
426290:  RSB.W           R3, R6, R6,LSL#4
426294:  ADD.W           R0, R0, R3,LSL#3
426298:  MOV             R3, R8
42629A:  ADD.W           R0, R2, R0,LSL#3
42629E:  MOV             R2, R9
4262A0:  BLX             j__ZN6CWorld25ProcessVerticalLineSectorER7CSectorR13CRepeatSectorRK8CColLineR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLineSector(CSector &,CRepeatSector &,CColLine const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
4262A4:  ADD             SP, SP, #0x50 ; 'P'
4262A6:  VPOP            {D8-D10}
4262AA:  ADD             SP, SP, #4
4262AC:  POP.W           {R8-R11}
4262B0:  POP             {R4-R7,PC}
