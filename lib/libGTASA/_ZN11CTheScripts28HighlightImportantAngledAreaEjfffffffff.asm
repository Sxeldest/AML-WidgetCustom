; =========================================================
; Game Engine Function: _ZN11CTheScripts28HighlightImportantAngledAreaEjfffffffff
; Address            : 0x34C3A8 - 0x34C536
; =========================================================

34C3A8:  PUSH            {R4,R6,R7,LR}
34C3AA:  ADD             R7, SP, #8
34C3AC:  VPUSH           {D8-D11}
34C3B0:  SUB             SP, SP, #0x20; float
34C3B2:  VLDR            S1, [R7,#arg_4]
34C3B6:  VMOV            S2, R3
34C3BA:  VMOV            S6, R1
34C3BE:  VLDR            S14, [R7,#arg_8]
34C3C2:  VLDR            S4, [R7,#arg_0]
34C3C6:  VADD.F32        S10, S2, S1
34C3CA:  VMOV.F32        S0, #0.5
34C3CE:  MOV             R4, R0
34C3D0:  VADD.F32        S2, S6, S2
34C3D4:  VMOV            S8, R2; float
34C3D8:  VADD.F32        S12, S4, S14
34C3DC:  VADD.F32        S4, S8, S4
34C3E0:  VMUL.F32        S10, S10, S0
34C3E4:  VMUL.F32        S2, S2, S0
34C3E8:  VMUL.F32        S3, S12, S0
34C3EC:  VMUL.F32        S4, S4, S0
34C3F0:  VCMPE.F32       S10, S2
34C3F4:  VMRS            APSR_nzcv, FPSCR
34C3F8:  BGE             loc_34C404
34C3FA:  VMOV.F32        S16, S2
34C3FE:  VMOV.F32        S2, S10
34C402:  B               loc_34C40E
34C404:  ITE GT
34C406:  VMOVGT.F32      S16, S10
34C40A:  VMOVLE.F32      S16, S2
34C40E:  VCMPE.F32       S3, S4
34C412:  VLDR            S10, [R7,#arg_10]
34C416:  VLDR            S12, [R7,#arg_C]
34C41A:  VMRS            APSR_nzcv, FPSCR
34C41E:  BGE             loc_34C42A
34C420:  VMOV.F32        S18, S4
34C424:  VMOV.F32        S4, S3
34C428:  B               loc_34C434
34C42A:  ITE GT
34C42C:  VMOVGT.F32      S18, S3
34C430:  VMOVLE.F32      S18, S4
34C434:  VADD.F32        S1, S1, S12
34C438:  VADD.F32        S14, S14, S10
34C43C:  VMUL.F32        S1, S1, S0
34C440:  VMUL.F32        S14, S14, S0
34C444:  VCMPE.F32       S1, S2
34C448:  VMRS            APSR_nzcv, FPSCR
34C44C:  BGE             loc_34C454
34C44E:  VMOV.F32        S2, S1
34C452:  B               loc_34C462
34C454:  VCMPE.F32       S1, S16
34C458:  VMRS            APSR_nzcv, FPSCR
34C45C:  IT GT
34C45E:  VMOVGT.F32      S16, S1
34C462:  VCMPE.F32       S14, S4
34C466:  VMRS            APSR_nzcv, FPSCR
34C46A:  BGE             loc_34C472
34C46C:  VMOV.F32        S4, S14
34C470:  B               loc_34C480
34C472:  VCMPE.F32       S14, S18
34C476:  VMRS            APSR_nzcv, FPSCR
34C47A:  IT GT
34C47C:  VMOVGT.F32      S18, S14
34C480:  VADD.F32        S6, S6, S12
34C484:  VADD.F32        S8, S8, S10
34C488:  VMUL.F32        S6, S6, S0
34C48C:  VMUL.F32        S8, S8, S0
34C490:  VCMPE.F32       S6, S2
34C494:  VMRS            APSR_nzcv, FPSCR
34C498:  BGE             loc_34C4A0
34C49A:  VMOV.F32        S2, S6
34C49E:  B               loc_34C4AE
34C4A0:  VCMPE.F32       S6, S16
34C4A4:  VMRS            APSR_nzcv, FPSCR
34C4A8:  IT GT
34C4AA:  VMOVGT.F32      S16, S6
34C4AE:  VCMPE.F32       S8, S4
34C4B2:  VLDR            S6, [R7,#arg_14]
34C4B6:  VMRS            APSR_nzcv, FPSCR
34C4BA:  BGE             loc_34C4C2
34C4BC:  VMOV.F32        S4, S8
34C4C0:  B               loc_34C4D0
34C4C2:  VCMPE.F32       S8, S18
34C4C6:  VMRS            APSR_nzcv, FPSCR
34C4CA:  IT GT
34C4CC:  VMOVGT.F32      S18, S8
34C4D0:  VADD.F32        S4, S18, S4
34C4D4:  VADD.F32        S2, S16, S2
34C4D8:  VMUL.F32        S22, S4, S0
34C4DC:  VMUL.F32        S20, S2, S0
34C4E0:  VLDR            S0, =-100.0
34C4E4:  VCMPE.F32       S6, S0
34C4E8:  VMRS            APSR_nzcv, FPSCR
34C4EC:  VSTR            S22, [SP,#0x48+var_30]
34C4F0:  VSTR            S20, [SP,#0x48+var_34]
34C4F4:  BGT             loc_34C506
34C4F6:  VMOV            R0, S20; this
34C4FA:  VMOV            R1, S22; float
34C4FE:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
34C502:  VMOV            S6, R0
34C506:  VSUB.F32        S0, S22, S18
34C50A:  MOVS            R0, #0
34C50C:  VSUB.F32        S2, S16, S20
34C510:  ADD             R3, SP, #0x48+var_34; int
34C512:  VSTR            S6, [SP,#0x48+var_2C]
34C516:  MOVS            R1, #2; int
34C518:  STR             R0, [SP,#0x48+var_38]
34C51A:  MOVS            R2, #0; int
34C51C:  STRD.W          R0, R0, [SP,#0x48+var_44]; int
34C520:  MOV             R0, R4; this
34C522:  VSTR            S0, [SP,#0x48+var_3C]
34C526:  VSTR            S2, [SP,#0x48+var_48]
34C52A:  BLX             j__ZN8CShadows21RenderIndicatorShadowEjhP9RwTextureP7CVectorffffs; CShadows::RenderIndicatorShadow(uint,uchar,RwTexture *,CVector *,float,float,float,float,short)
34C52E:  ADD             SP, SP, #0x20 ; ' '
34C530:  VPOP            {D8-D11}
34C534:  POP             {R4,R6,R7,PC}
