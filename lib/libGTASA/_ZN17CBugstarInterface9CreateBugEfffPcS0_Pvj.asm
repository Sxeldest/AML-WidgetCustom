; =========================================================
; Game Engine Function: _ZN17CBugstarInterface9CreateBugEfffPcS0_Pvj
; Address            : 0x3BE6B0 - 0x3BEB4C
; =========================================================

3BE6B0:  PUSH            {R4-R7,LR}
3BE6B2:  ADD             R7, SP, #0xC
3BE6B4:  PUSH.W          {R8-R11}
3BE6B8:  SUB             SP, SP, #4
3BE6BA:  VPUSH           {D8-D9}
3BE6BE:  SUB             SP, SP, #0x60
3BE6C0:  STMEA.W         SP, {R1-R3}
3BE6C4:  STR             R0, [SP,#0x90+var_84]
3BE6C6:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x3BE6D2)
3BE6CA:  LDR.W           R11, [R7,#arg_4]
3BE6CE:  ADD             R0, PC; __stack_chk_guard_ptr
3BE6D0:  LDR             R0, [R0]; __stack_chk_guard
3BE6D2:  LDR             R0, [R0]
3BE6D4:  STR             R0, [SP,#0x90+var_34]
3BE6D6:  MOV             R0, R11; char *
3BE6D8:  BLX             strlen
3BE6DC:  MOV             R5, R0
3BE6DE:  ADD.W           R6, R5, #8
3BE6E2:  MOV             R0, R6; unsigned int
3BE6E4:  BLX             _Znaj; operator new[](uint)
3BE6E8:  MOV             R4, R0
3BE6EA:  MOVS            R0, #0
3BE6EC:  STR             R0, [R4]
3BE6EE:  ADD.W           R0, R4, #8; void *
3BE6F2:  MOV             R1, R11; void *
3BE6F4:  MOV             R2, R5; size_t
3BE6F6:  STR             R5, [R4,#4]
3BE6F8:  BLX             memcpy_1
3BE6FC:  MOV             R0, R6; unsigned int
3BE6FE:  BLX             _Znaj; operator new[](uint)
3BE702:  MOV             R1, R4; void *
3BE704:  MOV             R2, R6; size_t
3BE706:  MOV             R5, R0
3BE708:  BLX             memcpy_1
3BE70C:  MOV             R0, R4; void *
3BE70E:  STRD.W          R5, R6, [SP,#0x90+var_80]
3BE712:  BLX             _ZdaPv; operator delete[](void *)
3BE716:  ADD             R0, SP, #0x90+var_80; this
3BE718:  MOVS            R1, #1; unsigned int
3BE71A:  BLX             j__ZN4CBug11SetPlatformEj; CBug::SetPlatform(uint)
3BE71E:  MOVS            R0, #0xA; unsigned int
3BE720:  MOV.W           R9, #0xA
3BE724:  BLX             _Znaj; operator new[](uint)
3BE728:  LDR.W           R8, [SP,#0x90+var_7C]
3BE72C:  MOV             R5, R0
3BE72E:  MOVS            R0, #2
3BE730:  STR.W           R9, [R5]
3BE734:  ADD.W           R11, R8, #0xA
3BE738:  STR             R0, [R5,#4]
3BE73A:  MOVW            R0, #0x4153
3BE73E:  STRH            R0, [R5,#8]
3BE740:  MOV             R0, R11; unsigned int
3BE742:  BLX             _Znaj; operator new[](uint)
3BE746:  MOV             R6, R0
3BE748:  CMN.W           R8, #0xB
3BE74C:  ADD.W           R10, R6, R8
3BE750:  IT HI
3BE752:  MOVHI.W         R9, #0
3BE756:  MOV             R1, R9
3BE758:  LDR             R4, [SP,#0x90+var_80]
3BE75A:  MOV             R0, R10
3BE75C:  BLX             j___aeabi_memclr8_1
3BE760:  MOV             R0, R6; void *
3BE762:  MOV             R1, R4; void *
3BE764:  MOV             R2, R8; size_t
3BE766:  BLX             memcpy_1
3BE76A:  LDR             R1, [SP,#0x90+var_90]
3BE76C:  CMP             R4, #0
3BE76E:  VLD1.8          {D16}, [R5]
3BE772:  LDRH            R0, [R5,#8]
3BE774:  VMOV            S16, R1
3BE778:  STRH.W          R0, [R10,#8]
3BE77C:  VST1.8          {D16}, [R10]
3BE780:  ITT NE
3BE782:  MOVNE           R0, R4; void *
3BE784:  BLXNE           _ZdaPv; operator delete[](void *)
3BE788:  LDR             R0, [SP,#0x90+var_8C]
3BE78A:  STRD.W          R6, R11, [SP,#0x90+var_80]
3BE78E:  VMOV            S18, R0
3BE792:  MOV             R0, R5; void *
3BE794:  BLX             _ZdaPv; operator delete[](void *)
3BE798:  VCVT.F64.F32    D16, S16
3BE79C:  ADD             R5, SP, #0x90+var_78
3BE79E:  ADR             R1, dword_3BEB50
3BE7A0:  MOV             R0, R5
3BE7A2:  VMOV            R2, R3, D16
3BE7A6:  BL              sub_5E6BC0
3BE7AA:  ADD             R0, SP, #0x90+var_80; this
3BE7AC:  ADR             R1, aXcoord; "XCoord"
3BE7AE:  ADR             R2, aText; "text"
3BE7B0:  BLX             j__ZN4CBug10BeginFieldEPKcS1_; CBug::BeginField(char const*,char const*)
3BE7B4:  MOV             R0, R5; char *
3BE7B6:  BLX             strlen
3BE7BA:  MOV             R6, R0
3BE7BC:  ADD.W           R11, R6, #4
3BE7C0:  MOV             R0, R11; unsigned int
3BE7C2:  BLX             _Znaj; operator new[](uint)
3BE7C6:  MOV             R8, R0
3BE7C8:  STR.W           R6, [R0],#4; void *
3BE7CC:  MOV             R1, R5; void *
3BE7CE:  MOV             R2, R6; size_t
3BE7D0:  BLX             memcpy_1
3BE7D4:  LDR             R5, [SP,#0x90+var_7C]
3BE7D6:  ADD.W           R6, R5, R11
3BE7DA:  MOV             R0, R6; unsigned int
3BE7DC:  BLX             _Znaj; operator new[](uint)
3BE7E0:  MOV             R10, R0
3BE7E2:  ADD.W           R4, R10, R5
3BE7E6:  CMP             R6, R5
3BE7E8:  MOV             R1, R11
3BE7EA:  IT LS
3BE7EC:  MOVLS           R1, #0
3BE7EE:  MOV             R0, R4
3BE7F0:  LDR.W           R9, [SP,#0x90+var_80]
3BE7F4:  BLX             j___aeabi_memclr8_1
3BE7F8:  MOV             R0, R10; void *
3BE7FA:  MOV             R1, R9; void *
3BE7FC:  MOV             R2, R5; size_t
3BE7FE:  BLX             memcpy_1
3BE802:  MOV             R0, R4; void *
3BE804:  MOV             R1, R8; void *
3BE806:  MOV             R2, R11; size_t
3BE808:  BLX             memcpy_1
3BE80C:  CMP.W           R9, #0
3BE810:  ITT NE
3BE812:  MOVNE           R0, R9; void *
3BE814:  BLXNE           _ZdaPv; operator delete[](void *)
3BE818:  LDR             R0, [SP,#0x90+var_88]
3BE81A:  VMOV            S16, R0
3BE81E:  MOV             R0, R8; void *
3BE820:  BLX             _ZdaPv; operator delete[](void *)
3BE824:  ADDS            R4, R6, #4
3BE826:  MOV             R0, R4; unsigned int
3BE828:  BLX             _Znaj; operator new[](uint)
3BE82C:  MOV             R5, R0
3BE82E:  CMN.W           R6, #5
3BE832:  MOV.W           R1, #4
3BE836:  ADD.W           R0, R5, R6
3BE83A:  IT HI
3BE83C:  MOVHI           R1, #0
3BE83E:  BLX             j___aeabi_memclr8_1
3BE842:  MOV             R0, R5; void *
3BE844:  MOV             R1, R10; void *
3BE846:  MOV             R2, R6; size_t
3BE848:  BLX             memcpy_1
3BE84C:  MOVS            R0, #0
3BE84E:  STR             R0, [R5,R6]
3BE850:  MOV             R0, R10; void *
3BE852:  BLX             _ZdaPv; operator delete[](void *)
3BE856:  VCVT.F64.F32    D16, S18
3BE85A:  STRD.W          R5, R4, [SP,#0x90+var_80]
3BE85E:  ADD             R5, SP, #0x90+var_78
3BE860:  ADR             R1, dword_3BEB50
3BE862:  MOV             R0, R5
3BE864:  VMOV            R2, R3, D16
3BE868:  BL              sub_5E6BC0
3BE86C:  ADD             R0, SP, #0x90+var_80; this
3BE86E:  ADR             R1, aYcoord; "YCoord"
3BE870:  ADR             R2, aText; "text"
3BE872:  BLX             j__ZN4CBug10BeginFieldEPKcS1_; CBug::BeginField(char const*,char const*)
3BE876:  MOV             R0, R5; char *
3BE878:  BLX             strlen
3BE87C:  MOV             R6, R0
3BE87E:  ADDS            R4, R6, #4
3BE880:  MOV             R0, R4; unsigned int
3BE882:  BLX             _Znaj; operator new[](uint)
3BE886:  MOV             R8, R0
3BE888:  STR.W           R6, [R0],#4; void *
3BE88C:  MOV             R1, R5; void *
3BE88E:  MOV             R2, R6; size_t
3BE890:  BLX             memcpy_1
3BE894:  LDR             R6, [SP,#0x90+var_7C]
3BE896:  ADDS            R5, R6, R4
3BE898:  MOV             R0, R5; unsigned int
3BE89A:  BLX             _Znaj; operator new[](uint)
3BE89E:  MOV             R11, R0
3BE8A0:  ADD.W           R9, R11, R6
3BE8A4:  CMP             R5, R6
3BE8A6:  MOV             R1, R4
3BE8A8:  IT LS
3BE8AA:  MOVLS           R1, #0
3BE8AC:  MOV             R0, R9
3BE8AE:  LDR.W           R10, [SP,#0x90+var_80]
3BE8B2:  BLX             j___aeabi_memclr8_1
3BE8B6:  MOV             R0, R11; void *
3BE8B8:  MOV             R1, R10; void *
3BE8BA:  MOV             R2, R6; size_t
3BE8BC:  BLX             memcpy_1
3BE8C0:  MOV             R0, R9; void *
3BE8C2:  MOV             R1, R8; void *
3BE8C4:  MOV             R2, R4; size_t
3BE8C6:  BLX             memcpy_1
3BE8CA:  CMP.W           R10, #0
3BE8CE:  ITT NE
3BE8D0:  MOVNE           R0, R10; void *
3BE8D2:  BLXNE           _ZdaPv; operator delete[](void *)
3BE8D6:  MOV             R0, R8; void *
3BE8D8:  BLX             _ZdaPv; operator delete[](void *)
3BE8DC:  ADDS            R4, R5, #4
3BE8DE:  MOV             R0, R4; unsigned int
3BE8E0:  BLX             _Znaj; operator new[](uint)
3BE8E4:  MOV             R6, R0
3BE8E6:  CMN.W           R5, #5
3BE8EA:  MOV.W           R1, #4
3BE8EE:  ADD.W           R0, R6, R5
3BE8F2:  IT HI
3BE8F4:  MOVHI           R1, #0
3BE8F6:  BLX             j___aeabi_memclr8_1
3BE8FA:  MOV             R0, R6; void *
3BE8FC:  MOV             R1, R11; void *
3BE8FE:  MOV             R2, R5; size_t
3BE900:  BLX             memcpy_1
3BE904:  MOVS            R0, #0
3BE906:  STR             R0, [R6,R5]
3BE908:  MOV             R0, R11; void *
3BE90A:  BLX             _ZdaPv; operator delete[](void *)
3BE90E:  VCVT.F64.F32    D16, S16
3BE912:  ADD             R5, SP, #0x90+var_78
3BE914:  ADR             R1, dword_3BEB50
3BE916:  STRD.W          R6, R4, [SP,#0x90+var_80]
3BE91A:  MOV             R0, R5
3BE91C:  VMOV            R2, R3, D16
3BE920:  BL              sub_5E6BC0
3BE924:  ADD             R0, SP, #0x90+var_80; this
3BE926:  ADR             R1, aZcoord; "ZCoord"
3BE928:  ADR             R2, aText; "text"
3BE92A:  BLX             j__ZN4CBug10BeginFieldEPKcS1_; CBug::BeginField(char const*,char const*)
3BE92E:  MOV             R0, R5; char *
3BE930:  BLX             strlen
3BE934:  MOV             R6, R0
3BE936:  ADD.W           R11, R6, #4
3BE93A:  MOV             R0, R11; unsigned int
3BE93C:  BLX             _Znaj; operator new[](uint)
3BE940:  MOV             R8, R0
3BE942:  STR.W           R6, [R0],#4; void *
3BE946:  MOV             R1, R5; void *
3BE948:  MOV             R2, R6; size_t
3BE94A:  BLX             memcpy_1
3BE94E:  LDR             R6, [SP,#0x90+var_7C]
3BE950:  ADD.W           R5, R6, R11
3BE954:  MOV             R0, R5; unsigned int
3BE956:  BLX             _Znaj; operator new[](uint)
3BE95A:  MOV             R9, R0
3BE95C:  ADD.W           R4, R9, R6
3BE960:  CMP             R5, R6
3BE962:  MOV             R1, R11
3BE964:  IT LS
3BE966:  MOVLS           R1, #0
3BE968:  MOV             R0, R4
3BE96A:  LDR.W           R10, [SP,#0x90+var_80]
3BE96E:  BLX             j___aeabi_memclr8_1
3BE972:  MOV             R0, R9; void *
3BE974:  MOV             R1, R10; void *
3BE976:  MOV             R2, R6; size_t
3BE978:  BLX             memcpy_1
3BE97C:  MOV             R0, R4; void *
3BE97E:  MOV             R1, R8; void *
3BE980:  MOV             R2, R11; size_t
3BE982:  BLX             memcpy_1
3BE986:  CMP.W           R10, #0
3BE98A:  ITT NE
3BE98C:  MOVNE           R0, R10; void *
3BE98E:  BLXNE           _ZdaPv; operator delete[](void *)
3BE992:  MOV             R0, R8; void *
3BE994:  BLX             _ZdaPv; operator delete[](void *)
3BE998:  ADDS            R4, R5, #4
3BE99A:  MOV             R0, R4; unsigned int
3BE99C:  BLX             _Znaj; operator new[](uint)
3BE9A0:  MOV             R6, R0
3BE9A2:  CMN.W           R5, #5
3BE9A6:  MOV.W           R1, #4
3BE9AA:  ADD.W           R0, R6, R5
3BE9AE:  IT HI
3BE9B0:  MOVHI           R1, #0
3BE9B2:  BLX             j___aeabi_memclr8_1
3BE9B6:  MOV             R0, R6; void *
3BE9B8:  MOV             R1, R9; void *
3BE9BA:  MOV             R2, R5; size_t
3BE9BC:  BLX             memcpy_1
3BE9C0:  MOVS            R0, #0
3BE9C2:  STR             R0, [R6,R5]
3BE9C4:  MOV             R0, R9; void *
3BE9C6:  BLX             _ZdaPv; operator delete[](void *)
3BE9CA:  ADD             R0, SP, #0x90+var_80; this
3BE9CC:  ADR             R1, aGrid; "grid"
3BE9CE:  ADR             R2, aText; "text"
3BE9D0:  STRD.W          R6, R4, [SP,#0x90+var_80]
3BE9D4:  BLX             j__ZN4CBug10BeginFieldEPKcS1_; CBug::BeginField(char const*,char const*)
3BE9D8:  LDR             R5, [R7,#arg_0]
3BE9DA:  MOV             R0, R5; char *
3BE9DC:  BLX             strlen
3BE9E0:  MOV             R4, R0
3BE9E2:  ADD.W           R9, R4, #4
3BE9E6:  MOV             R0, R9; unsigned int
3BE9E8:  BLX             _Znaj; operator new[](uint)
3BE9EC:  MOV             R6, R0
3BE9EE:  STR.W           R4, [R0],#4; void *
3BE9F2:  MOV             R1, R5; void *
3BE9F4:  MOV             R2, R4; size_t
3BE9F6:  BLX             memcpy_1
3BE9FA:  LDR.W           R11, [SP,#0x90+var_7C]
3BE9FE:  ADD.W           R5, R11, R9
3BEA02:  MOV             R0, R5; unsigned int
3BEA04:  BLX             _Znaj; operator new[](uint)
3BEA08:  MOV             R8, R0
3BEA0A:  ADD.W           R10, R8, R11
3BEA0E:  CMP             R5, R11
3BEA10:  MOV             R1, R9
3BEA12:  IT LS
3BEA14:  MOVLS           R1, #0
3BEA16:  MOV             R0, R10
3BEA18:  LDR             R4, [SP,#0x90+var_80]
3BEA1A:  BLX             j___aeabi_memclr8_1
3BEA1E:  MOV             R0, R8; void *
3BEA20:  MOV             R1, R4; void *
3BEA22:  MOV             R2, R11; size_t
3BEA24:  BLX             memcpy_1
3BEA28:  MOV             R0, R10; void *
3BEA2A:  MOV             R1, R6; void *
3BEA2C:  MOV             R2, R9; size_t
3BEA2E:  BLX             memcpy_1
3BEA32:  CMP             R4, #0
3BEA34:  ITT NE
3BEA36:  MOVNE           R0, R4; void *
3BEA38:  BLXNE           _ZdaPv; operator delete[](void *)
3BEA3C:  MOV             R0, R6; void *
3BEA3E:  BLX             _ZdaPv; operator delete[](void *)
3BEA42:  ADDS            R4, R5, #4
3BEA44:  MOV             R0, R4; unsigned int
3BEA46:  BLX             _Znaj; operator new[](uint)
3BEA4A:  MOV             R6, R0
3BEA4C:  CMN.W           R5, #5
3BEA50:  MOV.W           R1, #4
3BEA54:  ADD.W           R0, R6, R5
3BEA58:  IT HI
3BEA5A:  MOVHI           R1, #0
3BEA5C:  BLX             j___aeabi_memclr8_1
3BEA60:  MOV             R0, R6; void *
3BEA62:  MOV             R1, R8; void *
3BEA64:  MOV             R2, R5; size_t
3BEA66:  BLX             memcpy_1
3BEA6A:  MOVS            R0, #0
3BEA6C:  STR             R0, [R6,R5]
3BEA6E:  MOV             R0, R8; void *
3BEA70:  BLX             _ZdaPv; operator delete[](void *)
3BEA74:  ADD             R0, SP, #0x90+var_80; this
3BEA76:  ADR             R1, aScreenshot; "ScreenShot"
3BEA78:  ADR             R2, aImage; "image"
3BEA7A:  STRD.W          R6, R4, [SP,#0x90+var_80]
3BEA7E:  BLX             j__ZN4CBug10BeginFieldEPKcS1_; CBug::BeginField(char const*,char const*)
3BEA82:  LDR             R4, [R7,#arg_C]
3BEA84:  ADD.W           R11, R4, #4
3BEA88:  MOV             R0, R11; unsigned int
3BEA8A:  BLX             _Znaj; operator new[](uint)
3BEA8E:  LDR             R1, [R7,#arg_8]; void *
3BEA90:  MOV             R8, R0
3BEA92:  STR.W           R4, [R0],#4; void *
3BEA96:  MOV             R2, R4; size_t
3BEA98:  BLX             memcpy_1
3BEA9C:  LDR             R5, [SP,#0x90+var_7C]
3BEA9E:  ADD.W           R4, R5, R11
3BEAA2:  MOV             R0, R4; unsigned int
3BEAA4:  BLX             _Znaj; operator new[](uint)
3BEAA8:  MOV             R9, R0
3BEAAA:  ADD.W           R6, R9, R5
3BEAAE:  CMP             R4, R5
3BEAB0:  MOV             R1, R11
3BEAB2:  IT LS
3BEAB4:  MOVLS           R1, #0
3BEAB6:  MOV             R0, R6
3BEAB8:  LDR.W           R10, [SP,#0x90+var_80]
3BEABC:  BLX             j___aeabi_memclr8_1
3BEAC0:  MOV             R0, R9; void *
3BEAC2:  MOV             R1, R10; void *
3BEAC4:  MOV             R2, R5; size_t
3BEAC6:  BLX             memcpy_1
3BEACA:  MOV             R0, R6; void *
3BEACC:  MOV             R1, R8; void *
3BEACE:  MOV             R2, R11; size_t
3BEAD0:  BLX             memcpy_1
3BEAD4:  CMP.W           R10, #0
3BEAD8:  ITT NE
3BEADA:  MOVNE           R0, R10; void *
3BEADC:  BLXNE           _ZdaPv; operator delete[](void *)
3BEAE0:  MOV             R0, R8; void *
3BEAE2:  BLX             _ZdaPv; operator delete[](void *)
3BEAE6:  ADD.W           R8, R4, #4
3BEAEA:  MOV             R0, R8; unsigned int
3BEAEC:  BLX             _Znaj; operator new[](uint)
3BEAF0:  MOV             R6, R0
3BEAF2:  MOVS            R1, #4
3BEAF4:  CMN.W           R4, #5
3BEAF8:  ADD.W           R0, R6, R4
3BEAFC:  IT HI
3BEAFE:  MOVHI           R1, #0
3BEB00:  BLX             j___aeabi_memclr8_1
3BEB04:  MOV             R0, R6; void *
3BEB06:  MOV             R1, R9; void *
3BEB08:  MOV             R2, R4; size_t
3BEB0A:  BLX             memcpy_1
3BEB0E:  MOVS            R0, #0
3BEB10:  STR             R0, [R6,R4]
3BEB12:  MOV             R0, R9; void *
3BEB14:  BLX             _ZdaPv; operator delete[](void *)
3BEB18:  LDR             R0, [SP,#0x90+var_84]; this
3BEB1A:  MOVS            R1, #0; unsigned int
3BEB1C:  MOV             R2, R6; void *
3BEB1E:  MOV             R3, R8; unsigned int
3BEB20:  BLX             j__ZN17CBugstarInterface7SendMsgEjPvj; CBugstarInterface::SendMsg(uint,void *,uint)
3BEB24:  MOV             R0, R6; void *
3BEB26:  BLX             _ZdaPv; operator delete[](void *)
3BEB2A:  LDR             R0, =(__stack_chk_guard_ptr - 0x3BEB32)
3BEB2C:  LDR             R1, [SP,#0x90+var_34]
3BEB2E:  ADD             R0, PC; __stack_chk_guard_ptr
3BEB30:  LDR             R0, [R0]; __stack_chk_guard
3BEB32:  LDR             R0, [R0]
3BEB34:  SUBS            R0, R0, R1
3BEB36:  ITTTT EQ
3BEB38:  ADDEQ           SP, SP, #0x60 ; '`'
3BEB3A:  VPOPEQ          {D8-D9}
3BEB3E:  ADDEQ           SP, SP, #4
3BEB40:  POPEQ.W         {R8-R11}
3BEB44:  IT EQ
3BEB46:  POPEQ           {R4-R7,PC}
3BEB48:  BLX             __stack_chk_fail
