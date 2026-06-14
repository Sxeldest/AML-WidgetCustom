; =========================================================
; Game Engine Function: _ZN15CTouchInterface21LoadDefaultConfigFileEv
; Address            : 0x2AD510 - 0x2AD56A
; =========================================================

2AD510:  PUSH            {R4-R7,LR}
2AD512:  ADD             R7, SP, #0xC
2AD514:  PUSH.W          {R11}
2AD518:  LDR             R0, =(RsGlobal_ptr - 0x2AD524)
2AD51A:  MOVS            R5, #2
2AD51C:  LDR             R4, =(off_662E5C - 0x2AD526); "TouchDefaultTablet4x3.cfg" ...
2AD51E:  MOVS            R6, #0
2AD520:  ADD             R0, PC; RsGlobal_ptr
2AD522:  ADD             R4, PC; off_662E5C
2AD524:  LDR             R0, [R0]; RsGlobal
2AD526:  VLDR            S0, [R0,#4]
2AD52A:  VLDR            S2, [R0,#8]
2AD52E:  VCVT.F32.S32    S2, S2
2AD532:  VCVT.F32.S32    S0, S0
2AD536:  VDIV.F32        S0, S0, S2
2AD53A:  VMOV.F32        S2, #1.5
2AD53E:  VCMPE.F32       S0, S2
2AD542:  VMRS            APSR_nzcv, FPSCR
2AD546:  IT GE
2AD548:  MOVGE           R5, #3
2AD54A:  IT GE
2AD54C:  MOVGE           R6, #1
2AD54E:  BLX             j__Z13OS_SystemFormv; OS_SystemForm(void)
2AD552:  CMP             R0, #1
2AD554:  MOV.W           R1, #(stderr+1); char *
2AD558:  IT EQ
2AD55A:  MOVEQ           R6, R5
2AD55C:  LDR.W           R0, [R4,R6,LSL#2]; this
2AD560:  POP.W           {R11}
2AD564:  POP.W           {R4-R7,LR}
2AD568:  B               _ZN15CTouchInterface12LoadFromFileEPKcb; CTouchInterface::LoadFromFile(char const*,bool)
