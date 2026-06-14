; =========================================================
; Game Engine Function: _ZN8CPickups20DoCollectableEffectsEP7CEntity
; Address            : 0x320454 - 0x3206D8
; =========================================================

320454:  PUSH            {R4-R7,LR}
320456:  ADD             R7, SP, #0xC
320458:  PUSH.W          {R8-R10}
32045C:  VPUSH           {D8-D9}
320460:  SUB             SP, SP, #0x58
320462:  MOV             R4, R0
320464:  LDR             R0, =(TheCamera_ptr - 0x320472)
320466:  LDR.W           R8, [R4,#0x14]
32046A:  ADD.W           R9, R4, #4
32046E:  ADD             R0, PC; TheCamera_ptr
320470:  VMOV.F32        S16, #14.0
320474:  CMP.W           R8, #0
320478:  MOV             R1, R9
32047A:  LDR             R0, [R0]; TheCamera
32047C:  IT NE
32047E:  ADDNE.W         R1, R8, #0x30 ; '0'
320482:  VLDR            D16, [R1]
320486:  LDR             R1, [R1,#8]
320488:  LDR             R2, [R0,#(dword_951FBC - 0x951FA8)]
32048A:  STR             R1, [SP,#0x80+var_30]
32048C:  VSTR            D16, [SP,#0x80+var_38]
320490:  ADD.W           R1, R2, #0x30 ; '0'
320494:  CMP             R2, #0
320496:  VLDR            S0, [SP,#0x80+var_38]
32049A:  IT EQ
32049C:  ADDEQ           R1, R0, #4
32049E:  VLDR            D16, [SP,#0x80+var_38+4]
3204A2:  VLDR            S2, [R1]
3204A6:  VLDR            D17, [R1,#4]
3204AA:  VSUB.F32        S0, S2, S0
3204AE:  VSUB.F32        D16, D17, D16
3204B2:  VMUL.F32        D1, D16, D16
3204B6:  VMUL.F32        S0, S0, S0
3204BA:  VADD.F32        S0, S0, S2
3204BE:  VADD.F32        S0, S0, S3
3204C2:  VSQRT.F32       S18, S0
3204C6:  VCMPE.F32       S18, S16
3204CA:  VMRS            APSR_nzcv, FPSCR
3204CE:  BGE             loc_3205B4
3204D0:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3204DA)
3204D2:  VLDR            S2, =0.0030664
3204D6:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3204D8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3204DA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3204DC:  ADD             R0, R4
3204DE:  BFC.W           R0, #0xB, #0x15
3204E2:  VMOV            S0, R0
3204E6:  VCVT.F32.U32    S0, S0
3204EA:  VMUL.F32        S0, S0, S2
3204EE:  VMOV            R0, S0; x
3204F2:  BLX             sinf
3204F6:  VMOV.F32        S0, #0.5
3204FA:  MOVW            R10, #0
3204FE:  VMOV            S2, R0
320502:  LDR             R0, =(gpShadowExplosionTex_ptr - 0x320510)
320504:  VSUB.F32        S4, S16, S18
320508:  MOV.W           R1, #0x40800000
32050C:  ADD             R0, PC; gpShadowExplosionTex_ptr
32050E:  MOVS            R5, #0
320510:  MOVT            R10, #0x4220
320514:  ADD.W           R8, SP, #0x80+var_38
320518:  LDR             R0, [R0]; gpShadowExplosionTex
32051A:  MOV             R3, R8; int
32051C:  VMUL.F32        S2, S2, S0
320520:  LDR             R2, [R0]; int
320522:  MOV.W           R0, #0x3F800000
320526:  STRD.W          R1, R0, [SP,#0x80+var_60]; float
32052A:  MOV.W           R0, #0xC0000000
32052E:  STRD.W          R10, R5, [SP,#0x80+var_58]; float
320532:  MOVS            R1, #2; int
320534:  STR             R5, [SP,#0x80+var_50]; float
320536:  STR             R5, [SP,#0x80+var_70]; int
320538:  STR             R0, [SP,#0x80+var_74]; CVector *
32053A:  MOV.W           R0, #0x40000000
32053E:  VADD.F32        S0, S2, S0
320542:  VLDR            S2, =255.0
320546:  STRD.W          R5, R5, [SP,#0x80+var_7C]; unsigned __int8
32054A:  VMUL.F32        S0, S4, S0
32054E:  VDIV.F32        S0, S0, S16
320552:  VMUL.F32        S0, S0, S2
320556:  VCVT.U32.F32    S0, S0
32055A:  STR             R0, [SP,#0x80+var_80]; float
32055C:  MOV             R0, R4; int
32055E:  VMOV            R6, S0
320562:  STR             R6, [SP,#0x80+var_64]; unsigned __int8
320564:  STRD.W          R6, R6, [SP,#0x80+var_6C]; float
320568:  BLX             j__ZN8CShadows17StoreStaticShadowEjhP9RwTextureP7CVectorffffshhhfffbf; CShadows::StoreStaticShadow(uint,uchar,RwTexture *,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,float,float,bool,float)
32056C:  MOVS            R0, #0
32056E:  MOV.W           R1, #0x3FC00000
320572:  STR             R5, [SP,#0x80+var_40]; bool
320574:  MOVT            R0, #0x4170
320578:  STRD.W          R5, R5, [SP,#0x80+var_60]; unsigned __int8
32057C:  MOVS            R2, #0xFF
32057E:  STRD.W          R5, R5, [SP,#0x80+var_58]; float
320582:  MOV             R3, R6; unsigned __int8
320584:  STRD.W          R1, R5, [SP,#0x80+var_50]; float
320588:  MOVW            R1, #0x999A
32058C:  STRD.W          R0, R5, [SP,#0x80+var_48]; float
320590:  MOVS            R0, #9
320592:  MOVT            R1, #0x3F19
320596:  STRD.W          R6, R2, [SP,#0x80+var_80]; unsigned __int8
32059A:  STRD.W          R8, R1, [SP,#0x80+var_78]; unsigned __int8
32059E:  MOVS            R1, #0; unsigned int
3205A0:  STRD.W          R10, R0, [SP,#0x80+var_70]; float
3205A4:  MOV             R0, R4; this
3205A6:  MOV             R2, R6; CEntity *
3205A8:  STRD.W          R5, R5, [SP,#0x80+var_68]; unsigned __int8
3205AC:  BLX             j__ZN8CCoronas14RegisterCoronaEjP7CEntityhhhhRK7CVectorffhhhhhfbfbfbb; CCoronas::RegisterCorona(uint,CEntity *,uchar,uchar,uchar,uchar,CVector const&,float,float,uchar,uchar,uchar,uchar,uchar,float,bool,float,bool,float,bool,bool)
3205B0:  LDR.W           R8, [R4,#0x14]
3205B4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3205BE)
3205B6:  VLDR            S2, =0.0015283
3205BA:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3205BC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3205BE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3205C0:  BFC.W           R0, #0xC, #0x14
3205C4:  VMOV            S0, R0
3205C8:  VCVT.F32.U32    S0, S0
3205CC:  VMUL.F32        S0, S0, S2
3205D0:  VMOV            R6, S0
3205D4:  MOV             R0, R6; x
3205D6:  BLX             cosf
3205DA:  MOV             R5, R0
3205DC:  MOV             R0, R6; x
3205DE:  BLX             sinf
3205E2:  VMOV            S16, R5
3205E6:  MOV             R6, R0
3205E8:  CMP.W           R8, #0
3205EC:  BNE             loc_320600
3205EE:  MOV             R0, R4; this
3205F0:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3205F4:  LDR             R1, [R4,#0x14]; CMatrix *
3205F6:  MOV             R0, R9; this
3205F8:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3205FC:  LDR.W           R8, [R4,#0x14]
320600:  VSTR            S16, [R8]
320604:  VMOV            S18, R6
320608:  LDR             R0, [R4,#0x14]
32060A:  CBNZ            R0, loc_32061C
32060C:  MOV             R0, R4; this
32060E:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
320612:  LDR             R1, [R4,#0x14]; CMatrix *
320614:  MOV             R0, R9; this
320616:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
32061A:  LDR             R0, [R4,#0x14]
32061C:  VSTR            S18, [R0,#4]
320620:  LDR             R0, [R4,#0x14]
320622:  CBNZ            R0, loc_320634
320624:  MOV             R0, R4; this
320626:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
32062A:  LDR             R1, [R4,#0x14]; CMatrix *
32062C:  MOV             R0, R9; this
32062E:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
320632:  LDR             R0, [R4,#0x14]
320634:  VNEG.F32        S18, S18
320638:  MOVS            R1, #0
32063A:  STR             R1, [R0,#8]
32063C:  LDR             R0, [R4,#0x14]
32063E:  CBNZ            R0, loc_320650
320640:  MOV             R0, R4; this
320642:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
320646:  LDR             R1, [R4,#0x14]; CMatrix *
320648:  MOV             R0, R9; this
32064A:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
32064E:  LDR             R0, [R4,#0x14]
320650:  VSTR            S18, [R0,#0x10]
320654:  LDR             R0, [R4,#0x14]
320656:  CBNZ            R0, loc_320668
320658:  MOV             R0, R4; this
32065A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
32065E:  LDR             R1, [R4,#0x14]; CMatrix *
320660:  MOV             R0, R9; this
320662:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
320666:  LDR             R0, [R4,#0x14]
320668:  VSTR            S16, [R0,#0x14]
32066C:  LDR             R0, [R4,#0x14]
32066E:  CBNZ            R0, loc_320680
320670:  MOV             R0, R4; this
320672:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
320676:  LDR             R1, [R4,#0x14]; CMatrix *
320678:  MOV             R0, R9; this
32067A:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
32067E:  LDR             R0, [R4,#0x14]
320680:  MOVS            R5, #0
320682:  STR             R5, [R0,#0x18]
320684:  LDR             R0, [R4,#0x14]
320686:  CBNZ            R0, loc_320698
320688:  MOV             R0, R4; this
32068A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
32068E:  LDR             R1, [R4,#0x14]; CMatrix *
320690:  MOV             R0, R9; this
320692:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
320696:  LDR             R0, [R4,#0x14]
320698:  STR             R5, [R0,#0x20]
32069A:  LDR             R0, [R4,#0x14]
32069C:  CBNZ            R0, loc_3206AE
32069E:  MOV             R0, R4; this
3206A0:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3206A4:  LDR             R1, [R4,#0x14]; CMatrix *
3206A6:  MOV             R0, R9; this
3206A8:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3206AC:  LDR             R0, [R4,#0x14]
3206AE:  MOVS            R1, #0
3206B0:  STR             R1, [R0,#0x24]
3206B2:  LDR             R0, [R4,#0x14]
3206B4:  CBNZ            R0, loc_3206C6
3206B6:  MOV             R0, R4; this
3206B8:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3206BC:  LDR             R1, [R4,#0x14]; CMatrix *
3206BE:  MOV             R0, R9; this
3206C0:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3206C4:  LDR             R0, [R4,#0x14]
3206C6:  MOV.W           R1, #0x3F800000
3206CA:  STR             R1, [R0,#0x28]
3206CC:  ADD             SP, SP, #0x58 ; 'X'
3206CE:  VPOP            {D8-D9}
3206D2:  POP.W           {R8-R10}
3206D6:  POP             {R4-R7,PC}
