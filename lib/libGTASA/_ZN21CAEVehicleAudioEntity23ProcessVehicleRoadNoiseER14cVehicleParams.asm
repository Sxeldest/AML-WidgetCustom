; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity23ProcessVehicleRoadNoiseER14cVehicleParams
; Address            : 0x3AF6BC - 0x3AF89A
; =========================================================

3AF6BC:  PUSH            {R4-R7,LR}
3AF6BE:  ADD             R7, SP, #0xC
3AF6C0:  PUSH.W          {R8}
3AF6C4:  VPUSH           {D8-D11}
3AF6C8:  MOV             R8, R0
3AF6CA:  LDR             R0, [R1,#4]
3AF6CC:  MOVW            R5, #0xFFFF
3AF6D0:  MOV             R6, R1
3AF6D2:  CBZ             R0, loc_3AF6E2
3AF6D4:  CMP             R0, #9
3AF6D6:  BNE             loc_3AF6EE
3AF6D8:  LDR.W           R0, [R6,#0x10]!
3AF6DC:  ADDW            R2, R0, #0x818
3AF6E0:  B               loc_3AF6EA
3AF6E2:  LDR.W           R0, [R6,#0x10]!
3AF6E6:  ADDW            R2, R0, #0x974
3AF6EA:  LDRB            R2, [R2]
3AF6EC:  B               loc_3AF6F4
3AF6EE:  LDR.W           R0, [R6,#0x10]!
3AF6F2:  MOVS            R2, #4
3AF6F4:  LDRSH.W         R3, [R0,#0x26]
3AF6F8:  CMP.W           R3, #0x248
3AF6FC:  BGE             loc_3AF718
3AF6FE:  MOVW            R4, #0x1B3
3AF702:  CMP             R3, R4
3AF704:  IT NE
3AF706:  CMPNE.W         R3, #0x1C2
3AF70A:  BNE             loc_3AF722
3AF70C:  CBNZ            R2, loc_3AF734
3AF70E:  VMOV.F32        S18, #1.0
3AF712:  VLDR            S16, =-100.0
3AF716:  B               loc_3AF82A
3AF718:  ITT NE
3AF71A:  MOVWNE          R4, #0x24F
3AF71E:  CMPNE           R3, R4
3AF720:  BEQ             loc_3AF70C
3AF722:  VMOV.F32        S18, #1.0
3AF726:  CMP             R2, #0
3AF728:  VLDR            S16, =-100.0
3AF72C:  ITT NE
3AF72E:  LDRNE           R2, [R1,#0x14]
3AF730:  CMPNE           R2, #0
3AF732:  BEQ             loc_3AF82A
3AF734:  VLDR            S0, [R1,#0x1C]
3AF738:  VLDR            S16, =-100.0
3AF73C:  VCMP.F32        S0, #0.0
3AF740:  VMRS            APSR_nzcv, FPSCR
3AF744:  BEQ             loc_3AF826
3AF746:  LDR             R1, =(TheCamera_ptr - 0x3AF758)
3AF748:  VMOV.F32        S8, #1.0
3AF74C:  LDR.W           R2, [R8,#4]
3AF750:  VMOV.F32        S6, #0.75
3AF754:  ADD             R1, PC; TheCamera_ptr
3AF756:  VABS.F32        S0, S0
3AF75A:  LDR             R1, [R1]; TheCamera
3AF75C:  LDR             R3, [R2,#0x14]
3AF75E:  LDR             R5, [R1,#(dword_951FBC - 0x951FA8)]
3AF760:  ADD.W           R4, R3, #0x30 ; '0'
3AF764:  CMP             R3, #0
3AF766:  IT EQ
3AF768:  ADDEQ           R4, R2, #4
3AF76A:  ADD.W           R2, R5, #0x30 ; '0'
3AF76E:  CMP             R5, #0
3AF770:  VLDR            S2, [R4]
3AF774:  IT EQ
3AF776:  ADDEQ           R2, R1, #4
3AF778:  VLDR            D16, [R4,#4]
3AF77C:  VLDR            S4, [R2]
3AF780:  VADD.F32        S0, S0, S0
3AF784:  VLDR            D17, [R2,#4]
3AF788:  VSUB.F32        S2, S2, S4
3AF78C:  LDR             R2, =(g_surfaceInfos_ptr - 0x3AF796)
3AF78E:  VSUB.F32        D16, D16, D17
3AF792:  ADD             R2, PC; g_surfaceInfos_ptr
3AF794:  VMIN.F32        D10, D0, D4
3AF798:  VMUL.F32        D2, D16, D16
3AF79C:  VMUL.F32        S2, S2, S2
3AF7A0:  VADD.F32        S2, S2, S4
3AF7A4:  VADD.F32        S2, S2, S5
3AF7A8:  VLDR            S4, =72.0
3AF7AC:  VSQRT.F32       S2, S2
3AF7B0:  VDIV.F32        S2, S2, S4
3AF7B4:  VMOV.F32        S4, #0.5
3AF7B8:  VCMPE.F32       S2, S8
3AF7BC:  VMRS            APSR_nzcv, FPSCR
3AF7C0:  VMUL.F32        S4, S2, S4
3AF7C4:  VADD.F32        S18, S4, S6
3AF7C8:  VMOV.F32        S4, #1.25
3AF7CC:  IT LT
3AF7CE:  VMOVLT.F32      S18, S4
3AF7D2:  LDRB.W          R1, [R0,#0xBE]; unsigned int
3AF7D6:  LDR             R0, [R2]; g_surfaceInfos ; this
3AF7D8:  BLX             j__ZN14SurfaceInfos_c12IsAudioGrassEj; SurfaceInfos_c::IsAudioGrass(uint)
3AF7DC:  CBNZ            R0, loc_3AF7F0
3AF7DE:  LDR             R0, =(g_surfaceInfos_ptr - 0x3AF7E6)
3AF7E0:  LDR             R1, [R6]
3AF7E2:  ADD             R0, PC; g_surfaceInfos_ptr
3AF7E4:  LDRB.W          R1, [R1,#0xBE]; unsigned int
3AF7E8:  LDR             R0, [R0]; g_surfaceInfos ; this
3AF7EA:  BLX             j__ZN14SurfaceInfos_c16IsAudioLongGrassEj; SurfaceInfos_c::IsAudioLongGrass(uint)
3AF7EE:  CBZ             R0, loc_3AF846
3AF7F0:  VLDR            S0, =1.3
3AF7F4:  VMOV.F32        S22, #-12.0
3AF7F8:  MOVS            R5, #0x15
3AF7FA:  VMUL.F32        S18, S18, S0
3AF7FE:  VLDR            S0, =0.00008
3AF802:  VCMPE.F32       S20, S0
3AF806:  VMRS            APSR_nzcv, FPSCR
3AF80A:  BLE             loc_3AF82A
3AF80C:  VMOV            R0, S20; this
3AF810:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3AF814:  VMOV.F32        S0, #20.0
3AF818:  VMOV            S2, R0
3AF81C:  VMUL.F32        S0, S2, S0
3AF820:  VADD.F32        S16, S22, S0
3AF824:  B               loc_3AF82A
3AF826:  VMOV.F32        S18, #1.0
3AF82A:  VMOV            R2, S18; float
3AF82E:  SXTH            R1, R5; __int16
3AF830:  VMOV            R3, S16; float
3AF834:  MOV             R0, R8; this
3AF836:  VPOP            {D8-D11}
3AF83A:  POP.W           {R8}
3AF83E:  POP.W           {R4-R7,LR}
3AF842:  B.W             _ZN21CAEVehicleAudioEntity18PlayRoadNoiseSoundEsff; CAEVehicleAudioEntity::PlayRoadNoiseSound(short,float,float)
3AF846:  LDR             R0, =(g_surfaceInfos_ptr - 0x3AF84E)
3AF848:  LDR             R1, [R6]
3AF84A:  ADD             R0, PC; g_surfaceInfos_ptr
3AF84C:  LDRB.W          R1, [R1,#0xBE]; unsigned int
3AF850:  LDR             R0, [R0]; g_surfaceInfos ; this
3AF852:  BLX             j__ZN14SurfaceInfos_c13IsAudioGravelEj; SurfaceInfos_c::IsAudioGravel(uint)
3AF856:  VMOV.F32        S22, #-7.5
3AF85A:  CBZ             R0, loc_3AF860
3AF85C:  MOVS            R5, #0x16
3AF85E:  B               loc_3AF7FE
3AF860:  LDR             R0, =(g_surfaceInfos_ptr - 0x3AF868)
3AF862:  LDR             R1, [R6]
3AF864:  ADD             R0, PC; g_surfaceInfos_ptr
3AF866:  LDRB.W          R1, [R1,#0xBE]; unsigned int
3AF86A:  LDR             R0, [R0]; g_surfaceInfos ; this
3AF86C:  BLX             j__ZN14SurfaceInfos_c11IsAudioSandEj; SurfaceInfos_c::IsAudioSand(uint)
3AF870:  MOVS            R5, #0x16
3AF872:  CMP             R0, #0
3AF874:  BNE             loc_3AF7FE
3AF876:  LDR             R0, =(g_surfaceInfos_ptr - 0x3AF87E)
3AF878:  LDR             R1, [R6]
3AF87A:  ADD             R0, PC; g_surfaceInfos_ptr
3AF87C:  LDRB.W          R1, [R1,#0xBE]; unsigned int
3AF880:  LDR             R0, [R0]; g_surfaceInfos ; this
3AF882:  BLX             j__ZN14SurfaceInfos_c12IsAudioWaterEj; SurfaceInfos_c::IsAudioWater(uint)
3AF886:  VMOV.F32        S0, #-12.0
3AF88A:  CMP             R0, #0
3AF88C:  VMOV.F32        S22, #-7.5
3AF890:  ITT EQ
3AF892:  VMOVEQ.F32      S22, S0
3AF896:  MOVEQ           R5, #0x15
3AF898:  B               loc_3AF7FE
