; =========================================================
; Game Engine Function: _ZN11CTheScripts21RenderAllSearchLightsEv
; Address            : 0x358760 - 0x358910
; =========================================================

358760:  PUSH            {R4-R7,LR}
358762:  ADD             R7, SP, #0xC
358764:  PUSH.W          {R8-R11}
358768:  SUB             SP, SP, #0x74
35876A:  LDR             R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x35877C)
35876C:  MOV.W           R9, #0
358770:  MOVW            R4, #0x216
358774:  MOV.W           R8, #0
358778:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
35877A:  LDR.W           R10, [R0]; CTheScripts::ScriptSearchLightArray ...
35877E:  LDR             R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x358784)
358780:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
358782:  LDR.W           R11, [R0]; CTheScripts::ScriptSearchLightArray ...
358786:  LDR             R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x35878C)
358788:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
35878A:  LDR             R0, [R0]; CTheScripts::ScriptSearchLightArray ...
35878C:  STR             R0, [SP,#0x90+var_44]
35878E:  LDR             R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x358794)
358790:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
358792:  LDR             R0, [R0]; CTheScripts::ScriptSearchLightArray ...
358794:  STR             R0, [SP,#0x90+var_50]
358796:  LDR             R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x35879C)
358798:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
35879A:  LDR             R0, [R0]; CTheScripts::ScriptSearchLightArray ...
35879C:  STR             R0, [SP,#0x90+var_3C]
35879E:  LDR             R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x3587A4)
3587A0:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
3587A2:  LDR             R0, [R0]; CTheScripts::ScriptSearchLightArray ...
3587A4:  STR             R0, [SP,#0x90+var_40]
3587A6:  B               loc_358812
3587A8:  LDR             R0, [SP,#0x90+var_50]
3587AA:  MOVS            R6, #1
3587AC:  ADD             R0, R8
3587AE:  ADD.W           LR, R0, #0x10
3587B2:  LDR             R2, [R0,#8]
3587B4:  STR             R2, [SP,#0x90+var_4C]
3587B6:  LDR             R2, [R0,#0xC]
3587B8:  STR             R2, [SP,#0x90+var_48]
3587BA:  MOV             R2, R11
3587BC:  LDRB            R1, [R0,#1]
3587BE:  LDRB            R5, [R0,#2]
3587C0:  LDM.W           LR, {R3,R12,LR}
3587C4:  LDR.W           R11, [R0,#0x1C]
3587C8:  VLDR            S0, [R0,#0x20]
3587CC:  VLDR            S2, [R0,#0x24]
3587D0:  STRD.W          R9, R9, [SP,#0x90+var_60]
3587D4:  ADD.W           R9, R0, #0x70 ; 'p'
3587D8:  STR             R6, [SP,#0x90+var_68]
3587DA:  ADD.W           R6, R0, #0x64 ; 'd'
3587DE:  ADDS            R0, #0x58 ; 'X'
3587E0:  STR.W           R9, [SP,#0x90+var_6C]
3587E4:  STR             R6, [SP,#0x90+var_70]
3587E6:  MOV.W           R9, #0
3587EA:  STR             R0, [SP,#0x90+var_74]
3587EC:  MOV.W           R0, #0x3F800000
3587F0:  STRD.W          R1, R5, [SP,#0x90+var_7C]
3587F4:  STR             R0, [SP,#0x90+var_58]
3587F6:  VSTR            S2, [SP,#0x90+var_64]
3587FA:  STR             R0, [SP,#0x90+var_80]
3587FC:  MOV             R0, R4
3587FE:  VSTR            S0, [SP,#0x90+var_84]
358802:  STRD.W          R12, LR, [SP,#0x90+var_90]
358806:  STR.W           R11, [SP,#0x90+var_88]
35880A:  MOV             R11, R2
35880C:  LDRD.W          R1, R2, [SP,#0x90+var_4C]
358810:  B               loc_3588F6
358812:  LDRB.W          R0, [R10,R8]
358816:  CMP             R0, #0
358818:  BEQ             loc_3588FA
35881A:  ADD.W           R0, R11, R8
35881E:  LDR             R5, [R0,#0x44]
358820:  CBNZ            R5, loc_35882C
358822:  LDR             R0, [SP,#0x90+var_44]
358824:  ADD             R0, R8
358826:  LDR             R5, [R0,#0x54]
358828:  CMP             R5, #0
35882A:  BEQ             loc_3587A8
35882C:  LDR             R0, [SP,#0x90+var_3C]
35882E:  ADD             R0, R8
358830:  VLDR            D16, [R0,#8]
358834:  LDR             R0, [R0,#0x10]
358836:  STR             R0, [SP,#0x90+var_20]
358838:  VSTR            D16, [SP,#0x90+var_28]
35883C:  LDR             R1, [R5,#0x14]
35883E:  CBNZ            R1, loc_358850
358840:  MOV             R0, R5; this
358842:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
358846:  LDR             R1, [R5,#0x14]; CMatrix *
358848:  ADDS            R0, R5, #4; this
35884A:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
35884E:  LDR             R1, [R5,#0x14]; CVector *
358850:  ADD             R0, SP, #0x90+var_38; CMatrix *
358852:  ADD             R2, SP, #0x90+var_28
358854:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
358858:  VLDR            D16, [SP,#0x90+var_38]
35885C:  LDR             R0, [SP,#0x90+var_30]
35885E:  STR             R0, [SP,#0x90+var_20]
358860:  VSTR            D16, [SP,#0x90+var_28]
358864:  LDR             R0, [R5,#0x14]
358866:  VLDR            S0, [SP,#0x90+var_28]
35886A:  ADD.W           R1, R0, #0x30 ; '0'
35886E:  CMP             R0, #0
358870:  VLDR            S2, [SP,#0x90+var_28+4]
358874:  VLDR            S4, [SP,#0x90+var_20]
358878:  IT EQ
35887A:  ADDEQ           R1, R5, #4
35887C:  VLDR            S6, [R1]
358880:  LDR             R0, [SP,#0x90+var_40]
358882:  VADD.F32        S0, S6, S0
358886:  ADD             R0, R8
358888:  ADD.W           LR, R0, #0x14
35888C:  LDRB            R5, [R0,#1]
35888E:  LDRB            R3, [R0,#2]
358890:  VSTR            S0, [SP,#0x90+var_28]
358894:  VLDR            S6, [R1,#4]
358898:  VADD.F32        S2, S6, S2
35889C:  VSTR            S2, [SP,#0x90+var_28+4]
3588A0:  VMOV            R2, S2
3588A4:  VLDR            S6, [R1,#8]
3588A8:  MOVS            R1, #1
3588AA:  VADD.F32        S4, S6, S4
3588AE:  VSTR            S4, [SP,#0x90+var_20]
3588B2:  LDM.W           LR, {R6,R12,LR}
3588B6:  VLDR            S6, [R0,#0x20]
3588BA:  VLDR            S8, [R0,#0x24]
3588BE:  STRD.W          R9, R9, [SP,#0x90+var_60]
3588C2:  STR             R1, [SP,#0x90+var_68]
3588C4:  ADD.W           R1, R0, #0x70 ; 'p'
3588C8:  STR             R1, [SP,#0x90+var_6C]
3588CA:  ADD.W           R1, R0, #0x64 ; 'd'
3588CE:  ADDS            R0, #0x58 ; 'X'
3588D0:  STR             R1, [SP,#0x90+var_70]
3588D2:  STR             R0, [SP,#0x90+var_74]
3588D4:  MOV.W           R0, #0x3F800000
3588D8:  STR             R3, [SP,#0x90+var_78]
3588DA:  VMOV            R1, S0
3588DE:  STR             R5, [SP,#0x90+var_7C]
3588E0:  VMOV            R3, S4
3588E4:  STR             R0, [SP,#0x90+var_58]
3588E6:  VSTR            S8, [SP,#0x90+var_64]
3588EA:  STR             R0, [SP,#0x90+var_80]
3588EC:  MOV             R0, R4
3588EE:  VSTR            S6, [SP,#0x90+var_84]
3588F2:  STMEA.W         SP, {R6,R12,LR}
3588F6:  BLX             j__ZN5CHeli15SearchLightConeEi7CVectorS0_ffhhPS0_S1_S1_bffff; CHeli::SearchLightCone(int,CVector,CVector,float,float,uchar,uchar,CVector*,CVector*,CVector*,bool,float,float,float,float)
3588FA:  ADD.W           R8, R8, #0x7C ; '|'
3588FE:  ADDS            R4, #1
358900:  CMP.W           R8, #0x3E0
358904:  BNE.W           loc_358812
358908:  ADD             SP, SP, #0x74 ; 't'
35890A:  POP.W           {R8-R11}
35890E:  POP             {R4-R7,PC}
