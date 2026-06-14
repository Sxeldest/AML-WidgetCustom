; =========================================================
; Game Engine Function: _ZN11CAutomobile21ProcessFlyingCarStuffEv
; Address            : 0x5524CC - 0x552554
; =========================================================

5524CC:  LDRB.W          R1, [R0,#0x3A]
5524D0:  LSRS            R1, R1, #3
5524D2:  CMP             R1, #8
5524D4:  BHI             locret_552552
5524D6:  MOVS            R2, #1
5524D8:  LSL.W           R1, R2, R1
5524DC:  MOVW            R2, #0x109
5524E0:  TST             R1, R2
5524E2:  BEQ             locret_552552
5524E4:  LDR             R1, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x5524EA)
5524E6:  ADD             R1, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
5524E8:  LDR             R1, [R1]; CCheat::m_aCheatsActive ...
5524EA:  LDRB.W          R1, [R1,#(byte_79682C - 0x7967F4)]
5524EE:  CBZ             R1, locret_552552
5524F0:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5524F6)
5524F2:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5524F4:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
5524F6:  VLDR            S0, [R1]
5524FA:  VCMPE.F32       S0, #0.0
5524FE:  VMRS            APSR_nzcv, FPSCR
552502:  BLE             locret_552552
552504:  VLDR            S0, [R0,#0x48]
552508:  VLDR            S2, [R0,#0x4C]
55250C:  VMUL.F32        S0, S0, S0
552510:  VLDR            S4, [R0,#0x50]
552514:  VMUL.F32        S2, S2, S2
552518:  VMUL.F32        S4, S4, S4
55251C:  VADD.F32        S0, S0, S2
552520:  VADD.F32        S0, S0, S4
552524:  VSQRT.F32       S0, S0
552528:  VCMPE.F32       S0, #0.0
55252C:  VMRS            APSR_nzcv, FPSCR
552530:  IT LE
552532:  BXLE            LR
552534:  PUSH            {R7,LR}
552536:  MOV             R7, SP
552538:  SUB             SP, SP, #8
55253A:  MOVW            R2, #0x3FF6
55253E:  MOVS            R1, #3; int
552540:  MOVT            R2, #0xC61C; int
552544:  MOV             R3, R2; int
552546:  STRD.W          R2, R2, [SP,#0x10+var_10]; float
55254A:  BLX             j__ZN8CVehicle13FlyingControlE12eFlightModelffff; CVehicle::FlyingControl(eFlightModel,float,float,float,float)
55254E:  ADD             SP, SP, #8
552550:  POP             {R7,PC}
552552:  BX              LR
