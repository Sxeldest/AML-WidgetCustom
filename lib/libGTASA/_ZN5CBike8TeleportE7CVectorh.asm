; =========================================================
; Game Engine Function: _ZN5CBike8TeleportE7CVectorh
; Address            : 0x565364 - 0x56542C
; =========================================================

565364:  PUSH            {R4-R7,LR}
565366:  ADD             R7, SP, #0xC
565368:  PUSH.W          {R8}
56536C:  VPUSH           {D8-D10}
565370:  MOV             R8, R3
565372:  MOV             R6, R2
565374:  MOV             R5, R1
565376:  MOV             R4, R0
565378:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
56537C:  LDR             R1, [R4,#0x14]
56537E:  LDR             R0, [R7,#arg_0]
565380:  CBZ             R1, loc_56538E
565382:  STR             R5, [R1,#0x30]
565384:  LDR             R1, [R4,#0x14]
565386:  STR             R6, [R1,#0x34]
565388:  LDR             R1, [R4,#0x14]
56538A:  ADDS            R1, #0x38 ; '8'
56538C:  B               loc_565396
56538E:  ADD.W           R1, R4, #0xC; CEntity *
565392:  STRD.W          R5, R6, [R4,#4]
565396:  CMP             R0, #0
565398:  STR.W           R8, [R1]
56539C:  BEQ             loc_5653E4
56539E:  LDR             R0, [R4,#0x14]; this
5653A0:  CBZ             R0, loc_5653E0
5653A2:  MOVS            R1, #0; x
5653A4:  MOVS            R2, #0; float
5653A6:  MOVS            R3, #0; float
5653A8:  VLDR            S16, [R0,#0x30]
5653AC:  VLDR            S18, [R0,#0x34]
5653B0:  VLDR            S20, [R0,#0x38]
5653B4:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
5653B8:  LDR             R0, [R4,#0x14]
5653BA:  VLDR            S0, [R0,#0x30]
5653BE:  VLDR            S2, [R0,#0x34]
5653C2:  VLDR            S4, [R0,#0x38]
5653C6:  VADD.F32        S0, S16, S0
5653CA:  VADD.F32        S2, S18, S2
5653CE:  VADD.F32        S4, S20, S4
5653D2:  VSTR            S0, [R0,#0x30]
5653D6:  VSTR            S2, [R0,#0x34]
5653DA:  VSTR            S4, [R0,#0x38]
5653DE:  B               loc_5653E4
5653E0:  MOVS            R0, #0
5653E2:  STR             R0, [R4,#0x10]
5653E4:  MOVS            R0, #0
5653E6:  VMOV.I32        Q9, #0
5653EA:  STR.W           R0, [R4,#0x764]
5653EE:  VMOV.F32        Q8, #1.0
5653F2:  STR.W           R0, [R4,#0x768]
5653F6:  STR.W           R0, [R4,#0x820]
5653FA:  STR.W           R0, [R4,#0x824]
5653FE:  STRD.W          R0, R0, [R4,#0x58]
565402:  ADD.W           R0, R4, #0x48 ; 'H'
565406:  VST1.32         {D18-D19}, [R0]
56540A:  ADDW            R0, R4, #0x724
56540E:  VST1.32         {D16-D17}, [R0]
565412:  ADDW            R0, R4, #0x744
565416:  VST1.32         {D18-D19}, [R0]
56541A:  MOV             R0, R4; this
56541C:  VPOP            {D8-D10}
565420:  POP.W           {R8}
565424:  POP.W           {R4-R7,LR}
565428:  B.W             sub_19B3B8
