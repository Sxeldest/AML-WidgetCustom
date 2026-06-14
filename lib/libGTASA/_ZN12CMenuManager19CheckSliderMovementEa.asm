; =========================================================
; Game Engine Function: _ZN12CMenuManager19CheckSliderMovementEa
; Address            : 0x432854 - 0x43296E
; =========================================================

432854:  PUSH            {R4,R5,R7,LR}
432856:  ADD             R7, SP, #8
432858:  MOV             R5, R0
43285A:  LDR             R0, =(aScreens_ptr - 0x432866)
43285C:  LDRSB.W         R2, [R5,#0x121]
432860:  MOVS            R4, #0xE2
432862:  ADD             R0, PC; aScreens_ptr
432864:  LDR             R3, [R5,#0x38]
432866:  LDR             R0, [R0]; "FEP_STA" ...
432868:  SMLABB.W        R0, R2, R4, R0
43286C:  ADD.W           R2, R3, R3,LSL#3
432870:  ADD.W           R0, R0, R2,LSL#1
432874:  LDRB            R0, [R0,#0xA]
432876:  SUBS            R0, #0x1C; switch 38 cases
432878:  CMP             R0, #0x25 ; '%'
43287A:  IT HI
43287C:  POPHI           {R4,R5,R7,PC}
43287E:  TBB.W           [PC,R0]; switch jump
432882:  DCB 0x13; jump table for switch statement
432883:  DCB 0x40
432884:  DCB 0x75
432885:  DCB 0x75
432886:  DCB 0x75
432887:  DCB 0x75
432888:  DCB 0x75
432889:  DCB 0x75
43288A:  DCB 0x75
43288B:  DCB 0x75
43288C:  DCB 0x75
43288D:  DCB 0x75
43288E:  DCB 0x75
43288F:  DCB 0x75
432890:  DCB 0x75
432891:  DCB 0x75
432892:  DCB 0x75
432893:  DCB 0x75
432894:  DCB 0x75
432895:  DCB 0x75
432896:  DCB 0x75
432897:  DCB 0x75
432898:  DCB 0x75
432899:  DCB 0x75
43289A:  DCB 0x75
43289B:  DCB 0x75
43289C:  DCB 0x75
43289D:  DCB 0x75
43289E:  DCB 0x75
43289F:  DCB 0x75
4328A0:  DCB 0x75
4328A1:  DCB 0x75
4328A2:  DCB 0x75
4328A3:  DCB 0x75
4328A4:  DCB 0x75
4328A5:  DCB 0x75
4328A6:  DCB 0x28
4328A7:  DCB 0x55
4328A8:  LDRB.W          R2, [R5,#0x33]; jumptable 0043287E case 28
4328AC:  LDR             R0, =(AudioEngine_ptr - 0x4328B6)
4328AE:  ADD.W           R1, R2, R1,LSL#2
4328B2:  ADD             R0, PC; AudioEngine_ptr
4328B4:  TST.W           R1, #0x80
4328B8:  IT NE
4328BA:  MOVNE           R1, #0
4328BC:  SXTB            R2, R1
4328BE:  CMP             R2, #0x40 ; '@'
4328C0:  LDR             R0, [R0]; AudioEngine ; this
4328C2:  IT GE
4328C4:  MOVGE           R1, #0x40 ; '@'
4328C6:  STRB.W          R1, [R5,#0x33]
4328CA:  SXTB            R1, R1; signed __int8
4328CC:  BLX             j__ZN12CAudioEngine20SetMusicMasterVolumeEa; CAudioEngine::SetMusicMasterVolume(signed char)
4328D0:  B               loc_432962
4328D2:  ADR             R2, dword_432984; jumptable 0043287E case 64
4328D4:  CMP             R1, #0
4328D6:  VLDR            S0, [R5,#0x28]
4328DA:  IT GT
4328DC:  ADDGT           R2, #4
4328DE:  VLDR            S2, [R2]
4328E2:  VMOV.F32        S4, #1.75
4328E6:  VMOV.F32        S6, #0.875
4328EA:  LDR             R0, =(_ZN9CRenderer15ms_lodDistScaleE_ptr - 0x4328F4)
4328EC:  VADD.F32        S0, S2, S0
4328F0:  ADD             R0, PC; _ZN9CRenderer15ms_lodDistScaleE_ptr
4328F2:  LDR             R0, [R0]; CRenderer::ms_lodDistScale ...
4328F4:  VMIN.F32        D16, D0, D2
4328F8:  VMAX.F32        D0, D16, D3
4328FC:  VSTR            S0, [R5,#0x28]
432900:  B               loc_43295E
432902:  LDRB.W          R2, [R5,#0x32]; jumptable 0043287E case 29
432906:  LDR             R0, =(AudioEngine_ptr - 0x432910)
432908:  ADD.W           R1, R2, R1,LSL#2
43290C:  ADD             R0, PC; AudioEngine_ptr
43290E:  TST.W           R1, #0x80
432912:  IT NE
432914:  MOVNE           R1, #0
432916:  SXTB            R2, R1
432918:  CMP             R2, #0x40 ; '@'
43291A:  LDR             R0, [R0]; AudioEngine ; this
43291C:  IT GE
43291E:  MOVGE           R1, #0x40 ; '@'
432920:  STRB.W          R1, [R5,#0x32]
432924:  SXTB            R1, R1; signed __int8
432926:  BLX             j__ZN12CAudioEngine22SetEffectsMasterVolumeEa; CAudioEngine::SetEffectsMasterVolume(signed char)
43292A:  B               loc_432962
43292C:  VMOV            S0, R1; jumptable 0043287E case 65
432930:  VLDR            S2, =0.005
432934:  VMOV.F32        S4, #15.0
432938:  LDR             R0, =(_ZN7CCamera20m_fMouseAccelHorzntlE_ptr - 0x432946)
43293A:  VCVT.F32.S32    S0, S0
43293E:  VLDR            S6, =0.0003125
432942:  ADD             R0, PC; _ZN7CCamera20m_fMouseAccelHorzntlE_ptr
432944:  LDR             R0, [R0]; CCamera::m_fMouseAccelHorzntl ...
432946:  VMUL.F32        S0, S0, S2
43294A:  VDIV.F32        S0, S0, S4
43294E:  VLDR            S4, [R0]
432952:  VADD.F32        S0, S0, S4
432956:  VMAX.F32        D16, D0, D3
43295A:  VMIN.F32        D0, D16, D1
43295E:  VSTR            S0, [R0]
432962:  MOV             R0, R5; this
432964:  POP.W           {R4,R5,R7,LR}
432968:  B.W             j_j__ZN12CMenuManager12SaveSettingsEv; j_CMenuManager::SaveSettings(void)
43296C:  POP             {R4,R5,R7,PC}; jumptable 0043287E cases 30-63
