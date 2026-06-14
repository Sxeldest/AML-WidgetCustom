; =========================================================
; Game Engine Function: _ZN11CTheScripts21DrawDebugAngledSquareEffffffff
; Address            : 0x34C53E - 0x34C64C
; =========================================================

34C53E:  PUSH            {R4-R7,LR}
34C540:  ADD             R7, SP, #0xC
34C542:  PUSH.W          {R8-R11}
34C546:  SUB             SP, SP, #4
34C548:  VPUSH           {D8}
34C54C:  SUB             SP, SP, #0x80
34C54E:  STRD.W          R0, R1, [SP,#0xA8+var_34]
34C552:  MOVS            R0, #0
34C554:  MOVW            R9, #0
34C558:  MOVT            R0, #0xC47A
34C55C:  ADD.W           R10, SP, #0xA8+var_84
34C560:  ADD.W           R8, SP, #0xA8+var_88
34C564:  STR             R0, [SP,#0xA8+var_2C]
34C566:  MOVT            R9, #0x447A
34C56A:  ADD             R0, SP, #0xA8+var_34; CVector *
34C56C:  MOV             R11, R3
34C56E:  MOV             R5, R2
34C570:  MOVS            R6, #0
34C572:  MOVS            R4, #1
34C574:  MOV             R1, R9; int
34C576:  MOV             R2, R10; int
34C578:  MOV             R3, R8; int
34C57A:  STRD.W          R4, R6, [SP,#0xA8+var_A8]; int
34C57E:  STRD.W          R6, R6, [SP,#0xA8+var_A0]; int
34C582:  STRD.W          R4, R6, [SP,#0xA8+var_98]; int
34C586:  STR             R6, [SP,#0xA8+var_90]; int
34C588:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
34C58C:  VMOV.F32        S16, #2.0
34C590:  VLDR            S0, [SP,#0xA8+var_7C]
34C594:  MOVS            R0, #0
34C596:  STR             R5, [SP,#0xA8+var_40]
34C598:  MOVT            R0, #0xC47A
34C59C:  STR.W           R11, [SP,#0xA8+var_3C]
34C5A0:  STR             R0, [SP,#0xA8+var_38]
34C5A2:  MOV             R11, R0
34C5A4:  ADD             R0, SP, #0xA8+var_40; CVector *
34C5A6:  MOV             R1, R9; int
34C5A8:  MOV             R2, R10; int
34C5AA:  MOV             R3, R8; int
34C5AC:  MOV             R5, R9
34C5AE:  MOV             R9, R10
34C5B0:  VADD.F32        S0, S0, S16
34C5B4:  VSTR            S0, [SP,#0xA8+var_2C]
34C5B8:  STRD.W          R4, R6, [SP,#0xA8+var_A8]; int
34C5BC:  STRD.W          R6, R6, [SP,#0xA8+var_A0]; int
34C5C0:  STRD.W          R4, R6, [SP,#0xA8+var_98]; int
34C5C4:  STR             R6, [SP,#0xA8+var_90]; int
34C5C6:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
34C5CA:  VLDR            S0, [SP,#0xA8+var_7C]
34C5CE:  ADD             R0, SP, #0xA8+var_4C; CVector *
34C5D0:  VLDR            S2, [R7,#arg_0]
34C5D4:  MOV             R1, R5; int
34C5D6:  VADD.F32        S0, S0, S16
34C5DA:  VLDR            S4, [R7,#arg_4]
34C5DE:  MOV             R2, R9; int
34C5E0:  MOV             R3, R8; int
34C5E2:  VSTR            S2, [SP,#0xA8+var_4C]
34C5E6:  VSTR            S4, [SP,#0xA8+var_48]
34C5EA:  STR.W           R11, [SP,#0xA8+var_44]
34C5EE:  VSTR            S0, [SP,#0xA8+var_38]
34C5F2:  STRD.W          R4, R6, [SP,#0xA8+var_A8]; int
34C5F6:  STRD.W          R6, R6, [SP,#0xA8+var_A0]; int
34C5FA:  STRD.W          R4, R6, [SP,#0xA8+var_98]; int
34C5FE:  STR             R6, [SP,#0xA8+var_90]; int
34C600:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
34C604:  VLDR            S0, [SP,#0xA8+var_7C]
34C608:  ADD             R0, SP, #0xA8+var_58; CVector *
34C60A:  VLDR            S2, [R7,#arg_8]
34C60E:  MOV             R1, R5; int
34C610:  VADD.F32        S0, S0, S16
34C614:  VLDR            S4, [R7,#arg_C]
34C618:  MOV             R2, R9; int
34C61A:  MOV             R3, R8; int
34C61C:  VSTR            S2, [SP,#0xA8+var_58]
34C620:  VSTR            S4, [SP,#0xA8+var_54]
34C624:  STR.W           R11, [SP,#0xA8+var_50]
34C628:  VSTR            S0, [SP,#0xA8+var_44]
34C62C:  STRD.W          R4, R6, [SP,#0xA8+var_A8]; int
34C630:  STRD.W          R6, R6, [SP,#0xA8+var_A0]; int
34C634:  STRD.W          R4, R6, [SP,#0xA8+var_98]; int
34C638:  STR             R6, [SP,#0xA8+var_90]; int
34C63A:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
34C63E:  ADD             SP, SP, #0x80
34C640:  VPOP            {D8}
34C644:  ADD             SP, SP, #4
34C646:  POP.W           {R8-R11}
34C64A:  POP             {R4-R7,PC}
