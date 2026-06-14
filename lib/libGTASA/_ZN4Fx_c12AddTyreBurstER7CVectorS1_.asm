; =========================================================
; Game Engine Function: _ZN4Fx_c12AddTyreBurstER7CVectorS1_
; Address            : 0x364638 - 0x36475E
; =========================================================

364638:  PUSH            {R4-R7,LR}
36463A:  ADD             R7, SP, #0xC
36463C:  PUSH.W          {R8-R11}
364640:  SUB             SP, SP, #0x34
364642:  LDR             R0, =(TheCamera_ptr - 0x364650)
364644:  MOV             R5, R1
364646:  MOV             R4, R2
364648:  VLDR            S0, [R5]
36464C:  ADD             R0, PC; TheCamera_ptr
36464E:  LDR             R0, [R0]; TheCamera
364650:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
364652:  ADD.W           R2, R1, #0x30 ; '0'
364656:  CMP             R1, #0
364658:  IT EQ
36465A:  ADDEQ           R2, R0, #4
36465C:  VLDR            D16, [R5,#4]
364660:  VLDR            S2, [R2]
364664:  VLDR            D17, [R2,#4]
364668:  VSUB.F32        S0, S2, S0
36466C:  VSUB.F32        D16, D17, D16
364670:  VMUL.F32        D1, D16, D16
364674:  VMUL.F32        S0, S0, S0
364678:  VADD.F32        S0, S0, S2
36467C:  VADD.F32        S0, S0, S3
364680:  VLDR            S2, =625.0
364684:  VCMPE.F32       S0, S2
364688:  VMRS            APSR_nzcv, FPSCR
36468C:  BGT             loc_364756
36468E:  MOVW            R3, #0xCCCD
364692:  MOVW            R0, #0xC28F
364696:  MOVW            R1, #0xCCCD
36469A:  ADD.W           R11, SP, #0x50+var_38
36469E:  MOVT            R3, #0x3DCC
3646A2:  MOVS            R2, #0
3646A4:  MOVT            R0, #0x3DF5
3646A8:  MOVT            R1, #0x3ECC
3646AC:  STRD.W          R1, R0, [SP,#0x50+var_50]; float
3646B0:  MOV             R0, R11; this
3646B2:  STRD.W          R2, R3, [SP,#0x50+var_48]; float
3646B6:  MOV.W           R1, #0x3F800000; float
3646BA:  MOV.W           R2, #0x3F800000; float
3646BE:  MOV.W           R3, #0x3F800000; float
3646C2:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
3646C6:  LDR             R0, =(g_fx_ptr - 0x3646D8)
3646C8:  MOVW            R10, #0x999A
3646CC:  MOVW            R8, #0x999A
3646D0:  MOVW            R9, #0
3646D4:  ADD             R0, PC; g_fx_ptr
3646D6:  MOVT            R10, #0x3F19
3646DA:  MOVT            R8, #0x3F99
3646DE:  MOVT            R9, #0xBF80
3646E2:  LDR             R6, [R0]; g_fx
3646E4:  MOVS            R1, #0
3646E6:  MOV             R2, R4; int
3646E8:  MOVS            R3, #0; int
3646EA:  LDR             R0, [R6,#(dword_820544 - 0x820520)]; int
3646EC:  STRD.W          R11, R9, [SP,#0x50+var_50]; int
3646F0:  STRD.W          R8, R10, [SP,#0x50+var_48]; float
3646F4:  STR             R1, [SP,#0x50+var_40]; int
3646F6:  MOV             R1, R5; int
3646F8:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
3646FC:  LDR             R0, [R6,#(dword_820544 - 0x820520)]; int
3646FE:  MOVW            R3, #0xCCCD
364702:  MOVS            R1, #0
364704:  STRD.W          R11, R9, [SP,#0x50+var_50]; int
364708:  STRD.W          R8, R10, [SP,#0x50+var_48]; float
36470C:  MOVT            R3, #0x3D4C; int
364710:  STR             R1, [SP,#0x50+var_40]; int
364712:  MOV             R1, R5; int
364714:  MOV             R2, R4; int
364716:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
36471A:  LDR             R0, [R6,#(dword_820544 - 0x820520)]; int
36471C:  MOVW            R3, #0xCCCD
364720:  MOVS            R1, #0
364722:  STRD.W          R11, R9, [SP,#0x50+var_50]; int
364726:  STRD.W          R8, R10, [SP,#0x50+var_48]; float
36472A:  MOV             R2, R4; int
36472C:  STR             R1, [SP,#0x50+var_40]; int
36472E:  MOV             R1, R5; int
364730:  MOVT            R3, #0x3DCC; int
364734:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
364738:  LDR             R0, [R6,#(dword_820544 - 0x820520)]; int
36473A:  MOVW            R3, #0x999A
36473E:  MOVS            R1, #0
364740:  STRD.W          R11, R9, [SP,#0x50+var_50]; int
364744:  STRD.W          R8, R10, [SP,#0x50+var_48]; float
364748:  MOVT            R3, #0x3E19; int
36474C:  STR             R1, [SP,#0x50+var_40]; int
36474E:  MOV             R1, R5; int
364750:  MOV             R2, R4; int
364752:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
364756:  ADD             SP, SP, #0x34 ; '4'
364758:  POP.W           {R8-R11}
36475C:  POP             {R4-R7,PC}
