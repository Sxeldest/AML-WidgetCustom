; =========================================================
; Game Engine Function: _ZN15FxInfoManager_c9AddFxInfoEi
; Address            : 0x369788 - 0x36A038
; =========================================================

369788:  PUSH            {R4-R7,LR}
36978A:  ADD             R7, SP, #0xC
36978C:  PUSH.W          {R11}
369790:  MOVS            R4, #0
369792:  CMP.W           R1, #0x2080
369796:  BGE             loc_369828
369798:  CMP.W           R1, #0x1100
36979C:  BGE.W           loc_3698FE
3697A0:  MOVW            R0, #0x1001
3697A4:  SUBS            R0, R1, R0
3697A6:  CMP             R0, #0x1F; switch 32 cases
3697A8:  BHI.W           def_3697AC; jumptable 003697AC default case
3697AC:  TBH.W           [PC,R0,LSL#1]; switch jump
3697B0:  DCW 0x20; jump table for switch statement
3697B2:  DCW 0x440
3697B4:  DCW 0x440
3697B6:  DCW 0x1F9
3697B8:  DCW 0x440
3697BA:  DCW 0x440
3697BC:  DCW 0x440
3697BE:  DCW 0x214
3697C0:  DCW 0x440
3697C2:  DCW 0x440
3697C4:  DCW 0x440
3697C6:  DCW 0x440
3697C8:  DCW 0x440
3697CA:  DCW 0x440
3697CC:  DCW 0x440
3697CE:  DCW 0x22F
3697D0:  DCW 0x440
3697D2:  DCW 0x440
3697D4:  DCW 0x440
3697D6:  DCW 0x440
3697D8:  DCW 0x440
3697DA:  DCW 0x440
3697DC:  DCW 0x440
3697DE:  DCW 0x440
3697E0:  DCW 0x440
3697E2:  DCW 0x440
3697E4:  DCW 0x440
3697E6:  DCW 0x440
3697E8:  DCW 0x440
3697EA:  DCW 0x440
3697EC:  DCW 0x440
3697EE:  DCW 0x24A
3697F0:  LDR.W           R0, =(g_fxMan_ptr - 0x3697FC); jumptable 003697AC case 0
3697F4:  MOVS            R1, #0x18; int
3697F6:  MOVS            R2, #4; int
3697F8:  ADD             R0, PC; g_fxMan_ptr
3697FA:  LDR             R0, [R0]; g_fxMan
3697FC:  ADD.W           R5, R0, #0xAC
369800:  MOV             R0, R5; this
369802:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369806:  MOV             R4, R0
369808:  LDR.W           R0, =(_ZTV14FxInfoEmRate_c_ptr - 0x369810)
36980C:  ADD             R0, PC; _ZTV14FxInfoEmRate_c_ptr
36980E:  LDR             R0, [R0]; `vtable for'FxInfoEmRate_c ...
369810:  ADDS            R0, #8
369812:  STR             R0, [R4]
369814:  ADD.W           R0, R4, #8; this
369818:  BLX             j__ZN19FxInterpInfoFloat_cC2Ev; FxInterpInfoFloat_c::FxInterpInfoFloat_c(void)
36981C:  MOVS            R0, #1
36981E:  STRB            R0, [R4,#0xE]
369820:  MOVW            R0, #0x1001
369824:  B.W             loc_369FEA
369828:  CMP.W           R1, #0x4080
36982C:  BGE.W           loc_3699C4
369830:  CMP.W           R1, #0x2400
369834:  BLT.W           loc_369A18
369838:  MOVW            R0, #0x4001
36983C:  SUBS            R0, R1, R0
36983E:  CMP             R0, #0x3F ; '?'; switch 64 cases
369840:  BHI.W           def_369844; jumptable 00369844 default case
369844:  TBH.W           [PC,R0,LSL#1]; switch jump
369848:  DCW 0x40; jump table for switch statement
36984A:  DCW 0x29B
36984C:  DCW 0x3F4
36984E:  DCW 0x2B4
369850:  DCW 0x3F4
369852:  DCW 0x3F4
369854:  DCW 0x3F4
369856:  DCW 0x2CD
369858:  DCW 0x3F4
36985A:  DCW 0x3F4
36985C:  DCW 0x3F4
36985E:  DCW 0x3F4
369860:  DCW 0x3F4
369862:  DCW 0x3F4
369864:  DCW 0x3F4
369866:  DCW 0x2E5
369868:  DCW 0x3F4
36986A:  DCW 0x3F4
36986C:  DCW 0x3F4
36986E:  DCW 0x3F4
369870:  DCW 0x3F4
369872:  DCW 0x3F4
369874:  DCW 0x3F4
369876:  DCW 0x3F4
369878:  DCW 0x3F4
36987A:  DCW 0x3F4
36987C:  DCW 0x3F4
36987E:  DCW 0x3F4
369880:  DCW 0x3F4
369882:  DCW 0x3F4
369884:  DCW 0x3F4
369886:  DCW 0x301
369888:  DCW 0x3F4
36988A:  DCW 0x3F4
36988C:  DCW 0x3F4
36988E:  DCW 0x3F4
369890:  DCW 0x3F4
369892:  DCW 0x3F4
369894:  DCW 0x3F4
369896:  DCW 0x3F4
369898:  DCW 0x3F4
36989A:  DCW 0x3F4
36989C:  DCW 0x3F4
36989E:  DCW 0x3F4
3698A0:  DCW 0x3F4
3698A2:  DCW 0x3F4
3698A4:  DCW 0x3F4
3698A6:  DCW 0x3F4
3698A8:  DCW 0x3F4
3698AA:  DCW 0x3F4
3698AC:  DCW 0x3F4
3698AE:  DCW 0x3F4
3698B0:  DCW 0x3F4
3698B2:  DCW 0x3F4
3698B4:  DCW 0x3F4
3698B6:  DCW 0x3F4
3698B8:  DCW 0x3F4
3698BA:  DCW 0x3F4
3698BC:  DCW 0x3F4
3698BE:  DCW 0x3F4
3698C0:  DCW 0x3F4
3698C2:  DCW 0x3F4
3698C4:  DCW 0x3F4
3698C6:  DCW 0x31D
3698C8:  LDR.W           R0, =(g_fxMan_ptr - 0x3698D6); jumptable 00369844 case 0
3698CC:  MOVS            R1, #0x18; int
3698CE:  MOVS            R2, #4; int
3698D0:  MOVS            R6, #4
3698D2:  ADD             R0, PC; g_fxMan_ptr
3698D4:  LDR             R0, [R0]; g_fxMan
3698D6:  ADD.W           R5, R0, #0xAC
3698DA:  MOV             R0, R5; this
3698DC:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
3698E0:  MOV             R4, R0
3698E2:  LDR.W           R0, =(_ZTV14FxInfoColour_c_ptr - 0x3698EA)
3698E6:  ADD             R0, PC; _ZTV14FxInfoColour_c_ptr
3698E8:  LDR             R0, [R0]; `vtable for'FxInfoColour_c ...
3698EA:  ADDS            R0, #8
3698EC:  STR             R0, [R4]
3698EE:  ADD.W           R0, R4, #8; this
3698F2:  BLX             j__ZN18FxInterpInfoU255_cC2Ev; FxInterpInfoU255_c::FxInterpInfoU255_c(void)
3698F6:  STRB            R6, [R4,#0xE]
3698F8:  MOVW            R0, #0x4001
3698FC:  B               loc_36A022
3698FE:  MOVW            R0, #0x2001
369902:  SUBS            R0, R1, R0
369904:  CMP             R0, #0x3F ; '?'; switch 64 cases
369906:  BHI.W           def_36990A; jumptable 0036990A default case
36990A:  TBH.W           [PC,R0,LSL#1]; switch jump
36990E:  DCW 0x40; jump table for switch statement
369910:  DCW 0x2D3
369912:  DCW 0x391
369914:  DCW 0x2EC
369916:  DCW 0x391
369918:  DCW 0x391
36991A:  DCW 0x391
36991C:  DCW 0x305
36991E:  DCW 0x391
369920:  DCW 0x391
369922:  DCW 0x391
369924:  DCW 0x391
369926:  DCW 0x391
369928:  DCW 0x391
36992A:  DCW 0x391
36992C:  DCW 0x31E
36992E:  DCW 0x391
369930:  DCW 0x391
369932:  DCW 0x391
369934:  DCW 0x391
369936:  DCW 0x391
369938:  DCW 0x391
36993A:  DCW 0x391
36993C:  DCW 0x391
36993E:  DCW 0x391
369940:  DCW 0x391
369942:  DCW 0x391
369944:  DCW 0x391
369946:  DCW 0x391
369948:  DCW 0x391
36994A:  DCW 0x391
36994C:  DCW 0x33A
36994E:  DCW 0x391
369950:  DCW 0x391
369952:  DCW 0x391
369954:  DCW 0x391
369956:  DCW 0x391
369958:  DCW 0x391
36995A:  DCW 0x391
36995C:  DCW 0x391
36995E:  DCW 0x391
369960:  DCW 0x391
369962:  DCW 0x391
369964:  DCW 0x391
369966:  DCW 0x391
369968:  DCW 0x391
36996A:  DCW 0x391
36996C:  DCW 0x391
36996E:  DCW 0x391
369970:  DCW 0x391
369972:  DCW 0x391
369974:  DCW 0x391
369976:  DCW 0x391
369978:  DCW 0x391
36997A:  DCW 0x391
36997C:  DCW 0x391
36997E:  DCW 0x391
369980:  DCW 0x391
369982:  DCW 0x391
369984:  DCW 0x391
369986:  DCW 0x391
369988:  DCW 0x391
36998A:  DCW 0x391
36998C:  DCW 0x356
36998E:  LDR.W           R0, =(g_fxMan_ptr - 0x36999A); jumptable 0036990A case 0
369992:  MOVS            R1, #0x18; int
369994:  MOVS            R2, #4; int
369996:  ADD             R0, PC; g_fxMan_ptr
369998:  LDR             R0, [R0]; g_fxMan
36999A:  ADD.W           R5, R0, #0xAC
36999E:  MOV             R0, R5; this
3699A0:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
3699A4:  MOV             R4, R0
3699A6:  LDR.W           R0, =(_ZTV13FxInfoNoise_c_ptr - 0x3699AE)
3699AA:  ADD             R0, PC; _ZTV13FxInfoNoise_c_ptr
3699AC:  LDR             R0, [R0]; `vtable for'FxInfoNoise_c ...
3699AE:  ADDS            R0, #8
3699B0:  STR             R0, [R4]
3699B2:  ADD.W           R0, R4, #8; this
3699B6:  BLX             j__ZN16FxInterpInfo32_cC2Ev; FxInterpInfo32_c::FxInterpInfo32_c(void)
3699BA:  MOVS            R0, #1
3699BC:  STRB            R0, [R4,#0xE]
3699BE:  MOVW            R0, #0x2001
3699C2:  B               loc_369FEA
3699C4:  CMP.W           R1, #0x4200
3699C8:  BLT             loc_369AAA
3699CA:  BEQ.W           loc_369CB0
3699CE:  CMP.W           R1, #0x4400
3699D2:  BEQ.W           loc_369CE0
3699D6:  MOVW            R6, #0x8001
3699DA:  CMP             R1, R6
3699DC:  BNE.W           loc_36A030; jumptable 003697AC cases 1,2,4-6,8-14,16-30
3699E0:  LDR.W           R0, =(g_fxMan_ptr - 0x3699EC)
3699E4:  MOVS            R1, #0x18; int
3699E6:  MOVS            R2, #4; int
3699E8:  ADD             R0, PC; g_fxMan_ptr
3699EA:  LDR             R0, [R0]; g_fxMan
3699EC:  ADD.W           R5, R0, #0xAC
3699F0:  MOV             R0, R5; this
3699F2:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
3699F6:  MOV             R4, R0
3699F8:  LDR.W           R0, =(_ZTV13FxInfoSmoke_c_ptr - 0x369A00)
3699FC:  ADD             R0, PC; _ZTV13FxInfoSmoke_c_ptr
3699FE:  LDR             R0, [R0]; `vtable for'FxInfoSmoke_c ...
369A00:  ADDS            R0, #8
369A02:  STR             R0, [R4]
369A04:  ADD.W           R0, R4, #8; this
369A08:  BLX             j__ZN18FxInterpInfoU255_cC2Ev; FxInterpInfoU255_c::FxInterpInfoU255_c(void)
369A0C:  MOVS            R0, #8
369A0E:  MOVS            R1, #0x20 ; ' '
369A10:  STRB            R0, [R4,#0xE]
369A12:  MOV             R0, R5
369A14:  STRH            R6, [R4,#4]
369A16:  B               loc_36A028
369A18:  CMP.W           R1, #0x2080
369A1C:  BEQ.W           loc_369B36
369A20:  CMP.W           R1, #0x2100
369A24:  BEQ.W           loc_369B6C
369A28:  CMP.W           R1, #0x2200
369A2C:  BNE.W           loc_36A030; jumptable 003697AC cases 1,2,4-6,8-14,16-30
369A30:  LDR.W           R0, =(g_fxMan_ptr - 0x369A3C)
369A34:  MOVS            R1, #0x18; int
369A36:  MOVS            R2, #4; int
369A38:  ADD             R0, PC; g_fxMan_ptr
369A3A:  LDR             R0, [R0]; g_fxMan
369A3C:  ADDS            R0, #0xAC; this
369A3E:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369A42:  MOV             R4, R0
369A44:  LDR.W           R0, =(_ZTV13FxInfoFloat_c_ptr - 0x369A4C)
369A48:  ADD             R0, PC; _ZTV13FxInfoFloat_c_ptr
369A4A:  LDR             R0, [R0]; `vtable for'FxInfoFloat_c ...
369A4C:  ADDS            R0, #8
369A4E:  STR             R0, [R4]
369A50:  ADD.W           R0, R4, #8; this
369A54:  BLX             j__ZN19FxInterpInfoFloat_cC2Ev; FxInterpInfoFloat_c::FxInterpInfoFloat_c(void)
369A58:  MOVS            R0, #0
369A5A:  STRB            R0, [R4,#0xE]
369A5C:  MOV.W           R0, #0x2200
369A60:  STRH            R0, [R4,#4]
369A62:  B               loc_36A030; jumptable 003697AC cases 1,2,4-6,8-14,16-30
369A64:  CMP.W           R1, #0x1040; jumptable 003697AC default case
369A68:  BEQ.W           loc_369C7A
369A6C:  CMP.W           R1, #0x1080
369A70:  BNE.W           loc_36A030; jumptable 003697AC cases 1,2,4-6,8-14,16-30
369A74:  LDR.W           R0, =(g_fxMan_ptr - 0x369A80)
369A78:  MOVS            R1, #0x18; int
369A7A:  MOVS            R2, #4; int
369A7C:  ADD             R0, PC; g_fxMan_ptr
369A7E:  LDR             R0, [R0]; g_fxMan
369A80:  ADD.W           R5, R0, #0xAC
369A84:  MOV             R0, R5; this
369A86:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369A8A:  MOV             R4, R0
369A8C:  LDR.W           R0, =(_ZTV13FxInfoEmPos_c_ptr - 0x369A94)
369A90:  ADD             R0, PC; _ZTV13FxInfoEmPos_c_ptr
369A92:  LDR             R0, [R0]; `vtable for'FxInfoEmPos_c ...
369A94:  ADDS            R0, #8
369A96:  STR             R0, [R4]
369A98:  ADD.W           R0, R4, #8; this
369A9C:  BLX             j__ZN19FxInterpInfoFloat_cC2Ev; FxInterpInfoFloat_c::FxInterpInfoFloat_c(void)
369AA0:  MOVS            R0, #3
369AA2:  STRB            R0, [R4,#0xE]
369AA4:  MOV.W           R0, #0x1080
369AA8:  B               loc_369FB2
369AAA:  CMP.W           R1, #0x4080
369AAE:  BEQ.W           loc_369D14
369AB2:  CMP.W           R1, #0x4100
369AB6:  BNE.W           loc_36A030; jumptable 003697AC cases 1,2,4-6,8-14,16-30
369ABA:  LDR.W           R0, =(g_fxMan_ptr - 0x369AC6)
369ABE:  MOVS            R1, #0x18; int
369AC0:  MOVS            R2, #4; int
369AC2:  ADD             R0, PC; g_fxMan_ptr
369AC4:  LDR             R0, [R0]; g_fxMan
369AC6:  ADD.W           R5, R0, #0xAC
369ACA:  MOV             R0, R5; this
369ACC:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369AD0:  MOV             R4, R0
369AD2:  LDR.W           R0, =(_ZTV19FxInfoColourRange_c_ptr - 0x369ADA)
369AD6:  ADD             R0, PC; _ZTV19FxInfoColourRange_c_ptr
369AD8:  LDR             R0, [R0]; `vtable for'FxInfoColourRange_c ...
369ADA:  ADDS            R0, #8
369ADC:  STR             R0, [R4]
369ADE:  ADD.W           R0, R4, #8; this
369AE2:  BLX             j__ZN18FxInterpInfoU255_cC2Ev; FxInterpInfoU255_c::FxInterpInfoU255_c(void)
369AE6:  MOVS            R0, #7
369AE8:  STRB            R0, [R4,#0xE]
369AEA:  MOV.W           R0, #0x4100
369AEE:  B               loc_369F7A
369AF0:  CMP.W           R1, #0x1100; jumptable 0036990A default case
369AF4:  BEQ.W           loc_369FF2
369AF8:  CMP.W           R1, #0x1200
369AFC:  BNE.W           loc_36A030; jumptable 003697AC cases 1,2,4-6,8-14,16-30
369B00:  LDR.W           R0, =(g_fxMan_ptr - 0x369B0C)
369B04:  MOVS            R1, #0x18; int
369B06:  MOVS            R2, #4; int
369B08:  ADD             R0, PC; g_fxMan_ptr
369B0A:  LDR             R0, [R0]; g_fxMan
369B0C:  ADD.W           R5, R0, #0xAC
369B10:  MOV             R0, R5; this
369B12:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369B16:  MOV             R4, R0
369B18:  LDR.W           R0, =(_ZTV18FxInfoEmRotation_c_ptr - 0x369B20)
369B1C:  ADD             R0, PC; _ZTV18FxInfoEmRotation_c_ptr
369B1E:  LDR             R0, [R0]; `vtable for'FxInfoEmRotation_c ...
369B20:  ADDS            R0, #8
369B22:  STR             R0, [R4]
369B24:  ADD.W           R0, R4, #8; this
369B28:  BLX             j__ZN19FxInterpInfoFloat_cC2Ev; FxInterpInfoFloat_c::FxInterpInfoFloat_c(void)
369B2C:  MOVS            R0, #2
369B2E:  STRB            R0, [R4,#0xE]
369B30:  MOV.W           R0, #0x1200
369B34:  B               loc_369E42
369B36:  LDR.W           R0, =(g_fxMan_ptr - 0x369B42)
369B3A:  MOVS            R1, #0x18; int
369B3C:  MOVS            R2, #4; int
369B3E:  ADD             R0, PC; g_fxMan_ptr
369B40:  LDR             R0, [R0]; g_fxMan
369B42:  ADD.W           R5, R0, #0xAC
369B46:  MOV             R0, R5; this
369B48:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369B4C:  MOV             R4, R0
369B4E:  LDR.W           R0, =(_ZTV14FxInfoJitter_c_ptr - 0x369B56)
369B52:  ADD             R0, PC; _ZTV14FxInfoJitter_c_ptr
369B54:  LDR             R0, [R0]; `vtable for'FxInfoJitter_c ...
369B56:  ADDS            R0, #8
369B58:  STR             R0, [R4]
369B5A:  ADD.W           R0, R4, #8; this
369B5E:  BLX             j__ZN16FxInterpInfo32_cC2Ev; FxInterpInfo32_c::FxInterpInfo32_c(void)
369B62:  MOVS            R0, #1
369B64:  STRB            R0, [R4,#0xE]
369B66:  MOV.W           R0, #0x2080
369B6A:  B               loc_369FEA
369B6C:  LDR.W           R0, =(g_fxMan_ptr - 0x369B7A)
369B70:  MOVS            R1, #0x18; int
369B72:  MOVS            R2, #4; int
369B74:  MOVS            R6, #4
369B76:  ADD             R0, PC; g_fxMan_ptr
369B78:  LDR             R0, [R0]; g_fxMan
369B7A:  ADD.W           R5, R0, #0xAC
369B7E:  MOV             R0, R5; this
369B80:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369B84:  MOV             R4, R0
369B86:  LDR.W           R0, =(_ZTV16FxInfoRotSpeed_c_ptr - 0x369B8E)
369B8A:  ADD             R0, PC; _ZTV16FxInfoRotSpeed_c_ptr
369B8C:  LDR             R0, [R0]; `vtable for'FxInfoRotSpeed_c ...
369B8E:  ADDS            R0, #8
369B90:  STR             R0, [R4]
369B92:  ADD.W           R0, R4, #8; this
369B96:  BLX             j__ZN19FxInterpInfoFloat_cC2Ev; FxInterpInfoFloat_c::FxInterpInfoFloat_c(void)
369B9A:  STRB            R6, [R4,#0xE]
369B9C:  MOV.W           R0, #0x2100
369BA0:  B               loc_36A022
369BA2:  LDR.W           R0, =(g_fxMan_ptr - 0x369BAE); jumptable 003697AC case 3
369BA6:  MOVS            R1, #0x18; int
369BA8:  MOVS            R2, #4; int
369BAA:  ADD             R0, PC; g_fxMan_ptr
369BAC:  LDR             R0, [R0]; g_fxMan
369BAE:  ADD.W           R5, R0, #0xAC
369BB2:  MOV             R0, R5; this
369BB4:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369BB8:  MOV             R4, R0
369BBA:  LDR.W           R0, =(_ZTV14FxInfoEmSize_c_ptr - 0x369BC2)
369BBE:  ADD             R0, PC; _ZTV14FxInfoEmSize_c_ptr
369BC0:  LDR             R0, [R0]; `vtable for'FxInfoEmSize_c ...
369BC2:  ADDS            R0, #8
369BC4:  STR             R0, [R4]
369BC6:  ADD.W           R0, R4, #8; this
369BCA:  BLX             j__ZN16FxInterpInfo32_cC2Ev; FxInterpInfo32_c::FxInterpInfo32_c(void)
369BCE:  MOVS            R0, #7
369BD0:  STRB            R0, [R4,#0xE]
369BD2:  MOVW            R0, #0x1004
369BD6:  B               loc_369F7A
369BD8:  LDR.W           R0, =(g_fxMan_ptr - 0x369BE4); jumptable 003697AC case 7
369BDC:  MOVS            R1, #0x18; int
369BDE:  MOVS            R2, #4; int
369BE0:  ADD             R0, PC; g_fxMan_ptr
369BE2:  LDR             R0, [R0]; g_fxMan
369BE4:  ADD.W           R5, R0, #0xAC
369BE8:  MOV             R0, R5; this
369BEA:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369BEE:  MOV             R4, R0
369BF0:  LDR.W           R0, =(_ZTV15FxInfoEmSpeed_c_ptr - 0x369BF8)
369BF4:  ADD             R0, PC; _ZTV15FxInfoEmSpeed_c_ptr
369BF6:  LDR             R0, [R0]; `vtable for'FxInfoEmSpeed_c ...
369BF8:  ADDS            R0, #8
369BFA:  STR             R0, [R4]
369BFC:  ADD.W           R0, R4, #8; this
369C00:  BLX             j__ZN16FxInterpInfo32_cC2Ev; FxInterpInfo32_c::FxInterpInfo32_c(void)
369C04:  MOVS            R0, #2
369C06:  STRB            R0, [R4,#0xE]
369C08:  MOVW            R0, #0x1008
369C0C:  B               loc_369E42
369C0E:  LDR.W           R0, =(g_fxMan_ptr - 0x369C1A); jumptable 003697AC case 15
369C12:  MOVS            R1, #0x18; int
369C14:  MOVS            R2, #4; int
369C16:  ADD             R0, PC; g_fxMan_ptr
369C18:  LDR             R0, [R0]; g_fxMan
369C1A:  ADD.W           R5, R0, #0xAC
369C1E:  MOV             R0, R5; this
369C20:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369C24:  MOV             R4, R0
369C26:  LDR.W           R0, =(_ZTV13FxInfoEmDir_c_ptr - 0x369C2E)
369C2A:  ADD             R0, PC; _ZTV13FxInfoEmDir_c_ptr
369C2C:  LDR             R0, [R0]; `vtable for'FxInfoEmDir_c ...
369C2E:  ADDS            R0, #8
369C30:  STR             R0, [R4]
369C32:  ADD.W           R0, R4, #8; this
369C36:  BLX             j__ZN16FxInterpInfo32_cC2Ev; FxInterpInfo32_c::FxInterpInfo32_c(void)
369C3A:  MOVS            R0, #3
369C3C:  STRB            R0, [R4,#0xE]
369C3E:  MOVW            R0, #0x1010
369C42:  B               loc_369FB2
369C44:  LDR.W           R0, =(g_fxMan_ptr - 0x369C50); jumptable 003697AC case 31
369C48:  MOVS            R1, #0x18; int
369C4A:  MOVS            R2, #4; int
369C4C:  ADD             R0, PC; g_fxMan_ptr
369C4E:  LDR             R0, [R0]; g_fxMan
369C50:  ADD.W           R5, R0, #0xAC
369C54:  MOV             R0, R5; this
369C56:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369C5A:  MOV             R4, R0
369C5C:  LDR.W           R0, =(_ZTV15FxInfoEmAngle_c_ptr - 0x369C64)
369C60:  ADD             R0, PC; _ZTV15FxInfoEmAngle_c_ptr
369C62:  LDR             R0, [R0]; `vtable for'FxInfoEmAngle_c ...
369C64:  ADDS            R0, #8
369C66:  STR             R0, [R4]
369C68:  ADD.W           R0, R4, #8; this
369C6C:  BLX             j__ZN19FxInterpInfoFloat_cC2Ev; FxInterpInfoFloat_c::FxInterpInfoFloat_c(void)
369C70:  MOVS            R0, #2
369C72:  STRB            R0, [R4,#0xE]
369C74:  MOV.W           R0, #0x1020
369C78:  B               loc_369E42
369C7A:  LDR.W           R0, =(g_fxMan_ptr - 0x369C86)
369C7E:  MOVS            R1, #0x18; int
369C80:  MOVS            R2, #4; int
369C82:  ADD             R0, PC; g_fxMan_ptr
369C84:  LDR             R0, [R0]; g_fxMan
369C86:  ADD.W           R5, R0, #0xAC
369C8A:  MOV             R0, R5; this
369C8C:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369C90:  MOV             R4, R0
369C92:  LDR.W           R0, =(_ZTV14FxInfoEmLife_c_ptr - 0x369C9A)
369C96:  ADD             R0, PC; _ZTV14FxInfoEmLife_c_ptr
369C98:  LDR             R0, [R0]; `vtable for'FxInfoEmLife_c ...
369C9A:  ADDS            R0, #8
369C9C:  STR             R0, [R4]
369C9E:  ADD.W           R0, R4, #8; this
369CA2:  BLX             j__ZN18FxInterpInfoU255_cC2Ev; FxInterpInfoU255_c::FxInterpInfoU255_c(void)
369CA6:  MOVS            R0, #2
369CA8:  STRB            R0, [R4,#0xE]
369CAA:  MOV.W           R0, #0x1040
369CAE:  B               loc_369E42
369CB0:  LDR             R0, =(g_fxMan_ptr - 0x369CBA)
369CB2:  MOVS            R1, #0x18; int
369CB4:  MOVS            R2, #4; int
369CB6:  ADD             R0, PC; g_fxMan_ptr
369CB8:  LDR             R0, [R0]; g_fxMan
369CBA:  ADDS            R0, #0xAC; this
369CBC:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369CC0:  MOV             R4, R0
369CC2:  LDR             R0, =(_ZTV15FxInfoSelfLit_c_ptr - 0x369CC8)
369CC4:  ADD             R0, PC; _ZTV15FxInfoSelfLit_c_ptr
369CC6:  LDR             R0, [R0]; `vtable for'FxInfoSelfLit_c ...
369CC8:  ADDS            R0, #8
369CCA:  STR             R0, [R4]
369CCC:  ADD.W           R0, R4, #8; this
369CD0:  BLX             j__ZN18FxInterpInfoU255_cC2Ev; FxInterpInfoU255_c::FxInterpInfoU255_c(void)
369CD4:  MOVS            R0, #0
369CD6:  STRB            R0, [R4,#0xE]
369CD8:  MOV.W           R0, #0x4200
369CDC:  STRH            R0, [R4,#4]
369CDE:  B               loc_36A030; jumptable 003697AC cases 1,2,4-6,8-14,16-30
369CE0:  LDR             R0, =(g_fxMan_ptr - 0x369CEA)
369CE2:  MOVS            R1, #0x18; int
369CE4:  MOVS            R2, #4; int
369CE6:  ADD             R0, PC; g_fxMan_ptr
369CE8:  LDR             R0, [R0]; g_fxMan
369CEA:  ADD.W           R5, R0, #0xAC
369CEE:  MOV             R0, R5; this
369CF0:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369CF4:  MOV             R4, R0
369CF6:  LDR             R0, =(_ZTV20FxInfoColourBright_c_ptr - 0x369CFC)
369CF8:  ADD             R0, PC; _ZTV20FxInfoColourBright_c_ptr
369CFA:  LDR             R0, [R0]; `vtable for'FxInfoColourBright_c ...
369CFC:  ADDS            R0, #8
369CFE:  STR             R0, [R4]
369D00:  ADD.W           R0, R4, #8; this
369D04:  BLX             j__ZN18FxInterpInfoU255_cC2Ev; FxInterpInfoU255_c::FxInterpInfoU255_c(void)
369D08:  MOVS            R0, #5
369D0A:  MOVS            R1, #0x14
369D0C:  STRB            R0, [R4,#0xE]
369D0E:  MOV.W           R0, #0x4400
369D12:  B               loc_369E7C
369D14:  LDR             R0, =(g_fxMan_ptr - 0x369D1E)
369D16:  MOVS            R1, #0x18; int
369D18:  MOVS            R2, #4; int
369D1A:  ADD             R0, PC; g_fxMan_ptr
369D1C:  LDR             R0, [R0]; g_fxMan
369D1E:  ADD.W           R5, R0, #0xAC
369D22:  MOV             R0, R5; this
369D24:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369D28:  MOV             R4, R0
369D2A:  LDR             R0, =(_ZTV19FxInfoAnimTexture_c_ptr - 0x369D30)
369D2C:  ADD             R0, PC; _ZTV19FxInfoAnimTexture_c_ptr
369D2E:  LDR             R0, [R0]; `vtable for'FxInfoAnimTexture_c ...
369D30:  ADDS            R0, #8
369D32:  STR             R0, [R4]
369D34:  ADD.W           R0, R4, #8; this
369D38:  BLX             j__ZN16FxInterpInfo32_cC2Ev; FxInterpInfo32_c::FxInterpInfo32_c(void)
369D3C:  MOVS            R0, #1
369D3E:  STRB            R0, [R4,#0xE]
369D40:  MOV.W           R0, #0x4080
369D44:  B               loc_369FEA
369D46:  CMP.W           R1, #0x2400; jumptable 00369844 default case
369D4A:  BNE.W           loc_36A030; jumptable 003697AC cases 1,2,4-6,8-14,16-30
369D4E:  LDR             R0, =(g_fxMan_ptr - 0x369D58)
369D50:  MOVS            R1, #0x18; int
369D52:  MOVS            R2, #4; int
369D54:  ADD             R0, PC; g_fxMan_ptr
369D56:  LDR             R0, [R0]; g_fxMan
369D58:  ADDS            R0, #0xAC; this
369D5A:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369D5E:  MOV             R4, R0
369D60:  LDR             R0, =(_ZTV18FxInfoUnderwater_c_ptr - 0x369D66)
369D62:  ADD             R0, PC; _ZTV18FxInfoUnderwater_c_ptr
369D64:  LDR             R0, [R0]; `vtable for'FxInfoUnderwater_c ...
369D66:  ADDS            R0, #8
369D68:  STR             R0, [R4]
369D6A:  ADD.W           R0, R4, #8; this
369D6E:  BLX             j__ZN18FxInterpInfoU255_cC2Ev; FxInterpInfoU255_c::FxInterpInfoU255_c(void)
369D72:  MOVS            R0, #0
369D74:  STRB            R0, [R4,#0xE]
369D76:  MOV.W           R0, #0x2400
369D7A:  STRH            R0, [R4,#4]
369D7C:  B               loc_36A030; jumptable 003697AC cases 1,2,4-6,8-14,16-30
369D7E:  LDR             R0, =(g_fxMan_ptr - 0x369D8A); jumptable 00369844 case 1
369D80:  MOVS            R1, #0x18; int
369D82:  MOVS            R2, #4; int
369D84:  MOVS            R6, #4
369D86:  ADD             R0, PC; g_fxMan_ptr
369D88:  LDR             R0, [R0]; g_fxMan
369D8A:  ADD.W           R5, R0, #0xAC
369D8E:  MOV             R0, R5; this
369D90:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369D94:  MOV             R4, R0
369D96:  LDR             R0, =(_ZTV12FxInfoSize_c_ptr - 0x369D9C)
369D98:  ADD             R0, PC; _ZTV12FxInfoSize_c_ptr
369D9A:  LDR             R0, [R0]; `vtable for'FxInfoSize_c ...
369D9C:  ADDS            R0, #8
369D9E:  STR             R0, [R4]
369DA0:  ADD.W           R0, R4, #8; this
369DA4:  BLX             j__ZN16FxInterpInfo32_cC2Ev; FxInterpInfo32_c::FxInterpInfo32_c(void)
369DA8:  STRB            R6, [R4,#0xE]
369DAA:  MOVW            R0, #0x4002
369DAE:  B               loc_36A022
369DB0:  LDR             R0, =(g_fxMan_ptr - 0x369DBC); jumptable 00369844 case 3
369DB2:  MOVS            R1, #0x18; int
369DB4:  MOVS            R2, #4; int
369DB6:  MOVS            R6, #4
369DB8:  ADD             R0, PC; g_fxMan_ptr
369DBA:  LDR             R0, [R0]; g_fxMan
369DBC:  ADD.W           R5, R0, #0xAC
369DC0:  MOV             R0, R5; this
369DC2:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369DC6:  MOV             R4, R0
369DC8:  LDR             R0, =(_ZTV18FxInfoSpriteRect_c_ptr - 0x369DCE)
369DCA:  ADD             R0, PC; _ZTV18FxInfoSpriteRect_c_ptr
369DCC:  LDR             R0, [R0]; `vtable for'FxInfoSpriteRect_c ...
369DCE:  ADDS            R0, #8
369DD0:  STR             R0, [R4]
369DD2:  ADD.W           R0, R4, #8; this
369DD6:  BLX             j__ZN17FxInterpInfo255_cC2Ev; FxInterpInfo255_c::FxInterpInfo255_c(void)
369DDA:  STRB            R6, [R4,#0xE]
369DDC:  MOVW            R0, #0x4004
369DE0:  B               loc_36A022
369DE2:  LDR             R0, =(g_fxMan_ptr - 0x369DEC); jumptable 00369844 case 7
369DE4:  MOVS            R1, #0x18; int
369DE6:  MOVS            R2, #4; int
369DE8:  ADD             R0, PC; g_fxMan_ptr
369DEA:  LDR             R0, [R0]; g_fxMan
369DEC:  ADDS            R0, #0xAC; this
369DEE:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369DF2:  MOV             R4, R0
369DF4:  LDR             R0, =(_ZTV16FxInfoHeatHaze_c_ptr - 0x369DFA)
369DF6:  ADD             R0, PC; _ZTV16FxInfoHeatHaze_c_ptr
369DF8:  LDR             R0, [R0]; `vtable for'FxInfoHeatHaze_c ...
369DFA:  ADDS            R0, #8
369DFC:  STR             R0, [R4]
369DFE:  ADD.W           R0, R4, #8; this
369E02:  BLX             j__ZN17FxInterpInfo255_cC2Ev; FxInterpInfo255_c::FxInterpInfo255_c(void)
369E06:  MOVS            R0, #0
369E08:  STRB            R0, [R4,#0xE]
369E0A:  MOVW            R0, #0x4008
369E0E:  STRH            R0, [R4,#4]
369E10:  B               loc_36A030; jumptable 003697AC cases 1,2,4-6,8-14,16-30
369E12:  LDR             R0, =(g_fxMan_ptr - 0x369E1C); jumptable 00369844 case 15
369E14:  MOVS            R1, #0x18; int
369E16:  MOVS            R2, #4; int
369E18:  ADD             R0, PC; g_fxMan_ptr
369E1A:  LDR             R0, [R0]; g_fxMan
369E1C:  ADD.W           R5, R0, #0xAC
369E20:  MOV             R0, R5; this
369E22:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369E26:  MOV             R4, R0
369E28:  LDR             R0, =(_ZTV13FxInfoTrail_c_ptr - 0x369E2E)
369E2A:  ADD             R0, PC; _ZTV13FxInfoTrail_c_ptr
369E2C:  LDR             R0, [R0]; `vtable for'FxInfoTrail_c ...
369E2E:  ADDS            R0, #8
369E30:  STR             R0, [R4]
369E32:  ADD.W           R0, R4, #8; this
369E36:  BLX             j__ZN18FxInterpInfoU255_cC2Ev; FxInterpInfoU255_c::FxInterpInfoU255_c(void)
369E3A:  MOVS            R0, #2
369E3C:  STRB            R0, [R4,#0xE]
369E3E:  MOVW            R0, #0x4010
369E42:  STRH            R0, [R4,#4]
369E44:  MOV             R0, R5
369E46:  MOVS            R1, #8
369E48:  B               loc_36A028
369E4A:  LDR             R0, =(g_fxMan_ptr - 0x369E54); jumptable 00369844 case 31
369E4C:  MOVS            R1, #0x18; int
369E4E:  MOVS            R2, #4; int
369E50:  ADD             R0, PC; g_fxMan_ptr
369E52:  LDR             R0, [R0]; g_fxMan
369E54:  ADD.W           R5, R0, #0xAC
369E58:  MOV             R0, R5; this
369E5A:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369E5E:  MOV             R4, R0
369E60:  LDR             R0, =(_ZTV12FxInfoFlat_c_ptr - 0x369E66)
369E62:  ADD             R0, PC; _ZTV12FxInfoFlat_c_ptr
369E64:  LDR             R0, [R0]; `vtable for'FxInfoFlat_c ...
369E66:  ADDS            R0, #8
369E68:  STR             R0, [R4]
369E6A:  ADD.W           R0, R4, #8; this
369E6E:  BLX             j__ZN19FxInterpInfoFloat_cC2Ev; FxInterpInfoFloat_c::FxInterpInfoFloat_c(void)
369E72:  MOVS            R0, #9
369E74:  MOVS            R1, #0x24 ; '$'
369E76:  STRB            R0, [R4,#0xE]
369E78:  MOVW            R0, #0x4020
369E7C:  STRH            R0, [R4,#4]
369E7E:  MOV             R0, R5
369E80:  B               loc_36A028
369E82:  LDR             R0, =(g_fxMan_ptr - 0x369E8C); jumptable 00369844 case 63
369E84:  MOVS            R1, #0x18; int
369E86:  MOVS            R2, #4; int
369E88:  ADD             R0, PC; g_fxMan_ptr
369E8A:  LDR             R0, [R0]; g_fxMan
369E8C:  ADD.W           R5, R0, #0xAC
369E90:  MOV             R0, R5; this
369E92:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369E96:  MOV             R4, R0
369E98:  LDR             R0, =(_ZTV11FxInfoDir_c_ptr - 0x369E9E)
369E9A:  ADD             R0, PC; _ZTV11FxInfoDir_c_ptr
369E9C:  LDR             R0, [R0]; `vtable for'FxInfoDir_c ...
369E9E:  ADDS            R0, #8
369EA0:  STR             R0, [R4]
369EA2:  ADD.W           R0, R4, #8; this
369EA6:  BLX             j__ZN19FxInterpInfoFloat_cC2Ev; FxInterpInfoFloat_c::FxInterpInfoFloat_c(void)
369EAA:  MOVS            R0, #3
369EAC:  STRB            R0, [R4,#0xE]
369EAE:  MOVW            R0, #0x4040
369EB2:  B               loc_369FB2
369EB4:  LDR             R0, =(g_fxMan_ptr - 0x369EBE); jumptable 0036990A case 1
369EB6:  MOVS            R1, #0x18; int
369EB8:  MOVS            R2, #4; int
369EBA:  ADD             R0, PC; g_fxMan_ptr
369EBC:  LDR             R0, [R0]; g_fxMan
369EBE:  ADD.W           R5, R0, #0xAC
369EC2:  MOV             R0, R5; this
369EC4:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369EC8:  MOV             R4, R0
369ECA:  LDR             R0, =(_ZTV13FxInfoForce_c_ptr - 0x369ED0)
369ECC:  ADD             R0, PC; _ZTV13FxInfoForce_c_ptr
369ECE:  LDR             R0, [R0]; `vtable for'FxInfoForce_c ...
369ED0:  ADDS            R0, #8
369ED2:  STR             R0, [R4]
369ED4:  ADD.W           R0, R4, #8; this
369ED8:  BLX             j__ZN16FxInterpInfo32_cC2Ev; FxInterpInfo32_c::FxInterpInfo32_c(void)
369EDC:  MOVS            R0, #3
369EDE:  STRB            R0, [R4,#0xE]
369EE0:  MOVW            R0, #0x2002
369EE4:  B               loc_369FB2
369EE6:  LDR             R0, =(g_fxMan_ptr - 0x369EF0); jumptable 0036990A case 3
369EE8:  MOVS            R1, #0x18; int
369EEA:  MOVS            R2, #4; int
369EEC:  ADD             R0, PC; g_fxMan_ptr
369EEE:  LDR             R0, [R0]; g_fxMan
369EF0:  ADD.W           R5, R0, #0xAC
369EF4:  MOV             R0, R5; this
369EF6:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369EFA:  MOV             R4, R0
369EFC:  LDR             R0, =(_ZTV16FxInfoFriction_c_ptr - 0x369F02)
369EFE:  ADD             R0, PC; _ZTV16FxInfoFriction_c_ptr
369F00:  LDR             R0, [R0]; `vtable for'FxInfoFriction_c ...
369F02:  ADDS            R0, #8
369F04:  STR             R0, [R4]
369F06:  ADD.W           R0, R4, #8; this
369F0A:  BLX             j__ZN16FxInterpInfo32_cC2Ev; FxInterpInfo32_c::FxInterpInfo32_c(void)
369F0E:  MOVS            R0, #1
369F10:  STRB            R0, [R4,#0xE]
369F12:  MOVW            R0, #0x2004
369F16:  B               loc_369FEA
369F18:  LDR             R0, =(g_fxMan_ptr - 0x369F24); jumptable 0036990A case 7
369F1A:  MOVS            R1, #0x18; int
369F1C:  MOVS            R2, #4; int
369F1E:  MOVS            R6, #4
369F20:  ADD             R0, PC; g_fxMan_ptr
369F22:  LDR             R0, [R0]; g_fxMan
369F24:  ADD.W           R5, R0, #0xAC
369F28:  MOV             R0, R5; this
369F2A:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369F2E:  MOV             R4, R0
369F30:  LDR             R0, =(_ZTV17FxInfoAttractPt_c_ptr - 0x369F36)
369F32:  ADD             R0, PC; _ZTV17FxInfoAttractPt_c_ptr
369F34:  LDR             R0, [R0]; `vtable for'FxInfoAttractPt_c ...
369F36:  ADDS            R0, #8
369F38:  STR             R0, [R4]
369F3A:  ADD.W           R0, R4, #8; this
369F3E:  BLX             j__ZN16FxInterpInfo32_cC2Ev; FxInterpInfo32_c::FxInterpInfo32_c(void)
369F42:  STRB            R6, [R4,#0xE]
369F44:  MOVW            R0, #0x2008
369F48:  B               loc_36A022
369F4A:  LDR             R0, =(g_fxMan_ptr - 0x369F54); jumptable 0036990A case 15
369F4C:  MOVS            R1, #0x18; int
369F4E:  MOVS            R2, #4; int
369F50:  ADD             R0, PC; g_fxMan_ptr
369F52:  LDR             R0, [R0]; g_fxMan
369F54:  ADD.W           R5, R0, #0xAC
369F58:  MOV             R0, R5; this
369F5A:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369F5E:  MOV             R4, R0
369F60:  LDR             R0, =(_ZTV19FxInfoAttractLine_c_ptr - 0x369F66)
369F62:  ADD             R0, PC; _ZTV19FxInfoAttractLine_c_ptr
369F64:  LDR             R0, [R0]; `vtable for'FxInfoAttractLine_c ...
369F66:  ADDS            R0, #8
369F68:  STR             R0, [R4]
369F6A:  ADD.W           R0, R4, #8; this
369F6E:  BLX             j__ZN16FxInterpInfo32_cC2Ev; FxInterpInfo32_c::FxInterpInfo32_c(void)
369F72:  MOVS            R0, #7
369F74:  STRB            R0, [R4,#0xE]
369F76:  MOVW            R0, #0x2010
369F7A:  STRH            R0, [R4,#4]
369F7C:  MOV             R0, R5
369F7E:  MOVS            R1, #0x1C
369F80:  B               loc_36A028
369F82:  LDR             R0, =(g_fxMan_ptr - 0x369F8C); jumptable 0036990A case 31
369F84:  MOVS            R1, #0x18; int
369F86:  MOVS            R2, #4; int
369F88:  ADD             R0, PC; g_fxMan_ptr
369F8A:  LDR             R0, [R0]; g_fxMan
369F8C:  ADD.W           R5, R0, #0xAC
369F90:  MOV             R0, R5; this
369F92:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369F96:  MOV             R4, R0
369F98:  LDR             R0, =(_ZTV21FxInfoGroundCollide_c_ptr - 0x369F9E)
369F9A:  ADD             R0, PC; _ZTV21FxInfoGroundCollide_c_ptr
369F9C:  LDR             R0, [R0]; `vtable for'FxInfoGroundCollide_c ...
369F9E:  ADDS            R0, #8
369FA0:  STR             R0, [R4]
369FA2:  ADD.W           R0, R4, #8; this
369FA6:  BLX             j__ZN16FxInterpInfo32_cC2Ev; FxInterpInfo32_c::FxInterpInfo32_c(void)
369FAA:  MOVS            R0, #3
369FAC:  STRB            R0, [R4,#0xE]
369FAE:  MOVW            R0, #0x2020
369FB2:  STRH            R0, [R4,#4]
369FB4:  MOV             R0, R5
369FB6:  MOVS            R1, #0xC
369FB8:  B               loc_36A028
369FBA:  LDR             R0, =(g_fxMan_ptr - 0x369FC4); jumptable 0036990A case 63
369FBC:  MOVS            R1, #0x18; int
369FBE:  MOVS            R2, #4; int
369FC0:  ADD             R0, PC; g_fxMan_ptr
369FC2:  LDR             R0, [R0]; g_fxMan
369FC4:  ADD.W           R5, R0, #0xAC
369FC8:  MOV             R0, R5; this
369FCA:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
369FCE:  MOV             R4, R0
369FD0:  LDR             R0, =(_ZTV12FxInfoWind_c_ptr - 0x369FD6)
369FD2:  ADD             R0, PC; _ZTV12FxInfoWind_c_ptr
369FD4:  LDR             R0, [R0]; `vtable for'FxInfoWind_c ...
369FD6:  ADDS            R0, #8
369FD8:  STR             R0, [R4]
369FDA:  ADD.W           R0, R4, #8; this
369FDE:  BLX             j__ZN16FxInterpInfo32_cC2Ev; FxInterpInfo32_c::FxInterpInfo32_c(void)
369FE2:  MOVS            R0, #1
369FE4:  STRB            R0, [R4,#0xE]
369FE6:  MOV.W           R0, #0x2040
369FEA:  STRH            R0, [R4,#4]
369FEC:  MOV             R0, R5
369FEE:  MOVS            R1, #4
369FF0:  B               loc_36A028
369FF2:  LDR             R0, =(g_fxMan_ptr - 0x369FFE)
369FF4:  MOVS            R1, #0x18; int
369FF6:  MOVS            R2, #4; int
369FF8:  MOVS            R6, #4
369FFA:  ADD             R0, PC; g_fxMan_ptr
369FFC:  LDR             R0, [R0]; g_fxMan
369FFE:  ADD.W           R5, R0, #0xAC
36A002:  MOV             R0, R5; this
36A004:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
36A008:  MOV             R4, R0
36A00A:  LDR             R0, =(_ZTV17FxInfoEmWeather_c_ptr - 0x36A010)
36A00C:  ADD             R0, PC; _ZTV17FxInfoEmWeather_c_ptr
36A00E:  LDR             R0, [R0]; `vtable for'FxInfoEmWeather_c ...
36A010:  ADDS            R0, #8
36A012:  STR             R0, [R4]
36A014:  ADD.W           R0, R4, #8; this
36A018:  BLX             j__ZN19FxInterpInfoFloat_cC2Ev; FxInterpInfoFloat_c::FxInterpInfoFloat_c(void)
36A01C:  MOV.W           R0, #0x1100
36A020:  STRB            R6, [R4,#0xE]
36A022:  STRH            R0, [R4,#4]
36A024:  MOV             R0, R5; this
36A026:  MOVS            R1, #0x10; int
36A028:  MOVS            R2, #4; int
36A02A:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
36A02E:  STR             R0, [R4,#0x14]
36A030:  MOV             R0, R4; jumptable 003697AC cases 1,2,4-6,8-14,16-30
36A032:  POP.W           {R11}
36A036:  POP             {R4-R7,PC}
