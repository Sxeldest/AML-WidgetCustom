; =========================================================
; Game Engine Function: sub_7B71C
; Address            : 0x7B71C - 0x7BB2C
; =========================================================

7B71C:  PUSH            {R4-R7,LR}
7B71E:  ADD             R7, SP, #0xC
7B720:  PUSH.W          {R8-R11}
7B724:  SUB             SP, SP, #4
7B726:  VPUSH           {D8}
7B72A:  SUB             SP, SP, #0x140; float
7B72C:  MOV             R5, R0
7B72E:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x7B736)
7B732:  ADD             R0, PC; __stack_chk_guard_ptr
7B734:  LDR             R0, [R0]; __stack_chk_guard
7B736:  LDR             R0, [R0]
7B738:  STR             R0, [SP,#0x168+var_2C]
7B73A:  ADD.W           R0, R5, #0x54 ; 'T'
7B73E:  BL              sub_71D20
7B742:  MOV             R11, R0
7B744:  CMP             R0, #0
7B746:  BEQ.W           loc_7BAD2
7B74A:  MOVS            R0, #2; unsigned int
7B74C:  BLX             j__Znwj; operator new(uint)
7B750:  MOVS            R1, #0
7B752:  STR.W           R0, [R5,#0x80]
7B756:  STRH            R1, [R0]
7B758:  MOVS            R0, #0x10; unsigned int
7B75A:  BLX             j__Znwj; operator new(uint)
7B75E:  MOV             R4, R0
7B760:  BL              sub_75362
7B764:  MOVS            R0, #0x7C ; '|'; unsigned int
7B766:  STR.W           R4, [R5,#0x84]
7B76A:  BLX             j__Znwj; operator new(uint)
7B76E:  MOV             R4, R0
7B770:  BL              sub_72E04
7B774:  MOV             R0, R5
7B776:  MOV             R1, R4
7B778:  STR.W           R4, [R5,#0x88]
7B77C:  BL              sub_7C73C
7B780:  LDR             R0, =(off_114C7C - 0x7B788)
7B782:  LDR             R1, =(off_114C78 - 0x7B78E)
7B784:  ADD             R0, PC; off_114C7C
7B786:  LDR.W           R3, [R5,#0x88]
7B78A:  ADD             R1, PC; off_114C78
7B78C:  LDR             R0, [R0]; dword_116D88
7B78E:  ADDS            R3, #0x14
7B790:  LDR             R1, [R1]; dword_116D80
7B792:  LDRD.W          R2, R0, [R0]
7B796:  VMOV            D16, R2, R0
7B79A:  VMOV            D17, D16
7B79E:  VST1.32         {D16-D17}, [R3]!
7B7A2:  STRD.W          R2, R0, [R3]
7B7A6:  LDRD.W          R2, R1, [R1]
7B7AA:  LDR.W           R0, [R5,#0x88]
7B7AE:  STRD.W          R2, R1, [SP,#0x168+src]
7B7B2:  ADD             R1, SP, #0x168+src
7B7B4:  BL              sub_7C4A6
7B7B8:  LDR.W           R0, [R5,#0x88]
7B7BC:  MOVS            R6, #0
7B7BE:  STRB            R6, [R0,#8]
7B7C0:  MOVS            R0, #0x78 ; 'x'; unsigned int
7B7C2:  BLX             j__Znwj; operator new(uint)
7B7C6:  MOV             R4, R0
7B7C8:  BL              sub_7B2C0
7B7CC:  MOV             R0, R5
7B7CE:  MOV             R1, R4
7B7D0:  STR.W           R4, [R5,#0x8C]
7B7D4:  BL              sub_7C73C
7B7D8:  LDR             R0, =(off_114C80 - 0x7B7E0)
7B7DA:  LDR             R1, =(off_114C84 - 0x7B7E6)
7B7DC:  ADD             R0, PC; off_114C80
7B7DE:  LDR.W           R3, [R5,#0x8C]
7B7E2:  ADD             R1, PC; off_114C84
7B7E4:  LDR             R0, [R0]; dword_116DC8
7B7E6:  ADDS            R3, #0x14
7B7E8:  LDR             R1, [R1]; dword_116DC0
7B7EA:  LDRD.W          R2, R0, [R0]
7B7EE:  VMOV            D16, R2, R0
7B7F2:  VMOV            D17, D16
7B7F6:  VST1.32         {D16-D17}, [R3]!
7B7FA:  STRD.W          R2, R0, [R3]
7B7FE:  LDRD.W          R2, R1, [R1]
7B802:  LDR.W           R0, [R5,#0x8C]
7B806:  STRD.W          R2, R1, [SP,#0x168+src]
7B80A:  ADD             R1, SP, #0x168+src
7B80C:  BL              sub_7C4A6
7B810:  LDR.W           R0, [R5,#0x8C]
7B814:  STRB            R6, [R0,#8]
7B816:  MOVS            R0, #0x78 ; 'x'; unsigned int
7B818:  BLX             j__Znwj; operator new(uint)
7B81C:  MOV             R4, R0
7B81E:  BL              sub_78420
7B822:  MOV             R0, R5
7B824:  MOV             R1, R4
7B826:  STR.W           R4, [R5,#0x98]
7B82A:  BL              sub_7C73C
7B82E:  LDR             R0, =(off_114C88 - 0x7B836)
7B830:  LDR             R1, =(off_114C8C - 0x7B83C)
7B832:  ADD             R0, PC; off_114C88
7B834:  LDR.W           R3, [R5,#0x98]
7B838:  ADD             R1, PC; off_114C8C
7B83A:  LDR             R0, [R0]; dword_116DD8
7B83C:  ADDS            R3, #0x14
7B83E:  LDR             R1, [R1]; dword_116DD0
7B840:  LDRD.W          R2, R0, [R0]
7B844:  VMOV            D16, R2, R0
7B848:  VMOV            D17, D16
7B84C:  VST1.32         {D16-D17}, [R3]!
7B850:  STRD.W          R2, R0, [R3]
7B854:  LDRD.W          R2, R1, [R1]
7B858:  LDR.W           R0, [R5,#0x98]
7B85C:  STRD.W          R2, R1, [SP,#0x168+src]
7B860:  ADD             R1, SP, #0x168+src
7B862:  BL              sub_7C4A6
7B866:  LDR.W           R0, [R5,#0x98]
7B86A:  MOVS            R6, #0
7B86C:  STRB            R6, [R0,#8]
7B86E:  MOVS            R0, #0x74 ; 't'; unsigned int
7B870:  BLX             j__Znwj; operator new(uint)
7B874:  MOV             R4, R0
7B876:  BL              sub_78244
7B87A:  MOV             R0, R5
7B87C:  MOV             R1, R4
7B87E:  STR.W           R4, [R5,#0x94]
7B882:  BL              sub_7C73C
7B886:  LDR             R0, =(off_114C90 - 0x7B88E)
7B888:  LDR             R1, =(off_114C94 - 0x7B894)
7B88A:  ADD             R0, PC; off_114C90
7B88C:  LDR.W           R3, [R5,#0x94]
7B890:  ADD             R1, PC; off_114C94
7B892:  LDR             R0, [R0]; dword_116DE8
7B894:  ADDS            R3, #0x14
7B896:  LDR             R1, [R1]; dword_116DE0
7B898:  LDRD.W          R2, R0, [R0]
7B89C:  VMOV            D16, R2, R0
7B8A0:  VMOV            D17, D16
7B8A4:  VST1.32         {D16-D17}, [R3]!
7B8A8:  STRD.W          R2, R0, [R3]
7B8AC:  LDRD.W          R2, R1, [R1]
7B8B0:  LDR.W           R0, [R5,#0x94]
7B8B4:  STRD.W          R2, R1, [SP,#0x168+src]
7B8B8:  ADD             R1, SP, #0x168+src
7B8BA:  BL              sub_7C4A6
7B8BE:  LDR.W           R0, [R5,#0x94]
7B8C2:  STRB            R6, [R0,#8]
7B8C4:  MOVS            R0, #0x7C ; '|'; unsigned int
7B8C6:  BLX             j__Znwj; operator new(uint)
7B8CA:  MOV             R4, R0
7B8CC:  BL              sub_786F0
7B8D0:  MOV             R0, R5
7B8D2:  MOV             R1, R4
7B8D4:  STR.W           R4, [R5,#0x9C]
7B8D8:  BL              sub_7C73C
7B8DC:  LDR             R0, =(off_114C98 - 0x7B8E6)
7B8DE:  ADD             R4, SP, #0x168+src
7B8E0:  LDR             R1, =(off_114C9C - 0x7B8EC)
7B8E2:  ADD             R0, PC; off_114C98
7B8E4:  LDR.W           R3, [R5,#0x9C]
7B8E8:  ADD             R1, PC; off_114C9C
7B8EA:  LDR             R0, [R0]; dword_116DF8
7B8EC:  ADDS            R3, #0x14
7B8EE:  LDR             R1, [R1]; dword_116DF0
7B8F0:  LDRD.W          R2, R0, [R0]
7B8F4:  VMOV            D16, R2, R0
7B8F8:  VMOV            D17, D16
7B8FC:  VST1.32         {D16-D17}, [R3]!
7B900:  STRD.W          R2, R0, [R3]
7B904:  LDR.W           R0, [R5,#0x9C]
7B908:  LDRD.W          R2, R1, [R1]
7B90C:  STRD.W          R2, R1, [SP,#0x168+src]
7B910:  MOV             R1, R4
7B912:  BL              sub_7C4A6
7B916:  LDR.W           R0, [R5,#0x9C]
7B91A:  MOV.W           R9, #0
7B91E:  STRB.W          R9, [R0,#8]
7B922:  MOVS            R0, #0x14; unsigned int
7B924:  BLX             j__Znwj; operator new(uint)
7B928:  MOV             R6, R0
7B92A:  BL              sub_7ACAC
7B92E:  LDR             R0, =(off_114BA4 - 0x7B934)
7B930:  ADD             R0, PC; off_114BA4
7B932:  LDR             R0, [R0]; dword_1A459C
7B934:  STR             R6, [R0]
7B936:  BL              sub_73FD4
7B93A:  BL              sub_7A994
7B93E:  MOVS            R0, #0x78 ; 'x'; unsigned int
7B940:  BLX             j__Znwj; operator new(uint)
7B944:  MOV             R6, R0
7B946:  LDR             R0, =(off_114C24 - 0x7B954)
7B948:  VMOV.F32        S16, #2.5
7B94C:  STRB.W          R9, [SP,#0x168+var_46]
7B950:  ADD             R0, PC; off_114C24
7B952:  VMOV.F32        Q8, #1.0
7B956:  LDR.W           R8, [R0]; dword_116D58
7B95A:  MOVW            R0, #0x2002
7B95E:  STRH.W          R0, [SP,#0x168+var_48]
7B962:  VST1.64         {D16-D17}, [R4]
7B966:  VLDR            S0, [R8]
7B96A:  VDIV.F32        S0, S0, S16
7B96E:  ADD.W           R9, SP, #0x168+var_48
7B972:  MOV             R0, R6; int
7B974:  MOV             R2, R4; int
7B976:  MOVS            R3, #1; int
7B978:  MOV             R1, R9; int
7B97A:  VSTR            S0, [SP,#0x168+var_168]
7B97E:  BL              sub_7D380
7B982:  LDRB.W          R0, [SP,#0x168+var_48]
7B986:  STR.W           R6, [R5,#0xA0]
7B98A:  LSLS            R0, R0, #0x1F
7B98C:  BEQ             loc_7B998
7B98E:  LDR             R0, [SP,#0x168+var_40]; void *
7B990:  BLX             j__ZdlPv; operator delete(void *)
7B994:  LDR.W           R6, [R5,#0xA0]
7B998:  MOV             R0, R5
7B99A:  MOV             R1, R6
7B99C:  BL              sub_7C73C
7B9A0:  LDR             R0, =(off_114AA8 - 0x7B9AE)
7B9A2:  MOV             R6, #0x1D75D5
7B9AA:  ADD             R0, PC; off_114AA8
7B9AC:  LDR             R4, [R0]; dword_1A4404
7B9AE:  LDR             R0, [R4]
7B9B0:  ADD             R0, R6
7B9B2:  ADDS            R0, #0x4C ; 'L'
7B9B4:  BLX             R0
7B9B6:  MOV             R1, R0
7B9B8:  LDR             R0, [R4]
7B9BA:  ADDS            R2, R0, R6
7B9BC:  ADD             R0, SP, #0x168+src
7B9BE:  BLX             R2
7B9C0:  VLDR            S0, [SP,#0x168+src]
7B9C4:  MOVS            R1, #0xD
7B9C6:  VLDR            S2, [SP,#0x168+var_144]
7B9CA:  VCVT.F32.S32    S0, S0
7B9CE:  VLDR            S6, =640.0
7B9D2:  VCVT.F32.S32    S2, S2
7B9D6:  VLDR            S4, =448.0
7B9DA:  LDR             R0, =(unk_524C8 - 0x7B9E2)
7B9DC:  LDR             R2, =(byte_1A45B8 - 0x7B9E8)
7B9DE:  ADD             R0, PC; unk_524C8
7B9E0:  VLD1.64         {D16-D17}, [R0],R1
7B9E4:  ADD             R2, PC; byte_1A45B8
7B9E6:  VDIV.F32        S0, S0, S6
7B9EA:  VDIV.F32        S2, S2, S4
7B9EE:  VMOV.F32        S4, #5.0
7B9F2:  VLD1.8          {D18}, [R0]
7B9F6:  VMOV.F32        S6, #4.0
7B9FA:  MOV             R0, R9
7B9FC:  VST1.64         {D16-D17}, [R0],R1
7BA00:  VST1.8          {D18}, [R0]
7BA04:  VMUL.F32        S2, S2, S4
7BA08:  VMUL.F32        S0, S0, S6
7BA0C:  VSTR            S2, [SP,#0x168+var_14C]
7BA10:  VSTR            S0, [SP,#0x168+var_150]
7BA14:  LDRB            R0, [R2]
7BA16:  DMB.W           ISH
7BA1A:  LSLS            R0, R0, #0x1F
7BA1C:  BEQ             loc_7BAF6
7BA1E:  LDR             R4, =(unk_1A45A0 - 0x7BA24)
7BA20:  ADD             R4, PC; unk_1A45A0
7BA22:  MOV             R0, R4
7BA24:  BL              sub_6AE46
7BA28:  ADD             R6, SP, #0x168+src
7BA2A:  MOV             R3, R4; format
7BA2C:  MOV             R0, R6; int
7BA2E:  BL              sub_7BBEC
7BA32:  MOVS            R0, #0x78 ; 'x'; unsigned int
7BA34:  BLX             j__Znwj; operator new(uint)
7BA38:  MOV             R10, R0
7BA3A:  MOV             R0, R6; s
7BA3C:  BLX             strlen
7BA40:  CMN.W           R0, #0x10
7BA44:  BCS             loc_7BB26
7BA46:  MOV             R6, R0
7BA48:  CMP             R0, #0xB
7BA4A:  BCS             loc_7BA5C
7BA4C:  LSLS            R0, R6, #1
7BA4E:  STRB.W          R0, [SP,#0x168+var_15C]
7BA52:  ADD             R0, SP, #0x168+var_15C
7BA54:  ADD.W           R4, R0, #1
7BA58:  CBNZ            R6, loc_7BA86
7BA5A:  B               loc_7BA90
7BA5C:  ADD.W           R0, R6, #0x10
7BA60:  STR.W           R8, [SP,#0x168+var_160]
7BA64:  MOV             R8, R9
7BA66:  MOV             R9, R11
7BA68:  BIC.W           R11, R0, #0xF
7BA6C:  MOV             R0, R11; unsigned int
7BA6E:  BLX             j__Znwj; operator new(uint)
7BA72:  MOV             R4, R0
7BA74:  ORR.W           R0, R11, #1
7BA78:  MOV             R11, R9
7BA7A:  MOV             R9, R8
7BA7C:  STR             R6, [SP,#0x168+var_158]
7BA7E:  STR             R0, [SP,#0x168+var_15C]
7BA80:  STR             R4, [SP,#0x168+var_154]
7BA82:  LDR.W           R8, [SP,#0x168+var_160]
7BA86:  ADD             R1, SP, #0x168+src; src
7BA88:  MOV             R0, R4; dest
7BA8A:  MOV             R2, R6; n
7BA8C:  BLX             j_memcpy
7BA90:  VMOV.F32        Q8, #1.0
7BA94:  VLDR            S0, [R8]
7BA98:  MOVS            R0, #0
7BA9A:  STRB            R0, [R4,R6]
7BA9C:  VDIV.F32        S0, S0, S16
7BAA0:  VST1.64         {D16-D17}, [R9]
7BAA4:  ADD             R1, SP, #0x168+var_15C; int
7BAA6:  MOV             R0, R10; int
7BAA8:  MOV             R2, R9; int
7BAAA:  MOVS            R3, #1; int
7BAAC:  VSTR            S0, [SP,#0x168+var_168]
7BAB0:  BL              sub_7D380
7BAB4:  LDRB.W          R0, [SP,#0x168+var_15C]
7BAB8:  LSLS            R0, R0, #0x1F
7BABA:  ITT NE
7BABC:  LDRNE           R0, [SP,#0x168+var_154]; void *
7BABE:  BLXNE           j__ZdlPv; operator delete(void *)
7BAC2:  MOV             R0, R5
7BAC4:  MOV             R1, R10
7BAC6:  NOP
7BAC8:  NOP
7BACA:  ADD             R1, SP, #0x168+var_150
7BACC:  MOV             R0, R10
7BACE:  BL              sub_7C4A6
7BAD2:  LDR             R0, [SP,#0x168+var_2C]
7BAD4:  LDR             R1, =(__stack_chk_guard_ptr - 0x7BADA)
7BAD6:  ADD             R1, PC; __stack_chk_guard_ptr
7BAD8:  LDR             R1, [R1]; __stack_chk_guard
7BADA:  LDR             R1, [R1]
7BADC:  CMP             R1, R0
7BADE:  ITTTT EQ
7BAE0:  MOVEQ           R0, R11
7BAE2:  ADDEQ           SP, SP, #0x140
7BAE4:  VPOPEQ          {D8}
7BAE8:  ADDEQ           SP, SP, #4
7BAEA:  ITT EQ
7BAEC:  POPEQ.W         {R8-R11}
7BAF0:  POPEQ           {R4-R7,PC}
7BAF2:  BLX             __stack_chk_fail
7BAF6:  LDR             R0, =(byte_1A45B8 - 0x7BAFC)
7BAF8:  ADD             R0, PC; byte_1A45B8 ; __guard *
7BAFA:  BLX             j___cxa_guard_acquire
7BAFE:  CMP             R0, #0
7BB00:  BEQ             loc_7BA1E
7BB02:  LDR             R0, =(unk_1A45A0 - 0x7BB08)
7BB04:  ADD             R0, PC; unk_1A45A0
7BB06:  ADD             R1, SP, #0x168+var_48
7BB08:  BL              sub_6AC26
7BB0C:  LDR             R0, =(sub_6AC7C+1 - 0x7BB16)
7BB0E:  LDR             R1, =(unk_1A45A0 - 0x7BB18)
7BB10:  LDR             R2, =(off_110560 - 0x7BB1A)
7BB12:  ADD             R0, PC; sub_6AC7C ; lpfunc
7BB14:  ADD             R1, PC; unk_1A45A0 ; obj
7BB16:  ADD             R2, PC; off_110560 ; lpdso_handle
7BB18:  BLX             __cxa_atexit
7BB1C:  LDR             R0, =(byte_1A45B8 - 0x7BB22)
7BB1E:  ADD             R0, PC; byte_1A45B8 ; __guard *
7BB20:  BLX             j___cxa_guard_release
7BB24:  B               loc_7BA1E
7BB26:  ADD             R0, SP, #0x168+var_15C
7BB28:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
