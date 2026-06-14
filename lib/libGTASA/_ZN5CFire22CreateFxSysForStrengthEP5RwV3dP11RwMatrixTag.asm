; =========================================================
; Game Engine Function: _ZN5CFire22CreateFxSysForStrengthEP5RwV3dP11RwMatrixTag
; Address            : 0x3F2818 - 0x3F2894
; =========================================================

3F2818:  PUSH            {R4-R7,LR}
3F281A:  ADD             R7, SP, #0xC
3F281C:  PUSH.W          {R11}
3F2820:  SUB             SP, SP, #8
3F2822:  MOV             R4, R0
3F2824:  MOV             R5, R2
3F2826:  LDR             R0, [R4,#0x24]; this
3F2828:  MOV             R6, R1
3F282A:  CBZ             R0, loc_3F2834
3F282C:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
3F2830:  MOVS            R0, #0
3F2832:  STR             R0, [R4,#0x24]
3F2834:  VMOV.F32        S0, #2.0
3F2838:  VLDR            S4, [R4,#0x1C]
3F283C:  VMOV.F32        S2, #1.0
3F2840:  LDR             R3, =(aFireLarge_1 - 0x3F284A); "fire_large"
3F2842:  LDR             R1, =(aFireMed_1 - 0x3F284E); "fire_med"
3F2844:  MOVS            R2, #1
3F2846:  ADD             R3, PC; "fire_large"
3F2848:  STR             R2, [SP,#0x18+var_18]; int
3F284A:  ADD             R1, PC; "fire_med"
3F284C:  LDR             R0, =(g_fxMan_ptr - 0x3F2858)
3F284E:  LDR.W           R12, =(aColt45Fire+7 - 0x3F285E); "fire"
3F2852:  MOV             R2, R6; int
3F2854:  ADD             R0, PC; g_fxMan_ptr
3F2856:  VCMPE.F32       S4, S0
3F285A:  ADD             R12, PC; "fire"
3F285C:  VMRS            APSR_nzcv, FPSCR
3F2860:  VCMPE.F32       S4, S2
3F2864:  LDR             R0, [R0]; g_fxMan ; int
3F2866:  IT GT
3F2868:  MOVGT           R1, R3
3F286A:  VMRS            APSR_nzcv, FPSCR
3F286E:  MOV             R3, R5; int
3F2870:  IT LE
3F2872:  MOVLE           R1, R12; this
3F2874:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
3F2878:  CMP             R0, #0
3F287A:  STR             R0, [R4,#0x24]
3F287C:  BEQ             loc_3F288C
3F287E:  ADD             SP, SP, #8
3F2880:  POP.W           {R11}
3F2884:  POP.W           {R4-R7,LR}
3F2888:  B.W             sub_18C114
3F288C:  ADD             SP, SP, #8
3F288E:  POP.W           {R11}
3F2892:  POP             {R4-R7,PC}
