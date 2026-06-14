; =========================================================
; Game Engine Function: _ZNK7CWanted12IsClosestCopEP4CPedi
; Address            : 0x422790 - 0x422974
; =========================================================

422790:  PUSH            {R4-R7,LR}
422792:  ADD             R7, SP, #0xC
422794:  PUSH.W          {R8-R11}
422798:  SUB             SP, SP, #0x84
42279A:  MOV             R8, R2
42279C:  LDR.W           R2, [R0,#0x1F4]
4227A0:  VMOV.I32        Q8, #0
4227A4:  ADD.W           R11, SP, #0xA0+var_70
4227A8:  CMP             R2, #0
4227AA:  ADD.W           R9, SP, #0xA0+var_98
4227AE:  ITTE NE
4227B0:  STRNE           R2, [SP,#0xA0+var_44]
4227B2:  MOVNE           R6, #1
4227B4:  MOVEQ           R6, #0
4227B6:  STR             R1, [SP,#0xA0+var_9C]
4227B8:  LDR.W           R1, [R0,#0x1F8]
4227BC:  MOV             R10, #0x7F7FFFFF
4227C4:  CMP             R1, #0
4227C6:  ITTT NE
4227C8:  ADDNE.W         R2, SP, #0xA0+var_44
4227CC:  STRNE.W         R1, [R2,R6,LSL#2]
4227D0:  ADDNE           R6, #1
4227D2:  LDR.W           R1, [R0,#0x1FC]
4227D6:  CMP             R1, #0
4227D8:  ITTT NE
4227DA:  ADDNE.W         R2, SP, #0xA0+var_44
4227DE:  STRNE.W         R1, [R2,R6,LSL#2]
4227E2:  ADDNE           R6, #1
4227E4:  LDR.W           R1, [R0,#0x200]
4227E8:  CMP             R1, #0
4227EA:  ITTT NE
4227EC:  ADDNE.W         R2, SP, #0xA0+var_44
4227F0:  STRNE.W         R1, [R2,R6,LSL#2]
4227F4:  ADDNE           R6, #1
4227F6:  LDR.W           R1, [R0,#0x204]
4227FA:  CMP             R1, #0
4227FC:  ITTT NE
4227FE:  ADDNE.W         R2, SP, #0xA0+var_44
422802:  STRNE.W         R1, [R2,R6,LSL#2]
422806:  ADDNE           R6, #1
422808:  LDR.W           R1, [R0,#0x208]
42280C:  CMP             R1, #0
42280E:  ITTT NE
422810:  ADDNE.W         R2, SP, #0xA0+var_44
422814:  STRNE.W         R1, [R2,R6,LSL#2]
422818:  ADDNE           R6, #1
42281A:  LDR.W           R1, [R0,#0x20C]
42281E:  CMP             R1, #0
422820:  ITTT NE
422822:  ADDNE.W         R2, SP, #0xA0+var_44
422826:  STRNE.W         R1, [R2,R6,LSL#2]
42282A:  ADDNE           R6, #1
42282C:  LDR.W           R1, [R0,#0x210]
422830:  CMP             R1, #0
422832:  ITTT NE
422834:  ADDNE.W         R2, SP, #0xA0+var_44
422838:  STRNE.W         R1, [R2,R6,LSL#2]
42283C:  ADDNE           R6, #1
42283E:  LDR.W           R1, [R0,#0x214]
422842:  CMP             R1, #0
422844:  ITTT NE
422846:  ADDNE.W         R2, SP, #0xA0+var_44
42284A:  STRNE.W         R1, [R2,R6,LSL#2]
42284E:  ADDNE           R6, #1
422850:  LDR.W           R0, [R0,#0x218]
422854:  CMP             R0, #0
422856:  ITTT NE
422858:  ADDNE.W         R1, SP, #0xA0+var_44
42285C:  STRNE.W         R0, [R1,R6,LSL#2]
422860:  ADDNE           R6, #1
422862:  ADR             R0, dword_422980
422864:  VLD1.64         {D18-D19}, [R0@128]
422868:  MOV             R0, R11
42286A:  VST1.64         {D16-D17}, [R0]!
42286E:  VST1.64         {D16-D17}, [R0]
422872:  MOV             R0, R9
422874:  VST1.32         {D18-D19}, [R0]!
422878:  VST1.32         {D18-D19}, [R0]
42287C:  MOVS            R0, #0
42287E:  STRD.W          R0, R0, [SP,#0xA0+var_50]
422882:  MOV.W           R0, #0xFFFFFFFF; int
422886:  STRD.W          R10, R10, [SP,#0xA0+var_78]
42288A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
42288E:  LDR             R2, [R0,#0x14]
422890:  ADD.W           R1, R2, #0x30 ; '0'
422894:  CMP             R2, #0
422896:  IT EQ
422898:  ADDEQ           R1, R0, #4
42289A:  CMP             R6, #0
42289C:  BLE             loc_4228F8
42289E:  ADD             R0, SP, #0xA0+var_44
4228A0:  VLDR            S0, [R1]
4228A4:  VLDR            S2, [R1,#4]
4228A8:  MOV             R2, R6
4228AA:  VLDR            S4, [R1,#8]
4228AE:  ADD             R1, SP, #0xA0+var_98
4228B0:  LDR.W           R3, [R0],#4
4228B4:  LDR             R5, [R3,#0x14]
4228B6:  ADD.W           R4, R5, #0x30 ; '0'
4228BA:  CMP             R5, #0
4228BC:  IT EQ
4228BE:  ADDEQ           R4, R3, #4
4228C0:  SUBS            R2, #1
4228C2:  VLDR            S6, [R4]
4228C6:  VLDR            S8, [R4,#4]
4228CA:  VSUB.F32        S6, S0, S6
4228CE:  VLDR            S10, [R4,#8]
4228D2:  VSUB.F32        S8, S2, S8
4228D6:  VSUB.F32        S10, S4, S10
4228DA:  VMUL.F32        S6, S6, S6
4228DE:  VMUL.F32        S8, S8, S8
4228E2:  VMUL.F32        S10, S10, S10
4228E6:  VADD.F32        S6, S6, S8
4228EA:  VADD.F32        S6, S6, S10
4228EE:  VSTR            S6, [R1]
4228F2:  ADD.W           R1, R1, #4
4228F6:  BNE             loc_4228B0
4228F8:  MOVS            R0, #0
4228FA:  CMP.W           R8, #1
4228FE:  BLT             loc_42296C
422900:  VLDR            S0, =3.4028e38
422904:  ADD             R1, SP, #0xA0+var_44
422906:  MOVS            R2, #0
422908:  CMP             R6, #1
42290A:  BLT             loc_422948
42290C:  VMOV            D1, D0
422910:  ADD             R4, SP, #0xA0+var_98
422912:  MOVS            R5, #0
422914:  MOV.W           R3, #0xFFFFFFFF
422918:  VLDR            S4, [R4]
42291C:  ADDS            R4, #4
42291E:  VCMPE.F32       S4, S2
422922:  VMRS            APSR_nzcv, FPSCR
422926:  VMIN.F32        D1, D2, D1
42292A:  IT LT
42292C:  MOVLT           R3, R5
42292E:  ADDS            R5, #1
422930:  CMP             R6, R5
422932:  BNE             loc_422918
422934:  ADDS            R5, R3, #1
422936:  BEQ             loc_422948
422938:  LDR.W           R5, [R1,R3,LSL#2]
42293C:  STR.W           R5, [R11,R2,LSL#2]
422940:  STR.W           R0, [R1,R3,LSL#2]
422944:  STR.W           R10, [R9,R3,LSL#2]
422948:  ADDS            R2, #1
42294A:  CMP             R2, R8
42294C:  BNE             loc_422908
42294E:  MOVS            R0, #0
422950:  CMP.W           R8, #1
422954:  BLT             loc_42296C
422956:  LDR             R2, [SP,#0xA0+var_9C]
422958:  LDR.W           R1, [R11,R0,LSL#2]
42295C:  CMP             R1, R2
42295E:  BEQ             loc_42296A
422960:  ADDS            R0, #1
422962:  CMP             R0, R8
422964:  BLT             loc_422958
422966:  MOVS            R0, #0
422968:  B               loc_42296C
42296A:  MOVS            R0, #1
42296C:  ADD             SP, SP, #0x84
42296E:  POP.W           {R8-R11}
422972:  POP             {R4-R7,PC}
