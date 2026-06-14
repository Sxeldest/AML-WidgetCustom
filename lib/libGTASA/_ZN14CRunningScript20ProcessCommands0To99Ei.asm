; =========================================================
; Game Engine Function: _ZN14CRunningScript20ProcessCommands0To99Ei
; Address            : 0x32B724 - 0x32C260
; =========================================================

32B724:  PUSH            {R4-R7,LR}
32B726:  ADD             R7, SP, #0xC
32B728:  PUSH.W          {R8}
32B72C:  VPUSH           {D8-D10}
32B730:  SUB             SP, SP, #0x10
32B732:  MOV             R4, R0
32B734:  CMP             R1, #0x63 ; 'c'; switch 100 cases
32B736:  BHI.W           def_32B73C; jumptable 0032B73C default case, cases 61-65,71-76,84-87
32B73A:  MOVS            R6, #0
32B73C:  TBH.W           [PC,R1,LSL#1]; switch jump
32B740:  DCW 0x3E8; jump table for switch statement
32B742:  DCW 0xF2
32B744:  DCW 0x10A
32B746:  DCW 0x11C
32B748:  DCW 0x137
32B74A:  DCW 0x145
32B74C:  DCW 0x153
32B74E:  DCW 0x161
32B750:  DCW 0x172
32B752:  DCW 0x180
32B754:  DCW 0x18E
32B756:  DCW 0x1A1
32B758:  DCW 0x1B8
32B75A:  DCW 0x1C6
32B75C:  DCW 0x1D4
32B75E:  DCW 0x1E7
32B760:  DCW 0x1FE
32B762:  DCW 0x20C
32B764:  DCW 0x21A
32B766:  DCW 0x22D
32B768:  DCW 0x244
32B76A:  DCW 0x252
32B76C:  DCW 0x260
32B76E:  DCW 0x274
32B770:  DCW 0x28B
32B772:  DCW 0x299
32B774:  DCW 0x2AA
32B776:  DCW 0x2B7
32B778:  DCW 0x64
32B77A:  DCW 0x64
32B77C:  DCW 0x64
32B77E:  DCW 0x64
32B780:  DCW 0x2C8
32B782:  DCW 0x2D6
32B784:  DCW 0x2EB
32B786:  DCW 0x2FA
32B788:  DCW 0x71
32B78A:  DCW 0x71
32B78C:  DCW 0x71
32B78E:  DCW 0x71
32B790:  DCW 0x314
32B792:  DCW 0x322
32B794:  DCW 0x333
32B796:  DCW 0x340
32B798:  DCW 0x80
32B79A:  DCW 0x80
32B79C:  DCW 0x80
32B79E:  DCW 0x80
32B7A0:  DCW 0x351
32B7A2:  DCW 0x35F
32B7A4:  DCW 0x374
32B7A6:  DCW 0x381
32B7A8:  DCW 0x8D
32B7AA:  DCW 0x8D
32B7AC:  DCW 0x8D
32B7AE:  DCW 0x8D
32B7B0:  DCW 0x39B
32B7B2:  DCW 0x3A9
32B7B4:  DCW 0xB4
32B7B6:  DCW 0xB4
32B7B8:  DCW 0xB4
32B7BA:  DCW 0x3BB
32B7BC:  DCW 0x3BB
32B7BE:  DCW 0x3BB
32B7C0:  DCW 0x3BB
32B7C2:  DCW 0x3BB
32B7C4:  DCW 0x3BD
32B7C6:  DCW 0x3CB
32B7C8:  DCW 0xC1
32B7CA:  DCW 0xC1
32B7CC:  DCW 0xC1
32B7CE:  DCW 0x3BB
32B7D0:  DCW 0x3BB
32B7D2:  DCW 0x3BB
32B7D4:  DCW 0x3BB
32B7D6:  DCW 0x3BB
32B7D8:  DCW 0x3BB
32B7DA:  DCW 0x3EF
32B7DC:  DCW 0x3FA
32B7DE:  DCW 0x462
32B7E0:  DCW 0x4C8
32B7E2:  DCW 0x4DD
32B7E4:  DCW 0x4E5
32B7E6:  DCW 0x4EB
32B7E8:  DCW 0x3BB
32B7EA:  DCW 0x3BB
32B7EC:  DCW 0x3BB
32B7EE:  DCW 0x3BB
32B7F0:  DCW 0x9C
32B7F2:  DCW 0xA9
32B7F4:  DCW 0x9C
32B7F6:  DCW 0xA9
32B7F8:  DCW 0x9C
32B7FA:  DCW 0xA9
32B7FC:  DCW 0x9C
32B7FE:  DCW 0xA9
32B800:  DCW 0xD2
32B802:  DCW 0xDF
32B804:  DCW 0xD2
32B806:  DCW 0xDF
32B808:  MOV             R0, R4; jumptable 0032B73C cases 28-31
32B80A:  MOVS            R1, #0; unsigned __int8
32B80C:  MOVS            R6, #0
32B80E:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32B812:  MOV             R5, R0
32B814:  MOV             R0, R4; this
32B816:  MOVS            R1, #0; unsigned __int8
32B818:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32B81C:  LDR             R0, [R0]
32B81E:  LDR             R1, [R5]
32B820:  B               loc_32BCCC
32B822:  MOV             R0, R4; jumptable 0032B73C cases 36-39
32B824:  MOVS            R1, #0; unsigned __int8
32B826:  MOVS            R6, #0
32B828:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32B82C:  MOV             R5, R0
32B82E:  MOV             R0, R4; this
32B830:  MOVS            R1, #0; unsigned __int8
32B832:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32B836:  VLDR            S0, [R0]
32B83A:  VLDR            S2, [R5]
32B83E:  B               loc_32BD56
32B840:  MOV             R0, R4; jumptable 0032B73C cases 44-47
32B842:  MOVS            R1, #0; unsigned __int8
32B844:  MOVS            R6, #0
32B846:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32B84A:  MOV             R5, R0
32B84C:  MOV             R0, R4; this
32B84E:  MOVS            R1, #0; unsigned __int8
32B850:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32B854:  LDR             R0, [R0]
32B856:  LDR             R1, [R5]
32B858:  B               loc_32BDDE
32B85A:  MOV             R0, R4; jumptable 0032B73C cases 52-55
32B85C:  MOVS            R1, #0; unsigned __int8
32B85E:  MOVS            R6, #0
32B860:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32B864:  MOV             R5, R0
32B866:  MOV             R0, R4; this
32B868:  MOVS            R1, #0; unsigned __int8
32B86A:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32B86E:  VLDR            S0, [R0]
32B872:  VLDR            S2, [R5]
32B876:  B               loc_32BE64
32B878:  MOV             R0, R4; jumptable 0032B73C cases 88,90,92,94
32B87A:  MOVS            R1, #0; unsigned __int8
32B87C:  MOVS            R6, #0
32B87E:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32B882:  MOV             R5, R0
32B884:  MOV             R0, R4; this
32B886:  MOVS            R1, #0; unsigned __int8
32B888:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32B88C:  LDR             R0, [R0]
32B88E:  LDR             R1, [R5]
32B890:  B               loc_32BA7C
32B892:  MOV             R0, R4; jumptable 0032B73C cases 89,91,93,95
32B894:  MOVS            R1, #0; unsigned __int8
32B896:  MOVS            R6, #0
32B898:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32B89C:  MOV             R5, R0
32B89E:  MOV             R0, R4; this
32B8A0:  MOVS            R1, #0; unsigned __int8
32B8A2:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32B8A6:  B               loc_32BA9E
32B8A8:  MOV             R0, R4; jumptable 0032B73C cases 58-60
32B8AA:  MOVS            R1, #0; unsigned __int8
32B8AC:  MOVS            R6, #0
32B8AE:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32B8B2:  MOV             R5, R0
32B8B4:  MOV             R0, R4; this
32B8B6:  MOVS            R1, #0; unsigned __int8
32B8B8:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32B8BC:  LDR             R0, [R0]
32B8BE:  LDR             R1, [R5]
32B8C0:  B               loc_32BEB2
32B8C2:  MOV             R0, R4; jumptable 0032B73C cases 68-70
32B8C4:  MOVS            R1, #0; unsigned __int8
32B8C6:  MOVS            R6, #0
32B8C8:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32B8CC:  MOV             R5, R0
32B8CE:  MOV             R0, R4; this
32B8D0:  MOVS            R1, #0; unsigned __int8
32B8D2:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32B8D6:  VLDR            S0, [R0]
32B8DA:  VLDR            S2, [R5]
32B8DE:  VCMP.F32        S2, S0
32B8E2:  B               loc_32BEFE
32B8E4:  MOV             R0, R4; jumptable 0032B73C cases 96,98
32B8E6:  MOVS            R1, #0; unsigned __int8
32B8E8:  MOVS            R6, #0
32B8EA:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32B8EE:  MOV             R5, R0
32B8F0:  MOV             R0, R4; this
32B8F2:  MOVS            R1, #0; unsigned __int8
32B8F4:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32B8F8:  LDR             R0, [R0]
32B8FA:  LDR             R1, [R5]
32B8FC:  B               loc_32BB08
32B8FE:  MOV             R0, R4; jumptable 0032B73C cases 97,99
32B900:  MOVS            R1, #0; unsigned __int8
32B902:  MOVS            R6, #0
32B904:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32B908:  MOV             R5, R0
32B90A:  MOV             R0, R4; this
32B90C:  MOVS            R1, #0; unsigned __int8
32B90E:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32B912:  VLDR            S0, [R0]
32B916:  VLDR            S2, [R5]
32B91A:  VSUB.F32        S0, S2, S0
32B91E:  VSTR            S0, [R5]
32B922:  B               loc_32BF10; jumptable 0032B73C case 0
32B924:  MOV             R0, R4; jumptable 0032B73C case 1
32B926:  MOVS            R1, #1; __int16
32B928:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32B92C:  LDR.W           R0, =(ScriptParams_ptr - 0x32B938)
32B930:  MOVW            R1, #0x4D2
32B934:  ADD             R0, PC; ScriptParams_ptr
32B936:  LDR             R0, [R0]; ScriptParams
32B938:  LDR             R0, [R0]
32B93A:  CMP             R0, R1
32B93C:  BEQ.W           loc_32BF30
32B940:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x32B94A)
32B944:  MOVS            R6, #1
32B946:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
32B948:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
32B94A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
32B94C:  ADD             R0, R1
32B94E:  STR.W           R0, [R4,#0xEC]
32B952:  B               loc_32BF10; jumptable 0032B73C case 0
32B954:  MOV             R0, R4; jumptable 0032B73C case 2
32B956:  MOVS            R1, #1; __int16
32B958:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32B95C:  LDR.W           R0, =(ScriptParams_ptr - 0x32B964)
32B960:  ADD             R0, PC; ScriptParams_ptr
32B962:  LDR             R0, [R0]; ScriptParams
32B964:  LDR             R0, [R0]
32B966:  CMP.W           R0, #0xFFFFFFFF
32B96A:  BLE.W           loc_32C1D8
32B96E:  LDR.W           R1, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x32B976)
32B972:  ADD             R1, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
32B974:  B.W             loc_32C1D2
32B978:  MOV             R0, R4; jumptable 0032B73C case 3
32B97A:  MOVS            R1, #1; __int16
32B97C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32B980:  LDR.W           R0, =(ScriptParams_ptr - 0x32B98C)
32B984:  VLDR            S2, =0.001
32B988:  ADD             R0, PC; ScriptParams_ptr
32B98A:  LDR             R0, [R0]; ScriptParams
32B98C:  LDR             R0, [R0]
32B98E:  VMOV            S0, R0
32B992:  LDR.W           R0, =(TheCamera_ptr - 0x32B99E)
32B996:  VCVT.F32.S32    S0, S0
32B99A:  ADD             R0, PC; TheCamera_ptr
32B99C:  LDR             R0, [R0]; TheCamera ; CCamera *
32B99E:  VMUL.F32        S0, S0, S2
32B9A2:  VMOV            R1, S0; float
32B9A6:  BLX             j__Z13CamShakeNoPosP7CCameraf; CamShakeNoPos(CCamera *,float)
32B9AA:  MOVS            R6, #0
32B9AC:  B               loc_32BF10; jumptable 0032B73C case 0
32B9AE:  MOV             R0, R4; jumptable 0032B73C case 4
32B9B0:  MOVS            R1, #0; unsigned __int8
32B9B2:  MOVS            R6, #0
32B9B4:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32B9B8:  MOV             R5, R0
32B9BA:  MOV             R0, R4; this
32B9BC:  MOVS            R1, #1; __int16
32B9BE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32B9C2:  LDR.W           R0, =(ScriptParams_ptr - 0x32B9CA)
32B9C6:  ADD             R0, PC; ScriptParams_ptr
32B9C8:  B               loc_32BA1C
32B9CA:  MOV             R0, R4; jumptable 0032B73C case 5
32B9CC:  MOVS            R1, #0; unsigned __int8
32B9CE:  MOVS            R6, #0
32B9D0:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32B9D4:  MOV             R5, R0
32B9D6:  MOV             R0, R4; this
32B9D8:  MOVS            R1, #1; __int16
32B9DA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32B9DE:  LDR.W           R0, =(ScriptParams_ptr - 0x32B9E6)
32B9E2:  ADD             R0, PC; ScriptParams_ptr
32B9E4:  B               loc_32BA1C
32B9E6:  MOV             R0, R4; jumptable 0032B73C case 6
32B9E8:  MOVS            R1, #0; unsigned __int8
32B9EA:  MOVS            R6, #0
32B9EC:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32B9F0:  MOV             R5, R0
32B9F2:  MOV             R0, R4; this
32B9F4:  MOVS            R1, #1; __int16
32B9F6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32B9FA:  LDR.W           R0, =(ScriptParams_ptr - 0x32BA02)
32B9FE:  ADD             R0, PC; ScriptParams_ptr
32BA00:  B               loc_32BA1C
32BA02:  MOV             R0, R4; jumptable 0032B73C case 7
32BA04:  MOVS            R1, #0; unsigned __int8
32BA06:  MOVS            R6, #0
32BA08:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BA0C:  MOV             R5, R0
32BA0E:  MOV             R0, R4; this
32BA10:  MOVS            R1, #1; __int16
32BA12:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BA16:  LDR.W           R0, =(ScriptParams_ptr - 0x32BA1E)
32BA1A:  ADD             R0, PC; ScriptParams_ptr
32BA1C:  LDR             R0, [R0]; ScriptParams
32BA1E:  LDR             R0, [R0]
32BA20:  STR             R0, [R5]
32BA22:  B               loc_32BF10; jumptable 0032B73C case 0
32BA24:  MOV             R0, R4; jumptable 0032B73C case 8
32BA26:  MOVS            R1, #0; unsigned __int8
32BA28:  MOVS            R6, #0
32BA2A:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BA2E:  MOV             R5, R0
32BA30:  MOV             R0, R4; this
32BA32:  MOVS            R1, #1; __int16
32BA34:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BA38:  LDR.W           R0, =(ScriptParams_ptr - 0x32BA40)
32BA3C:  ADD             R0, PC; ScriptParams_ptr
32BA3E:  B               loc_32BA76
32BA40:  MOV             R0, R4; jumptable 0032B73C case 9
32BA42:  MOVS            R1, #0; unsigned __int8
32BA44:  MOVS            R6, #0
32BA46:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BA4A:  MOV             R5, R0
32BA4C:  MOV             R0, R4; this
32BA4E:  MOVS            R1, #1; __int16
32BA50:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BA54:  LDR.W           R0, =(ScriptParams_ptr - 0x32BA5C)
32BA58:  ADD             R0, PC; ScriptParams_ptr
32BA5A:  B               loc_32BA9C
32BA5C:  MOV             R0, R4; jumptable 0032B73C case 10
32BA5E:  MOVS            R1, #0; unsigned __int8
32BA60:  MOVS            R6, #0
32BA62:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BA66:  MOV             R5, R0
32BA68:  MOV             R0, R4; this
32BA6A:  MOVS            R1, #1; __int16
32BA6C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BA70:  LDR.W           R0, =(ScriptParams_ptr - 0x32BA78)
32BA74:  ADD             R0, PC; ScriptParams_ptr
32BA76:  LDR             R0, [R0]; ScriptParams
32BA78:  LDR             R1, [R5]
32BA7A:  LDR             R0, [R0]
32BA7C:  ADD             R0, R1
32BA7E:  STR             R0, [R5]
32BA80:  B               loc_32BF10; jumptable 0032B73C case 0
32BA82:  MOV             R0, R4; jumptable 0032B73C case 11
32BA84:  MOVS            R1, #0; unsigned __int8
32BA86:  MOVS            R6, #0
32BA88:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BA8C:  MOV             R5, R0
32BA8E:  MOV             R0, R4; this
32BA90:  MOVS            R1, #1; __int16
32BA92:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BA96:  LDR.W           R0, =(ScriptParams_ptr - 0x32BA9E)
32BA9A:  ADD             R0, PC; ScriptParams_ptr
32BA9C:  LDR             R0, [R0]; ScriptParams
32BA9E:  VLDR            S0, [R5]
32BAA2:  VLDR            S2, [R0]
32BAA6:  VADD.F32        S0, S2, S0
32BAAA:  VSTR            S0, [R5]
32BAAE:  B               loc_32BF10; jumptable 0032B73C case 0
32BAB0:  MOV             R0, R4; jumptable 0032B73C case 12
32BAB2:  MOVS            R1, #0; unsigned __int8
32BAB4:  MOVS            R6, #0
32BAB6:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BABA:  MOV             R5, R0
32BABC:  MOV             R0, R4; this
32BABE:  MOVS            R1, #1; __int16
32BAC0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BAC4:  LDR.W           R0, =(ScriptParams_ptr - 0x32BACC)
32BAC8:  ADD             R0, PC; ScriptParams_ptr
32BACA:  B               loc_32BB02
32BACC:  MOV             R0, R4; jumptable 0032B73C case 13
32BACE:  MOVS            R1, #0; unsigned __int8
32BAD0:  MOVS            R6, #0
32BAD2:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BAD6:  MOV             R5, R0
32BAD8:  MOV             R0, R4; this
32BADA:  MOVS            R1, #1; __int16
32BADC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BAE0:  LDR.W           R0, =(ScriptParams_ptr - 0x32BAE8)
32BAE4:  ADD             R0, PC; ScriptParams_ptr
32BAE6:  B               loc_32BB28
32BAE8:  MOV             R0, R4; jumptable 0032B73C case 14
32BAEA:  MOVS            R1, #0; unsigned __int8
32BAEC:  MOVS            R6, #0
32BAEE:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BAF2:  MOV             R5, R0
32BAF4:  MOV             R0, R4; this
32BAF6:  MOVS            R1, #1; __int16
32BAF8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BAFC:  LDR.W           R0, =(ScriptParams_ptr - 0x32BB04)
32BB00:  ADD             R0, PC; ScriptParams_ptr
32BB02:  LDR             R0, [R0]; ScriptParams
32BB04:  LDR             R1, [R5]
32BB06:  LDR             R0, [R0]
32BB08:  SUBS            R0, R1, R0
32BB0A:  STR             R0, [R5]
32BB0C:  B               loc_32BF10; jumptable 0032B73C case 0
32BB0E:  MOV             R0, R4; jumptable 0032B73C case 15
32BB10:  MOVS            R1, #0; unsigned __int8
32BB12:  MOVS            R6, #0
32BB14:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BB18:  MOV             R5, R0
32BB1A:  MOV             R0, R4; this
32BB1C:  MOVS            R1, #1; __int16
32BB1E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BB22:  LDR.W           R0, =(ScriptParams_ptr - 0x32BB2A)
32BB26:  ADD             R0, PC; ScriptParams_ptr
32BB28:  LDR             R0, [R0]; ScriptParams
32BB2A:  VLDR            S0, [R5]
32BB2E:  VLDR            S2, [R0]
32BB32:  VSUB.F32        S0, S0, S2
32BB36:  VSTR            S0, [R5]
32BB3A:  B               loc_32BF10; jumptable 0032B73C case 0
32BB3C:  MOV             R0, R4; jumptable 0032B73C case 16
32BB3E:  MOVS            R1, #0; unsigned __int8
32BB40:  MOVS            R6, #0
32BB42:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BB46:  MOV             R5, R0
32BB48:  MOV             R0, R4; this
32BB4A:  MOVS            R1, #1; __int16
32BB4C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BB50:  LDR.W           R0, =(ScriptParams_ptr - 0x32BB58)
32BB54:  ADD             R0, PC; ScriptParams_ptr
32BB56:  B               loc_32BB8E
32BB58:  MOV             R0, R4; jumptable 0032B73C case 17
32BB5A:  MOVS            R1, #0; unsigned __int8
32BB5C:  MOVS            R6, #0
32BB5E:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BB62:  MOV             R5, R0
32BB64:  MOV             R0, R4; this
32BB66:  MOVS            R1, #1; __int16
32BB68:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BB6C:  LDR.W           R0, =(ScriptParams_ptr - 0x32BB74)
32BB70:  ADD             R0, PC; ScriptParams_ptr
32BB72:  B               loc_32BBB4
32BB74:  MOV             R0, R4; jumptable 0032B73C case 18
32BB76:  MOVS            R1, #0; unsigned __int8
32BB78:  MOVS            R6, #0
32BB7A:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BB7E:  MOV             R5, R0
32BB80:  MOV             R0, R4; this
32BB82:  MOVS            R1, #1; __int16
32BB84:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BB88:  LDR.W           R0, =(ScriptParams_ptr - 0x32BB90)
32BB8C:  ADD             R0, PC; ScriptParams_ptr
32BB8E:  LDR             R0, [R0]; ScriptParams
32BB90:  LDR             R1, [R5]
32BB92:  LDR             R0, [R0]
32BB94:  MULS            R0, R1
32BB96:  STR             R0, [R5]
32BB98:  B               loc_32BF10; jumptable 0032B73C case 0
32BB9A:  MOV             R0, R4; jumptable 0032B73C case 19
32BB9C:  MOVS            R1, #0; unsigned __int8
32BB9E:  MOVS            R6, #0
32BBA0:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BBA4:  MOV             R5, R0
32BBA6:  MOV             R0, R4; this
32BBA8:  MOVS            R1, #1; __int16
32BBAA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BBAE:  LDR.W           R0, =(ScriptParams_ptr - 0x32BBB6)
32BBB2:  ADD             R0, PC; ScriptParams_ptr
32BBB4:  LDR             R0, [R0]; ScriptParams
32BBB6:  VLDR            S0, [R5]
32BBBA:  VLDR            S2, [R0]
32BBBE:  VMUL.F32        S0, S2, S0
32BBC2:  VSTR            S0, [R5]
32BBC6:  B               loc_32BF10; jumptable 0032B73C case 0
32BBC8:  MOV             R0, R4; jumptable 0032B73C case 20
32BBCA:  MOVS            R1, #0; unsigned __int8
32BBCC:  MOVS            R6, #0
32BBCE:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BBD2:  MOV             R5, R0
32BBD4:  MOV             R0, R4; this
32BBD6:  MOVS            R1, #1; __int16
32BBD8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BBDC:  LDR.W           R0, =(ScriptParams_ptr - 0x32BBE4)
32BBE0:  ADD             R0, PC; ScriptParams_ptr
32BBE2:  B               loc_32BC1A
32BBE4:  MOV             R0, R4; jumptable 0032B73C case 21
32BBE6:  MOVS            R1, #0; unsigned __int8
32BBE8:  MOVS            R6, #0
32BBEA:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BBEE:  MOV             R5, R0
32BBF0:  MOV             R0, R4; this
32BBF2:  MOVS            R1, #1; __int16
32BBF4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BBF8:  LDR.W           R0, =(ScriptParams_ptr - 0x32BC00)
32BBFC:  ADD             R0, PC; ScriptParams_ptr
32BBFE:  B               loc_32BC42
32BC00:  MOV             R0, R4; jumptable 0032B73C case 22
32BC02:  MOVS            R1, #0; unsigned __int8
32BC04:  MOVS            R6, #0
32BC06:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BC0A:  MOV             R5, R0
32BC0C:  MOV             R0, R4; this
32BC0E:  MOVS            R1, #1; __int16
32BC10:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BC14:  LDR.W           R0, =(ScriptParams_ptr - 0x32BC1C)
32BC18:  ADD             R0, PC; ScriptParams_ptr
32BC1A:  LDR             R1, [R0]; ScriptParams
32BC1C:  LDR             R0, [R5]
32BC1E:  LDR             R1, [R1]
32BC20:  BLX             __aeabi_idiv
32BC24:  STR             R0, [R5]
32BC26:  B               loc_32BF10; jumptable 0032B73C case 0
32BC28:  MOV             R0, R4; jumptable 0032B73C case 23
32BC2A:  MOVS            R1, #0; unsigned __int8
32BC2C:  MOVS            R6, #0
32BC2E:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BC32:  MOV             R5, R0
32BC34:  MOV             R0, R4; this
32BC36:  MOVS            R1, #1; __int16
32BC38:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BC3C:  LDR.W           R0, =(ScriptParams_ptr - 0x32BC44)
32BC40:  ADD             R0, PC; ScriptParams_ptr
32BC42:  LDR             R0, [R0]; ScriptParams
32BC44:  VLDR            S0, [R5]
32BC48:  VLDR            S2, [R0]
32BC4C:  VDIV.F32        S0, S0, S2
32BC50:  VSTR            S0, [R5]
32BC54:  B               loc_32BF10; jumptable 0032B73C case 0
32BC56:  MOV             R0, R4; jumptable 0032B73C case 24
32BC58:  MOVS            R1, #0; unsigned __int8
32BC5A:  MOVS            R6, #0
32BC5C:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BC60:  MOV             R5, R0
32BC62:  MOV             R0, R4; this
32BC64:  MOVS            R1, #1; __int16
32BC66:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BC6A:  LDR.W           R0, =(ScriptParams_ptr - 0x32BC72)
32BC6E:  ADD             R0, PC; ScriptParams_ptr
32BC70:  B               loc_32BC8C
32BC72:  MOV             R0, R4; jumptable 0032B73C case 25
32BC74:  MOVS            R1, #0; unsigned __int8
32BC76:  MOVS            R6, #0
32BC78:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BC7C:  MOV             R5, R0
32BC7E:  MOV             R0, R4; this
32BC80:  MOVS            R1, #1; __int16
32BC82:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BC86:  LDR.W           R0, =(ScriptParams_ptr - 0x32BC8E)
32BC8A:  ADD             R0, PC; ScriptParams_ptr
32BC8C:  LDR             R0, [R0]; ScriptParams
32BC8E:  LDR             R1, [R5]
32BC90:  LDR             R0, [R0]
32BC92:  B               loc_32BCCC
32BC94:  MOV             R0, R4; jumptable 0032B73C case 26
32BC96:  MOVS            R1, #1; __int16
32BC98:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BC9C:  MOV             R0, R4; this
32BC9E:  MOVS            R1, #0; unsigned __int8
32BCA0:  MOVS            R6, #0
32BCA2:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BCA6:  LDR.W           R1, =(ScriptParams_ptr - 0x32BCAE)
32BCAA:  ADD             R1, PC; ScriptParams_ptr
32BCAC:  B               loc_32BCC6
32BCAE:  MOV             R0, R4; jumptable 0032B73C case 27
32BCB0:  MOVS            R1, #1; __int16
32BCB2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BCB6:  MOV             R0, R4; this
32BCB8:  MOVS            R1, #0; unsigned __int8
32BCBA:  MOVS            R6, #0
32BCBC:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BCC0:  LDR.W           R1, =(ScriptParams_ptr - 0x32BCC8)
32BCC4:  ADD             R1, PC; ScriptParams_ptr
32BCC6:  LDR             R1, [R1]; ScriptParams
32BCC8:  LDR             R0, [R0]
32BCCA:  LDR             R1, [R1]
32BCCC:  CMP             R1, R0
32BCCE:  B               loc_32BD5E
32BCD0:  MOV             R0, R4; jumptable 0032B73C case 32
32BCD2:  MOVS            R1, #0; unsigned __int8
32BCD4:  MOVS            R6, #0
32BCD6:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BCDA:  MOV             R5, R0
32BCDC:  MOV             R0, R4; this
32BCDE:  MOVS            R1, #1; __int16
32BCE0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BCE4:  LDR.W           R0, =(ScriptParams_ptr - 0x32BCEC)
32BCE8:  ADD             R0, PC; ScriptParams_ptr
32BCEA:  B               loc_32BD06
32BCEC:  MOV             R0, R4; jumptable 0032B73C case 33
32BCEE:  MOVS            R1, #0; unsigned __int8
32BCF0:  MOVS            R6, #0
32BCF2:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BCF6:  MOV             R5, R0
32BCF8:  MOV             R0, R4; this
32BCFA:  MOVS            R1, #1; __int16
32BCFC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BD00:  LDR.W           R0, =(ScriptParams_ptr - 0x32BD08)
32BD04:  ADD             R0, PC; ScriptParams_ptr
32BD06:  LDR             R0, [R0]; ScriptParams
32BD08:  VLDR            S0, [R5]
32BD0C:  VLDR            S2, [R0]
32BD10:  VCMPE.F32       S0, S2
32BD14:  B               loc_32BD5A
32BD16:  MOV             R0, R4; jumptable 0032B73C case 34
32BD18:  MOVS            R1, #1; __int16
32BD1A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BD1E:  MOV             R0, R4; this
32BD20:  MOVS            R1, #0; unsigned __int8
32BD22:  MOVS            R6, #0
32BD24:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BD28:  LDR.W           R1, =(ScriptParams_ptr - 0x32BD30)
32BD2C:  ADD             R1, PC; ScriptParams_ptr
32BD2E:  B               loc_32BD4C
32BD30:  DCFS 0.001
32BD34:  MOV             R0, R4; jumptable 0032B73C case 35
32BD36:  MOVS            R1, #1; __int16
32BD38:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BD3C:  MOV             R0, R4; this
32BD3E:  MOVS            R1, #0; unsigned __int8
32BD40:  MOVS            R6, #0
32BD42:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BD46:  LDR.W           R1, =(ScriptParams_ptr - 0x32BD4E)
32BD4A:  ADD             R1, PC; ScriptParams_ptr
32BD4C:  LDR             R1, [R1]; ScriptParams
32BD4E:  VLDR            S0, [R0]
32BD52:  VLDR            S2, [R1]
32BD56:  VCMPE.F32       S2, S0
32BD5A:  VMRS            APSR_nzcv, FPSCR
32BD5E:  MOV.W           R1, #0
32BD62:  IT GT
32BD64:  MOVGT           R1, #1
32BD66:  B               loc_32BF0A
32BD68:  MOV             R0, R4; jumptable 0032B73C case 40
32BD6A:  MOVS            R1, #0; unsigned __int8
32BD6C:  MOVS            R6, #0
32BD6E:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BD72:  MOV             R5, R0
32BD74:  MOV             R0, R4; this
32BD76:  MOVS            R1, #1; __int16
32BD78:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BD7C:  LDR.W           R0, =(ScriptParams_ptr - 0x32BD84)
32BD80:  ADD             R0, PC; ScriptParams_ptr
32BD82:  B               loc_32BD9E
32BD84:  MOV             R0, R4; jumptable 0032B73C case 41
32BD86:  MOVS            R1, #0; unsigned __int8
32BD88:  MOVS            R6, #0
32BD8A:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BD8E:  MOV             R5, R0
32BD90:  MOV             R0, R4; this
32BD92:  MOVS            R1, #1; __int16
32BD94:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BD98:  LDR.W           R0, =(ScriptParams_ptr - 0x32BDA0)
32BD9C:  ADD             R0, PC; ScriptParams_ptr
32BD9E:  LDR             R0, [R0]; ScriptParams
32BDA0:  LDR             R1, [R5]
32BDA2:  LDR             R0, [R0]
32BDA4:  B               loc_32BDDE
32BDA6:  MOV             R0, R4; jumptable 0032B73C case 42
32BDA8:  MOVS            R1, #1; __int16
32BDAA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BDAE:  MOV             R0, R4; this
32BDB0:  MOVS            R1, #0; unsigned __int8
32BDB2:  MOVS            R6, #0
32BDB4:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BDB8:  LDR.W           R1, =(ScriptParams_ptr - 0x32BDC0)
32BDBC:  ADD             R1, PC; ScriptParams_ptr
32BDBE:  B               loc_32BDD8
32BDC0:  MOV             R0, R4; jumptable 0032B73C case 43
32BDC2:  MOVS            R1, #1; __int16
32BDC4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BDC8:  MOV             R0, R4; this
32BDCA:  MOVS            R1, #0; unsigned __int8
32BDCC:  MOVS            R6, #0
32BDCE:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BDD2:  LDR.W           R1, =(ScriptParams_ptr - 0x32BDDA)
32BDD6:  ADD             R1, PC; ScriptParams_ptr
32BDD8:  LDR             R1, [R1]; ScriptParams
32BDDA:  LDR             R0, [R0]
32BDDC:  LDR             R1, [R1]
32BDDE:  CMP             R1, R0
32BDE0:  B               loc_32BE6C
32BDE2:  MOV             R0, R4; jumptable 0032B73C case 48
32BDE4:  MOVS            R1, #0; unsigned __int8
32BDE6:  MOVS            R6, #0
32BDE8:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BDEC:  MOV             R5, R0
32BDEE:  MOV             R0, R4; this
32BDF0:  MOVS            R1, #1; __int16
32BDF2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BDF6:  LDR.W           R0, =(ScriptParams_ptr - 0x32BDFE)
32BDFA:  ADD             R0, PC; ScriptParams_ptr
32BDFC:  B               loc_32BE18
32BDFE:  MOV             R0, R4; jumptable 0032B73C case 49
32BE00:  MOVS            R1, #0; unsigned __int8
32BE02:  MOVS            R6, #0
32BE04:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BE08:  MOV             R5, R0
32BE0A:  MOV             R0, R4; this
32BE0C:  MOVS            R1, #1; __int16
32BE0E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BE12:  LDR.W           R0, =(ScriptParams_ptr - 0x32BE1A)
32BE16:  ADD             R0, PC; ScriptParams_ptr
32BE18:  LDR             R0, [R0]; ScriptParams
32BE1A:  VLDR            S0, [R5]
32BE1E:  VLDR            S2, [R0]
32BE22:  VCMPE.F32       S0, S2
32BE26:  B               loc_32BE68
32BE28:  MOV             R0, R4; jumptable 0032B73C case 50
32BE2A:  MOVS            R1, #1; __int16
32BE2C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BE30:  MOV             R0, R4; this
32BE32:  MOVS            R1, #0; unsigned __int8
32BE34:  MOVS            R6, #0
32BE36:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BE3A:  LDR.W           R1, =(ScriptParams_ptr - 0x32BE42)
32BE3E:  ADD             R1, PC; ScriptParams_ptr
32BE40:  B               loc_32BE5A
32BE42:  MOV             R0, R4; jumptable 0032B73C case 51
32BE44:  MOVS            R1, #1; __int16
32BE46:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BE4A:  MOV             R0, R4; this
32BE4C:  MOVS            R1, #0; unsigned __int8
32BE4E:  MOVS            R6, #0
32BE50:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BE54:  LDR.W           R1, =(ScriptParams_ptr - 0x32BE5C)
32BE58:  ADD             R1, PC; ScriptParams_ptr
32BE5A:  LDR             R1, [R1]; ScriptParams
32BE5C:  VLDR            S0, [R0]
32BE60:  VLDR            S2, [R1]
32BE64:  VCMPE.F32       S2, S0
32BE68:  VMRS            APSR_nzcv, FPSCR
32BE6C:  MOV.W           R1, #0
32BE70:  IT GE
32BE72:  MOVGE           R1, #1
32BE74:  B               loc_32BF0A
32BE76:  MOV             R0, R4; jumptable 0032B73C case 56
32BE78:  MOVS            R1, #0; unsigned __int8
32BE7A:  MOVS            R6, #0
32BE7C:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BE80:  MOV             R5, R0
32BE82:  MOV             R0, R4; this
32BE84:  MOVS            R1, #1; __int16
32BE86:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BE8A:  LDR.W           R0, =(ScriptParams_ptr - 0x32BE92)
32BE8E:  ADD             R0, PC; ScriptParams_ptr
32BE90:  B               loc_32BEAC
32BE92:  MOV             R0, R4; jumptable 0032B73C case 57
32BE94:  MOVS            R1, #0; unsigned __int8
32BE96:  MOVS            R6, #0
32BE98:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BE9C:  MOV             R5, R0
32BE9E:  MOV             R0, R4; this
32BEA0:  MOVS            R1, #1; __int16
32BEA2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BEA6:  LDR.W           R0, =(ScriptParams_ptr - 0x32BEAE)
32BEAA:  ADD             R0, PC; ScriptParams_ptr
32BEAC:  LDR             R0, [R0]; ScriptParams
32BEAE:  LDR             R1, [R5]
32BEB0:  LDR             R0, [R0]
32BEB2:  CMP             R1, R0
32BEB4:  B               loc_32BF02
32BEB6:  MOVS            R6, #0xFF; jumptable 0032B73C default case, cases 61-65,71-76,84-87
32BEB8:  B               loc_32BF10; jumptable 0032B73C case 0
32BEBA:  MOV             R0, R4; jumptable 0032B73C case 66
32BEBC:  MOVS            R1, #0; unsigned __int8
32BEBE:  MOVS            R6, #0
32BEC0:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BEC4:  MOV             R5, R0
32BEC6:  MOV             R0, R4; this
32BEC8:  MOVS            R1, #1; __int16
32BECA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BECE:  LDR.W           R0, =(ScriptParams_ptr - 0x32BED6)
32BED2:  ADD             R0, PC; ScriptParams_ptr
32BED4:  B               loc_32BEF0
32BED6:  MOV             R0, R4; jumptable 0032B73C case 67
32BED8:  MOVS            R1, #0; unsigned __int8
32BEDA:  MOVS            R6, #0
32BEDC:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
32BEE0:  MOV             R5, R0
32BEE2:  MOV             R0, R4; this
32BEE4:  MOVS            R1, #1; __int16
32BEE6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BEEA:  LDR.W           R0, =(ScriptParams_ptr - 0x32BEF2)
32BEEE:  ADD             R0, PC; ScriptParams_ptr
32BEF0:  LDR             R0, [R0]; ScriptParams
32BEF2:  VLDR            S0, [R5]
32BEF6:  VLDR            S2, [R0]
32BEFA:  VCMP.F32        S0, S2
32BEFE:  VMRS            APSR_nzcv, FPSCR
32BF02:  MOV.W           R1, #0
32BF06:  IT EQ
32BF08:  MOVEQ           R1, #1; unsigned __int8
32BF0A:  MOV             R0, R4; this
32BF0C:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
32BF10:  SXTB            R0, R6; jumptable 0032B73C case 0
32BF12:  ADD             SP, SP, #0x10
32BF14:  VPOP            {D8-D10}
32BF18:  POP.W           {R8}
32BF1C:  POP             {R4-R7,PC}
32BF1E:  MOV             R0, R4; jumptable 0032B73C case 77
32BF20:  MOVS            R1, #1; __int16
32BF22:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32BF26:  LDRB.W          R0, [R4,#0xE5]
32BF2A:  CMP             R0, #0
32BF2C:  BEQ.W           loc_32C1C0
32BF30:  MOVS            R6, #0
32BF32:  B               loc_32BF10; jumptable 0032B73C case 0
32BF34:  LDRB.W          R0, [R4,#0xFC]; jumptable 0032B73C case 78
32BF38:  CBZ             R0, loc_32BF44
32BF3A:  LDR             R0, =(_ZN11CTheScripts29bAlreadyRunningAMissionScriptE_ptr - 0x32BF42)
32BF3C:  MOVS            R1, #0
32BF3E:  ADD             R0, PC; _ZN11CTheScripts29bAlreadyRunningAMissionScriptE_ptr
32BF40:  LDR             R0, [R0]; CTheScripts::bAlreadyRunningAMissionScript ...
32BF42:  STRB            R1, [R0]; CTheScripts::bAlreadyRunningAMissionScript
32BF44:  LDR             R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x32BF50)
32BF46:  LDRD.W          R1, R2, [R4]
32BF4A:  CMP             R2, #0
32BF4C:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
32BF4E:  IT EQ
32BF50:  LDREQ           R2, [R0]; CTheScripts::pActiveScripts ...
32BF52:  STR             R1, [R2]; CTheScripts::pActiveScripts
32BF54:  LDR             R0, [R4]
32BF56:  CMP             R0, #0
32BF58:  ITT NE
32BF5A:  LDRNE           R1, [R4,#4]
32BF5C:  STRNE           R1, [R0,#4]
32BF5E:  LDR             R0, =(_ZN11CTheScripts12pIdleScriptsE_ptr - 0x32BF66)
32BF60:  MOVS            R1, #0
32BF62:  ADD             R0, PC; _ZN11CTheScripts12pIdleScriptsE_ptr
32BF64:  LDR             R0, [R0]; CTheScripts::pIdleScripts ...
32BF66:  LDR             R2, [R0]; CTheScripts::pIdleScripts
32BF68:  STRD.W          R2, R1, [R4]
32BF6C:  LDR             R0, [R0]; CTheScripts::pIdleScripts
32BF6E:  CMP             R0, #0
32BF70:  IT NE
32BF72:  STRNE           R4, [R0,#4]
32BF74:  LDR             R0, =(_ZN11CTheScripts12pIdleScriptsE_ptr - 0x32BF7A)
32BF76:  ADD             R0, PC; _ZN11CTheScripts12pIdleScriptsE_ptr
32BF78:  LDR             R0, [R0]; CTheScripts::pIdleScripts ...
32BF7A:  STR             R4, [R0]; CTheScripts::pIdleScripts
32BF7C:  MOV             R0, R4; this
32BF7E:  BLX             j__ZN14CRunningScript18ShutdownThisScriptEv; CRunningScript::ShutdownThisScript(void)
32BF82:  LDRB.W          R0, [R4,#0xFC]
32BF86:  CMP             R0, #0
32BF88:  BEQ.W           loc_32C1BC
32BF8C:  ADD.W           R0, R4, #8; char *
32BF90:  ADR             R1, aCatalin; "catalin"
32BF92:  BLX             strcmp
32BF96:  CMP             R0, #0
32BF98:  BEQ.W           loc_32C1BC
32BF9C:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x32BFA8)
32BF9E:  MOV.W           R1, #0x194
32BFA2:  LDR             R2, =(_ZN6CWorld7PlayersE_ptr - 0x32BFAA)
32BFA4:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
32BFA6:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
32BFA8:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
32BFAA:  LDR             R2, [R2]; CWorld::Players ...
32BFAC:  LDR             R0, [R0]; CWorld::PlayerInFocus
32BFAE:  SMULBB.W        R3, R0, R1
32BFB2:  LDR             R2, [R2,R3]
32BFB4:  LDR.W           R2, [R2,#0x44C]
32BFB8:  CMP             R2, #0x37 ; '7'
32BFBA:  BEQ             loc_32BFD8
32BFBC:  LDR             R2, =(_ZN6CWorld7PlayersE_ptr - 0x32BFC2)
32BFBE:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
32BFC0:  LDR             R2, [R2]; CWorld::Players ...
32BFC2:  SMLABB.W        R0, R0, R1, R2
32BFC6:  LDRB.W          R0, [R0,#0xDC]
32BFCA:  CMP             R0, #0
32BFCC:  ITT EQ
32BFCE:  LDRBEQ.W        R0, [R4,#0xF4]
32BFD2:  CMPEQ           R0, #0
32BFD4:  BEQ.W           loc_32C23C
32BFD8:  LDR             R0, =(DoMissionCleanup_ptr - 0x32BFDE)
32BFDA:  ADD             R0, PC; DoMissionCleanup_ptr
32BFDC:  LDR             R0, [R0]; DoMissionCleanup
32BFDE:  LDRB            R0, [R0]
32BFE0:  CBZ             R0, loc_32BFF6
32BFE2:  LDR             R0, =(DoMissionCleanup_ptr - 0x32BFEA)
32BFE4:  LDR             R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x32BFEC)
32BFE6:  ADD             R0, PC; DoMissionCleanup_ptr
32BFE8:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
32BFEA:  LDR             R2, [R0]; DoMissionCleanup
32BFEC:  LDR             R0, [R1]; this
32BFEE:  MOVS            R1, #0
32BFF0:  STRB            R1, [R2]
32BFF2:  BLX             j__ZN15CMissionCleanup7ProcessEv; CMissionCleanup::Process(void)
32BFF6:  LDR             R0, =(IsOddJob_ptr - 0x32C000)
32BFF8:  MOVS            R1, #0
32BFFA:  MOVS            R6, #1
32BFFC:  ADD             R0, PC; IsOddJob_ptr
32BFFE:  LDR             R0, [R0]; IsOddJob
32C000:  STR             R1, [R0]
32C002:  B               loc_32BF10; jumptable 0032B73C case 0
32C004:  MOV             R0, R4; jumptable 0032B73C case 79
32C006:  MOVS            R1, #1; __int16
32C008:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32C00C:  LDR             R0, =(_ZN11CTheScripts12pIdleScriptsE_ptr - 0x32C018)
32C00E:  VMOV.I32        Q8, #0
32C012:  LDR             R1, =(ScriptParams_ptr - 0x32C01C)
32C014:  ADD             R0, PC; _ZN11CTheScripts12pIdleScriptsE_ptr
32C016:  LDR             R2, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x32C020)
32C018:  ADD             R1, PC; ScriptParams_ptr
32C01A:  LDR             R0, [R0]; CTheScripts::pIdleScripts ...
32C01C:  ADD             R2, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
32C01E:  LDR             R1, [R1]; ScriptParams
32C020:  LDR             R2, [R2]; CTheScripts::ScriptSpace ...
32C022:  LDR             R5, [R0]; CTheScripts::pIdleScripts
32C024:  LDRD.W          R3, R6, [R5]
32C028:  CMP             R6, #0
32C02A:  LDR             R1, [R1]
32C02C:  IT EQ
32C02E:  MOVEQ           R6, R0
32C030:  STR             R3, [R6]; CTheScripts::pIdleScripts
32C032:  MOVS            R6, #0
32C034:  LDR             R0, [R5]
32C036:  ADD.W           R8, R2, R1
32C03A:  CMP             R0, #0
32C03C:  ITT NE
32C03E:  LDRNE           R1, [R5,#4]
32C040:  STRNE           R1, [R0,#4]
32C042:  MOVW            R0, #0x656D
32C046:  STRB            R6, [R5,#0xE]
32C048:  MOVS            R1, #0xA8
32C04A:  STRH            R0, [R5,#0xC]
32C04C:  MOV             R0, #0x616E6F6E
32C054:  STR             R6, [R5]
32C056:  STR.W           R6, [R5,#0xEC]
32C05A:  STR             R0, [R5,#8]
32C05C:  MOVS            R0, #0xFF
32C05E:  STR.W           R6, [R5,#0xE4]
32C062:  STRB.W          R6, [R5,#0xE8]
32C066:  STRB.W          R0, [R5,#0xE9]
32C06A:  ADD.W           R0, R5, #0x2A ; '*'
32C06E:  VST1.16         {D16-D17}, [R0]
32C072:  ADD.W           R0, R5, #0x20 ; ' '
32C076:  VST1.32         {D16-D17}, [R0]
32C07A:  ADD.W           R0, R5, #0x10
32C07E:  VST1.32         {D16-D17}, [R0]
32C082:  ADD.W           R0, R5, #0x3C ; '<'
32C086:  BLX             j___aeabi_memclr8_0
32C08A:  LDR             R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x32C098)
32C08C:  MOV.W           R1, #0x1000000
32C090:  STRB.W          R6, [R5,#0xF4]
32C094:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
32C096:  STR.W           R1, [R5,#0xF0]
32C09A:  STR.W           R6, [R5,#0xF8]
32C09E:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
32C0A0:  STRB.W          R6, [R5,#0xFC]
32C0A4:  STR.W           R8, [R5,#0x14]
32C0A8:  LDR             R1, [R0]; CTheScripts::pActiveScripts
32C0AA:  STRD.W          R1, R6, [R5]
32C0AE:  MOV             R1, R5; CRunningScript *
32C0B0:  LDR             R0, [R0]; CTheScripts::pActiveScripts
32C0B2:  CMP             R0, #0
32C0B4:  IT NE
32C0B6:  STRNE           R5, [R0,#4]
32C0B8:  LDR             R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x32C0BE)
32C0BA:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
32C0BC:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
32C0BE:  STR             R5, [R0]; CTheScripts::pActiveScripts
32C0C0:  MOVS            R0, #1
32C0C2:  STRB.W          R0, [R5,#0xE4]
32C0C6:  MOV             R0, R4; this
32C0C8:  BLX             j__ZN14CRunningScript35ReadParametersForNewlyStartedScriptEPS_; CRunningScript::ReadParametersForNewlyStartedScript(CRunningScript*)
32C0CC:  MOVS            R6, #0
32C0CE:  B               loc_32BF10; jumptable 0032B73C case 0
32C0D0:  MOV             R0, R4; jumptable 0032B73C case 80
32C0D2:  MOVS            R1, #1; __int16
32C0D4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32C0D8:  LDR             R0, =(ScriptParams_ptr - 0x32C0E0)
32C0DA:  LDRH            R1, [R4,#0x38]
32C0DC:  ADD             R0, PC; ScriptParams_ptr
32C0DE:  LDR             R2, [R4,#0x14]
32C0E0:  ADDS            R3, R1, #1
32C0E2:  STRH            R3, [R4,#0x38]
32C0E4:  ADD.W           R1, R4, R1,LSL#2
32C0E8:  LDR             R0, [R0]; ScriptParams
32C0EA:  STR             R2, [R1,#0x18]
32C0EC:  LDR             R0, [R0]
32C0EE:  CMP.W           R0, #0xFFFFFFFF
32C0F2:  BLE             loc_32C1D8
32C0F4:  LDR             R1, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x32C0FA)
32C0F6:  ADD             R1, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
32C0F8:  B               loc_32C1D2
32C0FA:  LDRH            R0, [R4,#0x38]; jumptable 0032B73C case 81
32C0FC:  SUBS            R0, #1
32C0FE:  STRH            R0, [R4,#0x38]
32C100:  UXTH            R0, R0
32C102:  ADD.W           R0, R4, R0,LSL#2
32C106:  LDR             R0, [R0,#0x18]
32C108:  B               loc_32C1DC
32C10A:  MOV             R0, R4; jumptable 0032B73C case 82
32C10C:  MOVS            R1, #6; __int16
32C10E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32C112:  MOVS            R6, #0
32C114:  B               loc_32BF10; jumptable 0032B73C case 0
32C116:  MOV             R0, R4; jumptable 0032B73C case 83
32C118:  MOVS            R1, #4; __int16
32C11A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32C11E:  LDR             R0, =(ScriptParams_ptr - 0x32C126)
32C120:  LDR             R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x32C128)
32C122:  ADD             R0, PC; ScriptParams_ptr
32C124:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
32C126:  LDR             R0, [R0]; ScriptParams
32C128:  LDR             R1, [R1]; CStreaming::ms_aInfoForModel ...
32C12A:  LDR             R5, [R0]
32C12C:  LDRB            R0, [R1,#(byte_712340 - 0x712330)]
32C12E:  CMP             R0, #1
32C130:  BEQ             loc_32C142
32C132:  ADR             R1, aPlayer_1; "player"
32C134:  MOVS            R0, #0; this
32C136:  MOVS            R2, #(off_18+2); char *
32C138:  BLX             j__ZN10CStreaming19RequestSpecialModelEiPKci; CStreaming::RequestSpecialModel(int,char const*,int)
32C13C:  MOVS            R0, #(stderr+1); this
32C13E:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
32C142:  MOV             R0, R5; this
32C144:  BLX             j__ZN10CPlayerPed14SetupPlayerPedEi; CPlayerPed::SetupPlayerPed(int)
32C148:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x32C156)
32C14A:  MOV.W           R8, #0x194
32C14E:  MUL.W           R1, R5, R8
32C152:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
32C154:  LDR             R6, [R0]; CWorld::Players ...
32C156:  LDR             R0, [R6,R1]; this
32C158:  MOVS            R1, #2; unsigned __int8
32C15A:  BLX             j__ZN4CPed16SetCharCreatedByEh; CPed::SetCharCreatedBy(uchar)
32C15E:  MOV             R0, R5; this
32C160:  BLX             j__ZN10CPlayerPed19DeactivatePlayerPedEi; CPlayerPed::DeactivatePlayerPed(int)
32C164:  LDR             R0, =(ScriptParams_ptr - 0x32C172)
32C166:  MLA.W           R6, R5, R8, R6
32C16A:  VLDR            S0, =-100.0
32C16E:  ADD             R0, PC; ScriptParams_ptr
32C170:  LDR             R0, [R0]; ScriptParams
32C172:  VLDR            S20, [R0,#0xC]
32C176:  VLDR            S16, [R0,#4]
32C17A:  VCMPE.F32       S20, S0
32C17E:  VLDR            S18, [R0,#8]
32C182:  VMRS            APSR_nzcv, FPSCR
32C186:  BGT             loc_32C198
32C188:  VMOV            R0, S16; this
32C18C:  VMOV            R1, S18; float
32C190:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
32C194:  VMOV            S20, R0
32C198:  LDR             R0, [R6]; this
32C19A:  BLX             j__ZN7CEntity40GetDistanceFromCentreOfMassToBaseOfModelEv; CEntity::GetDistanceFromCentreOfMassToBaseOfModel(void)
32C19E:  VMOV            S0, R0
32C1A2:  LDR             R0, [R6]
32C1A4:  VADD.F32        S0, S20, S0
32C1A8:  LDR             R1, [R0,#0x14]
32C1AA:  CBZ             R1, loc_32C1E2
32C1AC:  VSTR            S16, [R1,#0x30]
32C1B0:  LDR             R1, [R0,#0x14]
32C1B2:  VSTR            S18, [R1,#0x34]
32C1B6:  LDR             R0, [R0,#0x14]
32C1B8:  ADDS            R0, #0x38 ; '8'
32C1BA:  B               loc_32C1EC
32C1BC:  MOVS            R6, #1
32C1BE:  B               loc_32BF10; jumptable 0032B73C case 0
32C1C0:  LDR             R0, =(ScriptParams_ptr - 0x32C1C6)
32C1C2:  ADD             R0, PC; ScriptParams_ptr
32C1C4:  LDR             R0, [R0]; ScriptParams
32C1C6:  LDR             R0, [R0]
32C1C8:  CMP.W           R0, #0xFFFFFFFF
32C1CC:  BLE             loc_32C1D8
32C1CE:  LDR             R1, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x32C1D4)
32C1D0:  ADD             R1, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
32C1D2:  LDR             R1, [R1]; CTheScripts::ScriptSpace ...
32C1D4:  ADD             R0, R1
32C1D6:  B               loc_32C1DC
32C1D8:  LDR             R1, [R4,#0x10]
32C1DA:  SUBS            R0, R1, R0
32C1DC:  STR             R0, [R4,#0x14]
32C1DE:  MOVS            R6, #0
32C1E0:  B               loc_32BF10; jumptable 0032B73C case 0
32C1E2:  VSTR            S16, [R0,#4]
32C1E6:  VSTR            S18, [R0,#8]
32C1EA:  ADDS            R0, #0xC
32C1EC:  VSTR            S0, [R0]
32C1F0:  ADD             R0, SP, #0x38+var_34; this
32C1F2:  LDR             R1, [R6]; CVector *
32C1F4:  VSTR            S18, [SP,#0x38+var_30]
32C1F8:  VSTR            S16, [SP,#0x38+var_34]
32C1FC:  VSTR            S0, [SP,#0x38+var_2C]
32C200:  BLX             j__ZN11CTheScripts26ClearSpaceForMissionEntityERK7CVectorP7CEntity; CTheScripts::ClearSpaceForMissionEntity(CVector const&,CEntity *)
32C204:  MOV             R0, R5; this
32C206:  BLX             j__ZN10CPlayerPed19ReactivatePlayerPedEi; CPlayerPed::ReactivatePlayerPed(int)
32C20A:  LDR             R0, =(ScriptParams_ptr - 0x32C212)
32C20C:  MOVS            R1, #1; __int16
32C20E:  ADD             R0, PC; ScriptParams_ptr
32C210:  LDR             R0, [R0]; ScriptParams
32C212:  STR             R5, [R0]
32C214:  MOV             R0, R4; this
32C216:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
32C21A:  LDR             R0, [R6]
32C21C:  LDR.W           R5, [R0,#0x440]
32C220:  MOVS            R0, #dword_34; this
32C222:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
32C226:  MOV             R4, R0
32C228:  BLX             j__ZN23CTaskSimplePlayerOnFootC2Ev; CTaskSimplePlayerOnFoot::CTaskSimplePlayerOnFoot(void)
32C22C:  ADDS            R0, R5, #4; this
32C22E:  MOV             R1, R4; CTask *
32C230:  MOVS            R2, #4; int
32C232:  MOVS            R3, #0; bool
32C234:  MOVS            R6, #0
32C236:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
32C23A:  B               loc_32BF10; jumptable 0032B73C case 0
32C23C:  LDR             R0, =(AllowMissionReplay_ptr - 0x32C242)
32C23E:  ADD             R0, PC; AllowMissionReplay_ptr
32C240:  LDR             R0, [R0]; AllowMissionReplay
32C242:  LDR             R0, [R0]
32C244:  CMP             R0, #0
32C246:  BNE.W           loc_32BFD8
32C24A:  LDR             R0, =(missionReplaySetting_ptr - 0x32C250)
32C24C:  ADD             R0, PC; missionReplaySetting_ptr
32C24E:  LDR             R0, [R0]; missionReplaySetting
32C250:  LDR             R0, [R0]
32C252:  CMP             R0, #0
32C254:  ITTT NE
32C256:  MOVNE           R0, #2
32C258:  MOVNE           R1, #0
32C25A:  BLXNE           j__Z16SaveGameForPause10eSaveTypesPc; SaveGameForPause(eSaveTypes,char *)
32C25E:  B               loc_32BFD8
