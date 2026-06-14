; =========================================================
; Game Engine Function: _ZN10CGameLogic34IsPlayerAllowedToGoInThisDirectionEP10CPlayerPed7CVectorf
; Address            : 0x30981C - 0x30997E
; =========================================================

30981C:  PUSH            {R4-R7,LR}
30981E:  ADD             R7, SP, #0xC
309820:  PUSH.W          {R8-R10}
309824:  SUB             SP, SP, #0x20
309826:  MOV             R4, R0
309828:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x309832)
30982A:  MOV             R5, R2
30982C:  MOV             R10, R1
30982E:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
309830:  MOV             R8, R3
309832:  LDR             R2, [R0]; CWorld::Players ...
309834:  MOVS            R0, #1
309836:  LDR             R1, [R2]; CWorld::Players
309838:  CMP             R1, #0
30983A:  ITT NE
30983C:  LDRNE.W         R2, [R2,#(dword_96B830 - 0x96B69C)]
309840:  CMPNE           R2, #0
309842:  BEQ.W           loc_309976
309846:  LDR             R3, =(_ZN10CGameLogic20bLimitPlayerDistanceE_ptr - 0x30984C)
309848:  ADD             R3, PC; _ZN10CGameLogic20bLimitPlayerDistanceE_ptr
30984A:  LDR             R3, [R3]; CGameLogic::bLimitPlayerDistance ...
30984C:  LDRB            R3, [R3]; CGameLogic::bLimitPlayerDistance
30984E:  CMP             R3, #0
309850:  BEQ.W           loc_309976
309854:  LDR             R0, =(_ZN10CGameLogic18n2PlayerPedInFocusE_ptr - 0x30985A)
309856:  ADD             R0, PC; _ZN10CGameLogic18n2PlayerPedInFocusE_ptr
309858:  LDR             R0, [R0]; CGameLogic::n2PlayerPedInFocus ...
30985A:  LDR             R0, [R0]; CGameLogic::n2PlayerPedInFocus
30985C:  CMP             R0, #1
30985E:  BHI             loc_3098CC
309860:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x30986C)
309862:  MOV.W           R2, #0x194
309866:  MULS            R0, R2
309868:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
30986A:  LDR             R1, [R1]; CWorld::Players ...
30986C:  LDR             R0, [R1,R0]
30986E:  CMP             R0, R4
309870:  BEQ             loc_309928
309872:  MOVW            R0, #0xCCCD
309876:  MOV.W           R9, #0
30987A:  MOVT            R0, #0x3E4C
30987E:  ADD             R1, SP, #0x38+var_24
309880:  STRD.W          R9, R9, [SP,#0x38+var_24]; bool
309884:  MOVS            R2, #5
309886:  STR             R0, [SP,#0x38+var_1C]
309888:  MOV             R0, R4; this
30988A:  MOVS            R3, #0
30988C:  BLX             j__ZN4CPed26GetTransformedBonePositionER5RwV3djb; CPed::GetTransformedBonePosition(RwV3d &,uint,bool)
309890:  MOV             R0, R4; this
309892:  BLX             j__ZN7CEntity13GetIsOnScreenEv; CEntity::GetIsOnScreen(void)
309896:  CMP             R0, #1
309898:  BNE             loc_309974
30989A:  LDR             R0, =(TheCamera_ptr - 0x3098A0)
30989C:  ADD             R0, PC; TheCamera_ptr
30989E:  LDR             R0, [R0]; TheCamera ; this
3098A0:  BLX             j__ZN7CCamera18GetGameCamPositionEv; CCamera::GetGameCamPosition(void)
3098A4:  MOVS            R1, #1
3098A6:  STRD.W          R9, R9, [SP,#0x38+var_38]; bool
3098AA:  STRD.W          R9, R1, [SP,#0x38+var_30]; bool
3098AE:  ADD             R1, SP, #0x38+var_24; CVector *
3098B0:  MOVS            R2, #(stderr+1); CVector *
3098B2:  MOVS            R3, #0; bool
3098B4:  STR.W           R9, [SP,#0x38+var_28]; bool
3098B8:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
3098BC:  CMP             R0, #0
3098BE:  BEQ             loc_309974
3098C0:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3098C6)
3098C2:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3098C4:  LDR             R0, [R0]; CWorld::Players ...
3098C6:  LDR             R1, [R0]; CWorld::Players
3098C8:  LDR.W           R2, [R0,#(dword_96B830 - 0x96B69C)]
3098CC:  LDR             R3, [R2,#0x14]
3098CE:  LDR             R6, [R1,#0x14]
3098D0:  ADD.W           R0, R3, #0x30 ; '0'
3098D4:  CMP             R3, #0
3098D6:  IT EQ
3098D8:  ADDEQ           R0, R2, #4
3098DA:  ADD.W           R2, R6, #0x30 ; '0'
3098DE:  CMP             R6, #0
3098E0:  VLDR            S0, [R0]
3098E4:  VLDR            S2, [R0,#4]
3098E8:  IT EQ
3098EA:  ADDEQ           R2, R1, #4
3098EC:  VLDR            S6, [R2]
3098F0:  VLDR            S8, [R2,#4]
3098F4:  VSUB.F32        S0, S6, S0
3098F8:  LDR             R3, =(_ZN10CGameLogic17MaxPlayerDistanceE_ptr - 0x309906)
3098FA:  VSUB.F32        S2, S8, S2
3098FE:  VLDR            S4, [R7,#arg_0]
309902:  ADD             R3, PC; _ZN10CGameLogic17MaxPlayerDistanceE_ptr
309904:  LDR             R3, [R3]; CGameLogic::MaxPlayerDistance ...
309906:  VMUL.F32        S8, S0, S0
30990A:  VMUL.F32        S6, S2, S2
30990E:  VADD.F32        S6, S8, S6
309912:  VLDR            S8, [R3]
309916:  VADD.F32        S4, S8, S4
30991A:  VSQRT.F32       S6, S6
30991E:  VCMPE.F32       S6, S4
309922:  VMRS            APSR_nzcv, FPSCR
309926:  BGE             loc_30992C
309928:  MOVS            R0, #1
30992A:  B               loc_309976
30992C:  VMOV            S4, R5
309930:  VLDR            S6, [R0,#8]
309934:  VMOV            S8, R10
309938:  VLDR            S10, [R2,#8]
30993C:  VMUL.F32        S2, S2, S4
309940:  MOVS            R0, #0
309942:  VMUL.F32        S0, S0, S8
309946:  MOVS            R2, #0
309948:  VSUB.F32        S4, S10, S6
30994C:  VMOV            S6, R8
309950:  VADD.F32        S0, S0, S2
309954:  VMUL.F32        S2, S4, S6
309958:  VADD.F32        S0, S0, S2
30995C:  VCMPE.F32       S0, #0.0
309960:  VMRS            APSR_nzcv, FPSCR
309964:  IT LT
309966:  MOVLT           R2, #1
309968:  IT GT
30996A:  MOVGT           R0, #1
30996C:  CMP             R1, R4
30996E:  IT EQ
309970:  MOVEQ           R0, R2
309972:  B               loc_309976
309974:  MOVS            R0, #0
309976:  ADD             SP, SP, #0x20 ; ' '
309978:  POP.W           {R8-R10}
30997C:  POP             {R4-R7,PC}
