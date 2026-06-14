; =========================================================
; Game Engine Function: _ZN10CTrainNode24GetLightingFromCollisionEv
; Address            : 0x57C410 - 0x57C49E
; =========================================================

57C410:  PUSH            {R4,R5,R7,LR}
57C412:  ADD             R7, SP, #8
57C414:  SUB             SP, SP, #0x58
57C416:  MOV             R4, R0
57C418:  LDRB            R0, [R4,#9]
57C41A:  CBZ             R0, loc_57C422
57C41C:  LDRB            R0, [R4,#8]
57C41E:  ADD             SP, SP, #0x58 ; 'X'
57C420:  POP             {R4,R5,R7,PC}
57C422:  LDRSH.W         R0, [R4]
57C426:  VMOV.F32        S0, #0.125
57C42A:  VMOV.F32        S4, #1.0
57C42E:  MOVS            R5, #1
57C430:  MOVS            R1, #0
57C432:  ADD             R2, SP, #0x60+var_40; int
57C434:  VMOV            S2, R0
57C438:  ADD             R3, SP, #0x60+var_44; int
57C43A:  MOVT            R1, #0xC47A; int
57C43E:  VCVT.F32.S32    S2, S2
57C442:  VMUL.F32        S2, S2, S0
57C446:  VSTR            S2, [SP,#0x60+var_14]
57C44A:  LDRSH.W         R0, [R4,#2]
57C44E:  VMOV            S2, R0
57C452:  VCVT.F32.S32    S2, S2
57C456:  VMUL.F32        S2, S2, S0
57C45A:  VSTR            S2, [SP,#0x60+var_10]
57C45E:  LDRSH.W         R0, [R4,#4]
57C462:  VMOV            S2, R0
57C466:  MOVS            R0, #0
57C468:  VCVT.F32.S32    S2, S2
57C46C:  VMUL.F32        S0, S2, S0
57C470:  VADD.F32        S0, S0, S4
57C474:  VSTR            S0, [SP,#0x60+var_C]
57C478:  STRD.W          R5, R0, [SP,#0x60+var_60]; int
57C47C:  STRD.W          R0, R0, [SP,#0x60+var_58]; int
57C480:  STRD.W          R0, R0, [SP,#0x60+var_50]; int
57C484:  STR             R0, [SP,#0x60+var_48]; int
57C486:  ADD             R0, SP, #0x60+var_14; CVector *
57C488:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
57C48C:  CMP             R0, #1
57C48E:  ITEEE NE
57C490:  MOVNE           R0, #0x48 ; 'H'
57C492:  LDRBEQ.W        R0, [SP,#0x60+var_1B]
57C496:  STRBEQ          R5, [R4,#9]
57C498:  STRBEQ          R0, [R4,#8]
57C49A:  ADD             SP, SP, #0x58 ; 'X'
57C49C:  POP             {R4,R5,R7,PC}
