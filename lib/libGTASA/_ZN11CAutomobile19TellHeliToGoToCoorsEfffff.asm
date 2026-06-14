; =========================================================
; Game Engine Function: _ZN11CAutomobile19TellHeliToGoToCoorsEfffff
; Address            : 0x5523A4 - 0x552436
; =========================================================

5523A4:  PUSH            {R4,R6,R7,LR}
5523A6:  ADD             R7, SP, #8
5523A8:  MOVS            R4, #0x14
5523AA:  ADD.W           R12, R0, #0x3F0
5523AE:  STRB.W          R4, [R0,#0x3BE]
5523B2:  MOVS            R4, #0x64 ; 'd'
5523B4:  STRB.W          R4, [R0,#0x3D4]
5523B8:  LDRB.W          R4, [R0,#0x3A]
5523BC:  STM.W           R12, {R1-R3}
5523C0:  MOVS            R1, #3
5523C2:  BFI.W           R4, R1, #3, #0x1D
5523C6:  VLDR            S2, [R7,#arg_4]
5523CA:  ADDW            R1, R0, #0x9BC
5523CE:  STRB.W          R4, [R0,#0x3A]
5523D2:  ADDW            R4, R0, #0x8BC
5523D6:  VSTR            S2, [R1]
5523DA:  ADDW            R1, R0, #0x9C4
5523DE:  VLDR            S2, [R4]
5523E2:  VLDR            S0, [R7,#arg_0]
5523E6:  VCMP.F32        S2, #0.0
5523EA:  VMRS            APSR_nzcv, FPSCR
5523EE:  VSTR            S0, [R1]
5523F2:  BNE             locret_552434
5523F4:  LDR             R1, [R0,#0x14]
5523F6:  LDRD.W          R0, R1, [R1,#0x10]; float
5523FA:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
5523FE:  VLDR            S0, =3.1416
552402:  VMOV            S2, R0
552406:  VADD.F32        S0, S2, S0
55240A:  VLDR            S2, =6.2832
55240E:  VCMPE.F32       S0, S2
552412:  VSTR            S0, [R4]
552416:  VMRS            APSR_nzcv, FPSCR
55241A:  IT LE
55241C:  POPLE           {R4,R6,R7,PC}
55241E:  VLDR            S4, =-6.2832
552422:  VADD.F32        S0, S0, S4
552426:  VCMPE.F32       S0, S2
55242A:  VMRS            APSR_nzcv, FPSCR
55242E:  BGT             loc_552422
552430:  VSTR            S0, [R4]
552434:  POP             {R4,R6,R7,PC}
