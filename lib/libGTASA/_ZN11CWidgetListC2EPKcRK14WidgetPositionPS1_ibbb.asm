; =========================================================
; Game Engine Function: _ZN11CWidgetListC2EPKcRK14WidgetPositionPS1_ibbb
; Address            : 0x2B9690 - 0x2B9B40
; =========================================================

2B9690:  PUSH            {R4-R7,LR}
2B9692:  ADD             R7, SP, #0xC
2B9694:  PUSH.W          {R8-R11}
2B9698:  SUB             SP, SP, #4
2B969A:  VPUSH           {D8-D9}
2B969E:  SUB.W           SP, SP, #0x8000
2B96A2:  SUB             SP, SP, #0x28
2B96A4:  MOV             R5, R3
2B96A6:  LDR.W           R3, =(__stack_chk_guard_ptr - 0x2B96AE)
2B96AA:  ADD             R3, PC; __stack_chk_guard_ptr
2B96AC:  LDR             R3, [R3]; __stack_chk_guard
2B96AE:  LDR             R3, [R3]
2B96B0:  STR.W           R3, [R7,#var_38]
2B96B4:  MOVS            R3, #0
2B96B6:  STR             R3, [SP,#0x8058+var_8058]
2B96B8:  MOVS            R3, #0
2B96BA:  BLX             j__ZN7CWidgetC2EPKcRK14WidgetPositionj10HIDMapping; CWidget::CWidget(char const*,WidgetPosition const&,uint,HIDMapping)
2B96BE:  LDR.W           R1, =(_ZTV11CWidgetList_ptr - 0x2B96D2)
2B96C2:  ADD.W           R8, R0, #0x190
2B96C6:  ADD.W           R9, SP, #0x8058+var_8038
2B96CA:  MOV.W           R10, #0x30 ; '0'
2B96CE:  ADD             R1, PC; _ZTV11CWidgetList_ptr
2B96D0:  MOV.W           R11, #0xFF
2B96D4:  MOV             R4, R8
2B96D6:  LDR             R1, [R1]; `vtable for'CWidgetList ...
2B96D8:  ADDS            R1, #8
2B96DA:  STR             R1, [R0]
2B96DC:  ADD.W           R1, R0, #0x11000
2B96E0:  STR             R0, [SP,#0x8058+var_8050]
2B96E2:  ADR.W           R0, dword_2B9B50
2B96E6:  ADD.W           R6, R1, #0xC90
2B96EA:  VLD1.64         {D8-D9}, [R0@128]
2B96EE:  MOV             R0, R4; this
2B96F0:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
2B96F4:  MOV             R0, #0xFFFFFF00
2B96F8:  MOVS            R1, #0xFF; unsigned __int8
2B96FA:  STRH.W          R10, [R4,R0]
2B96FE:  ADDS            R0, R4, #4
2B9700:  MOVS            R2, #0xFF; unsigned __int8
2B9702:  STRH.W          R10, [R4,#-0x80]
2B9706:  MOVS            R3, #0xFF; unsigned __int8
2B9708:  VST1.32         {D8-D9}, [R0]
2B970C:  MOV             R0, R9; this
2B970E:  STR.W           R11, [SP,#0x8058+var_8058]; unsigned __int8
2B9712:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B9716:  LDRB.W          R0, [SP,#0x8058+var_8038]
2B971A:  STRB            R0, [R4,#0x14]
2B971C:  LDRB.W          R0, [SP,#0x8058+var_8037]
2B9720:  STRB            R0, [R4,#0x15]
2B9722:  LDRB.W          R0, [SP,#0x8058+var_8036]
2B9726:  STRB            R0, [R4,#0x16]
2B9728:  LDRB.W          R0, [SP,#0x8058+var_8035]
2B972C:  STRB            R0, [R4,#0x17]
2B972E:  MOVS            R0, #0
2B9730:  STRB            R0, [R4,#0x18]
2B9732:  ADD.W           R0, R4, #0x1C
2B9736:  ADD.W           R4, R4, #0x11C
2B973A:  CMP             R0, R6
2B973C:  BNE             loc_2B96EE
2B973E:  LDR.W           R11, [R7,#arg_0]
2B9742:  MOVW            R0, #:lower16:(elf_hash_chain+0x1B6D)
2B9746:  ADR.W           R1, dword_2B9B60
2B974A:  MOVT            R0, #:upper16:(elf_hash_chain+0x1B6D)
2B974E:  VLD1.64         {D16-D17}, [R1@128]
2B9752:  VMOV            S2, R11
2B9756:  LDR             R1, [R7,#arg_8]
2B9758:  VCVT.F32.S32    S2, S2
2B975C:  LDR.W           R9, [SP,#0x8058+var_8050]
2B9760:  VLDR            S0, =256.0
2B9764:  LDR             R2, [R7,#arg_C]
2B9766:  STRB.W          R1, [R9,R0]
2B976A:  MOV             R0, #0x11CD6
2B9772:  MOVS            R1, #0
2B9774:  STRB.W          R1, [R9,R0]
2B9778:  MOV             R0, #0x11CD0
2B9780:  VMIN.F32        D0, D1, D0
2B9784:  STR.W           R1, [R9,R0]
2B9788:  MOV             R0, #0x11CD4
2B9790:  STRB.W          R1, [R9,R0]
2B9794:  MOV             R0, #0x11CD7
2B979C:  STRB.W          R2, [R9,R0]
2B97A0:  VCVT.S32.F32    S0, S0
2B97A4:  MOV             R0, #0x11CCC
2B97AC:  ADD.W           R2, R9, #0x10000
2B97B0:  STR.W           R1, [R9,R0]
2B97B4:  MOV             R1, #0x11CB0
2B97BC:  ADD.W           R10, R9, R1
2B97C0:  ADD.W           R2, R2, #0x1CA0
2B97C4:  VMOV            R0, S0
2B97C8:  STR.W           R0, [R9,R1]
2B97CC:  LDR             R1, [R7,#arg_4]
2B97CE:  VST1.32         {D16-D17}, [R2]
2B97D2:  CMP             R1, #0
2B97D4:  VST1.32         {D16-D17}, [R6]
2B97D8:  BEQ             loc_2B9830
2B97DA:  CMP.W           R11, #1
2B97DE:  BLT             loc_2B97F4
2B97E0:  ADD             R4, SP, #0x8058+var_8038
2B97E2:  MOV             R6, R11
2B97E4:  LDR.W           R1, [R5],#4; char *
2B97E8:  MOV             R0, R4; char *
2B97EA:  BLX             strcpy
2B97EE:  ADDS            R4, #0x80
2B97F0:  SUBS            R6, #1
2B97F2:  BNE             loc_2B97E4
2B97F4:  LDR             R1, =(_ZN11CWidgetList15AlphabetizeSortEPKvS1__ptr - 0x2B97FE)
2B97F6:  ADD             R0, SP, #0x8058+var_8038; void *
2B97F8:  MOVS            R2, #0x80; size_t
2B97FA:  ADD             R1, PC; _ZN11CWidgetList15AlphabetizeSortEPKvS1__ptr
2B97FC:  LDR             R3, [R1]; CWidgetList::AlphabetizeSort(void const*,void const*) ; int (*)(const void *, const void *)
2B97FE:  MOV             R1, R11; size_t
2B9800:  BLX             qsort
2B9804:  LDR.W           R0, [R10]
2B9808:  CMP             R0, #1
2B980A:  BLT.W           loc_2B9914
2B980E:  ADD.W           R4, R9, #0x90
2B9812:  ADD             R5, SP, #0x8058+var_8038
2B9814:  MOVS            R6, #0
2B9816:  MOV             R0, R4; char *
2B9818:  MOV             R1, R5; char *
2B981A:  BLX             strcpy
2B981E:  LDR.W           R0, [R10]
2B9822:  ADDS            R6, #1
2B9824:  ADD.W           R4, R4, #0x11C
2B9828:  ADDS            R5, #0x80
2B982A:  CMP             R6, R0
2B982C:  BLT             loc_2B9816
2B982E:  B               loc_2B9914
2B9830:  ADD             R4, SP, #0x8058+var_8038
2B9832:  CMP             R0, #1
2B9834:  BLT             loc_2B9914
2B9836:  ADD.W           R0, R4, #0x104
2B983A:  MOV.W           R11, #0
2B983E:  STR             R0, [SP,#0x8058+var_8048]
2B9840:  ADD.W           R0, R4, #0x100
2B9844:  STR             R0, [SP,#0x8058+var_8040]
2B9846:  STR             R5, [SP,#0x8058+var_8044]
2B9848:  STR.W           R10, [SP,#0x8058+var_804C]
2B984C:  MOVS            R0, #0xFF
2B984E:  LDR.W           R6, [R5,R11,LSL#2]
2B9852:  STR             R0, [SP,#0x8058+var_8058]; unsigned __int8
2B9854:  ADD             R0, SP, #0x8058+var_803C; this
2B9856:  MOVS            R1, #0xFF; unsigned __int8
2B9858:  MOVS            R2, #0xFF; unsigned __int8
2B985A:  MOVS            R3, #0xFF; unsigned __int8
2B985C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B9860:  LDR             R0, [SP,#0x8058+var_8040]; this
2B9862:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
2B9866:  MOVW            R0, #0x2400
2B986A:  CMP             R6, #0
2B986C:  MOVT            R0, #0x4974
2B9870:  STR             R0, [SP,#0x8058+var_7F28]
2B9872:  STR             R0, [SP,#0x8058+var_7F34]
2B9874:  MOV             R0, #0xC9742400
2B987C:  STRD.W          R0, R0, [SP,#0x8058+var_7F30]
2B9880:  ADR             R0, dword_2B9B78
2B9882:  IT EQ
2B9884:  MOVEQ           R6, R0
2B9886:  MOV             R0, R4; char *
2B9888:  MOV             R1, R6; char *
2B988A:  BLX             strcpy
2B988E:  LDR             R5, [SP,#0x8058+var_8048]
2B9890:  MOVS            R0, #0x30 ; '0'
2B9892:  STRH.W          R0, [SP,#0x8058+var_7FB8]
2B9896:  MOVS            R0, #0
2B9898:  ADD             R1, SP, #0x8058+var_8038; void *
2B989A:  LDRB.W          R6, [SP,#0x8058+var_803C]
2B989E:  VST1.32         {D8-D9}, [R5]
2B98A2:  MOV.W           R2, #0x100; size_t
2B98A6:  STRB.W          R0, [SP,#0x8058+var_7F20]
2B98AA:  SUB.W           R0, R8, #0x100; void *
2B98AE:  LDRB.W          R4, [SP,#0x8058+var_803B]
2B98B2:  LDRB.W          R9, [SP,#0x8058+var_803A]
2B98B6:  LDRB.W          R10, [SP,#0x8058+var_8039]
2B98BA:  STRB.W          R6, [SP,#0x8058+var_7F24]
2B98BE:  STRB.W          R4, [SP,#0x8058+var_7F23]
2B98C2:  STRB.W          R9, [SP,#0x8058+var_7F22]
2B98C6:  STRB.W          R10, [SP,#0x8058+var_7F21]
2B98CA:  BLX             memcpy_0
2B98CE:  LDR             R0, [SP,#0x8058+var_7F38]
2B98D0:  STR.W           R0, [R8]
2B98D4:  MOVS            R0, #0
2B98D6:  VLD1.32         {D16-D17}, [R5]
2B98DA:  STRB.W          R6, [R8,#0x14]
2B98DE:  STRB.W          R4, [R8,#0x15]
2B98E2:  ADD             R4, SP, #0x8058+var_8038
2B98E4:  STRB.W          R9, [R8,#0x16]
2B98E8:  STRB.W          R10, [R8,#0x17]
2B98EC:  LDR.W           R10, [SP,#0x8058+var_804C]
2B98F0:  LDR             R5, [SP,#0x8058+var_8044]
2B98F2:  STRB.W          R0, [R8,#0x18]
2B98F6:  ADD.W           R0, R8, #4
2B98FA:  VST1.32         {D16-D17}, [R0]
2B98FE:  LDR             R0, [SP,#0x8058+var_8040]; this
2B9900:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B9904:  LDR.W           R0, [R10]
2B9908:  ADD.W           R11, R11, #1
2B990C:  ADD.W           R8, R8, #0x11C
2B9910:  CMP             R11, R0
2B9912:  BLT             loc_2B984C
2B9914:  LDR             R0, =(RsGlobal_ptr - 0x2B9922)
2B9916:  MOVS            R1, #0
2B9918:  VLDR            S2, =448.0
2B991C:  MOVS            R4, #0xFF
2B991E:  ADD             R0, PC; RsGlobal_ptr
2B9920:  MOVS            R2, #0xFF; unsigned __int8
2B9922:  MOVS            R3, #0xFF; unsigned __int8
2B9924:  LDR             R0, [R0]; RsGlobal
2B9926:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
2B9928:  VMOV            S0, R0
2B992C:  MOV             R0, #0x11CB8
2B9934:  VCVT.F32.S32    S0, S0
2B9938:  LDR             R6, [SP,#0x8058+var_8050]
2B993A:  STR             R1, [R6,R0]
2B993C:  MOV             R0, #0x11CBC
2B9944:  STR             R1, [R6,R0]
2B9946:  MOV             R0, #0x11CC0
2B994E:  VDIV.F32        S0, S0, S2
2B9952:  MOV.W           R1, #0xFFFFFFFF
2B9956:  STR             R1, [R6,R0]
2B9958:  MOV             R0, #0x11CC4
2B9960:  STR             R1, [R6,R0]
2B9962:  ADD.W           R0, R6, #0x11C00
2B9966:  ADDS            R0, #0xB4
2B9968:  MOVS            R1, #0xFF; unsigned __int8
2B996A:  VMOV.F32        S2, #15.0
2B996E:  VMUL.F32        S0, S0, S2
2B9972:  VSTR            S0, [R0]
2B9976:  ADD             R0, SP, #0x8058+var_8038; this
2B9978:  STR             R4, [SP,#0x8058+var_8058]; unsigned __int8
2B997A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B997E:  MOVW            R1, #:lower16:(elf_hash_chain+0x1B70)
2B9982:  LDRB.W          R0, [SP,#0x8058+var_8038]
2B9986:  MOVT            R1, #:upper16:(elf_hash_chain+0x1B70)
2B998A:  MOVS            R5, #0xC0
2B998C:  STRB            R0, [R6,R1]
2B998E:  MOV             R1, #0x11CD9
2B9996:  LDRB.W          R0, [SP,#0x8058+var_8037]
2B999A:  MOVS            R2, #0xC0; unsigned __int8
2B999C:  STRB            R0, [R6,R1]
2B999E:  MOV             R1, #0x11CDA
2B99A6:  LDRB.W          R0, [SP,#0x8058+var_8036]
2B99AA:  MOVS            R3, #0xC0; unsigned __int8
2B99AC:  STRB            R0, [R6,R1]
2B99AE:  MOV             R1, #0x11CDB
2B99B6:  LDRB.W          R0, [SP,#0x8058+var_8035]
2B99BA:  STRB            R0, [R6,R1]
2B99BC:  ADD             R0, SP, #0x8058+var_8038; this
2B99BE:  MOVS            R1, #0xC0; unsigned __int8
2B99C0:  STR             R5, [SP,#0x8058+var_8058]; unsigned __int8
2B99C2:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B99C6:  MOVW            R1, #:lower16:(elf_hash_chain+0x1B74)
2B99CA:  LDRB.W          R0, [SP,#0x8058+var_8038]
2B99CE:  MOVT            R1, #:upper16:(elf_hash_chain+0x1B74)
2B99D2:  MOVS            R2, #0xC0; unsigned __int8
2B99D4:  STRB            R0, [R6,R1]
2B99D6:  MOV             R1, #0x11CDD
2B99DE:  LDRB.W          R0, [SP,#0x8058+var_8037]
2B99E2:  MOVS            R3, #0xC0; unsigned __int8
2B99E4:  STRB            R0, [R6,R1]
2B99E6:  MOV             R1, #0x11CDE
2B99EE:  LDRB.W          R0, [SP,#0x8058+var_8036]
2B99F2:  STRB            R0, [R6,R1]
2B99F4:  MOV             R1, #0x11CDF
2B99FC:  LDRB.W          R0, [SP,#0x8058+var_8035]
2B9A00:  STRB            R0, [R6,R1]
2B9A02:  ADD             R0, SP, #0x8058+var_8038; this
2B9A04:  MOVS            R1, #0xC0; unsigned __int8
2B9A06:  STR             R5, [SP,#0x8058+var_8058]; unsigned __int8
2B9A08:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B9A0C:  MOVW            R1, #:lower16:(elf_hash_chain+0x1B78)
2B9A10:  LDRB.W          R0, [SP,#0x8058+var_8038]
2B9A14:  MOVT            R1, #:upper16:(elf_hash_chain+0x1B78)
2B9A18:  MOVS            R2, #0; unsigned __int8
2B9A1A:  STRB            R0, [R6,R1]
2B9A1C:  MOV             R1, #0x11CE1
2B9A24:  LDRB.W          R0, [SP,#0x8058+var_8037]
2B9A28:  MOVS            R3, #0; unsigned __int8
2B9A2A:  STRB            R0, [R6,R1]
2B9A2C:  MOV             R1, #0x11CE2
2B9A34:  LDRB.W          R0, [SP,#0x8058+var_8036]
2B9A38:  STRB            R0, [R6,R1]
2B9A3A:  MOV             R1, #0x11CE3
2B9A42:  LDRB.W          R0, [SP,#0x8058+var_8035]
2B9A46:  STRB            R0, [R6,R1]
2B9A48:  ADD             R0, SP, #0x8058+var_8038; this
2B9A4A:  MOVS            R1, #0xFF; unsigned __int8
2B9A4C:  STR             R5, [SP,#0x8058+var_8058]; unsigned __int8
2B9A4E:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B9A52:  MOVW            R1, #:lower16:(elf_hash_chain+0x1B7C)
2B9A56:  LDRB.W          R0, [SP,#0x8058+var_8038]
2B9A5A:  MOVT            R1, #:upper16:(elf_hash_chain+0x1B7C)
2B9A5E:  MOVS            R2, #0; unsigned __int8
2B9A60:  STRB            R0, [R6,R1]
2B9A62:  MOV             R1, #0x11CE5
2B9A6A:  LDRB.W          R0, [SP,#0x8058+var_8037]
2B9A6E:  MOVS            R3, #0; unsigned __int8
2B9A70:  STRB            R0, [R6,R1]
2B9A72:  MOV             R1, #0x11CE6
2B9A7A:  LDRB.W          R0, [SP,#0x8058+var_8036]
2B9A7E:  STRB            R0, [R6,R1]
2B9A80:  MOV             R1, #0x11CE7
2B9A88:  LDRB.W          R0, [SP,#0x8058+var_8035]
2B9A8C:  STRB            R0, [R6,R1]
2B9A8E:  ADD             R0, SP, #0x8058+var_8038; this
2B9A90:  MOVS            R1, #0xC0; unsigned __int8
2B9A92:  STR             R5, [SP,#0x8058+var_8058]; unsigned __int8
2B9A94:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B9A98:  MOVW            R1, #:lower16:(elf_hash_chain+0x1B80)
2B9A9C:  LDRB.W          R0, [SP,#0x8058+var_8038]
2B9AA0:  MOVT            R1, #:upper16:(elf_hash_chain+0x1B80)
2B9AA4:  MOVS            R2, #0xC0; unsigned __int8
2B9AA6:  STRB            R0, [R6,R1]
2B9AA8:  MOV             R1, #0x11CE9
2B9AB0:  LDRB.W          R0, [SP,#0x8058+var_8037]
2B9AB4:  MOVS            R3, #0; unsigned __int8
2B9AB6:  STRB            R0, [R6,R1]
2B9AB8:  MOV             R1, #0x11CEA
2B9AC0:  LDRB.W          R0, [SP,#0x8058+var_8036]
2B9AC4:  STRB            R0, [R6,R1]
2B9AC6:  MOV             R1, #0x11CEB
2B9ACE:  LDRB.W          R0, [SP,#0x8058+var_8035]
2B9AD2:  STRB            R0, [R6,R1]
2B9AD4:  ADD             R0, SP, #0x8058+var_8038; this
2B9AD6:  MOVS            R1, #0xC0; unsigned __int8
2B9AD8:  STR             R4, [SP,#0x8058+var_8058]; unsigned __int8
2B9ADA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B9ADE:  MOVW            R1, #:lower16:(elf_hash_chain+0x1B84)
2B9AE2:  LDRB.W          R0, [SP,#0x8058+var_8038]
2B9AE6:  MOVT            R1, #:upper16:(elf_hash_chain+0x1B84)
2B9AEA:  STRB            R0, [R6,R1]
2B9AEC:  MOV             R1, #0x11CED
2B9AF4:  LDRB.W          R0, [SP,#0x8058+var_8037]
2B9AF8:  STRB            R0, [R6,R1]
2B9AFA:  MOV             R1, #0x11CEE
2B9B02:  LDRB.W          R0, [SP,#0x8058+var_8036]
2B9B06:  STRB            R0, [R6,R1]
2B9B08:  MOV             R1, #0x11CEF
2B9B10:  LDRB.W          R0, [SP,#0x8058+var_8035]
2B9B14:  STRB            R0, [R6,R1]
2B9B16:  LDR             R0, =(__stack_chk_guard_ptr - 0x2B9B20)
2B9B18:  LDR.W           R1, [R7,#var_38]
2B9B1C:  ADD             R0, PC; __stack_chk_guard_ptr
2B9B1E:  LDR             R0, [R0]; __stack_chk_guard
2B9B20:  LDR             R0, [R0]
2B9B22:  SUBS            R0, R0, R1
2B9B24:  ITTTT EQ
2B9B26:  MOVEQ           R0, R6
2B9B28:  ADDEQ.W         SP, SP, #0x8000
2B9B2C:  ADDEQ           SP, SP, #0x28 ; '('
2B9B2E:  VPOPEQ          {D8-D9}
2B9B32:  ITTT EQ
2B9B34:  ADDEQ           SP, SP, #4
2B9B36:  POPEQ.W         {R8-R11}
2B9B3A:  POPEQ           {R4-R7,PC}
2B9B3C:  BLX             __stack_chk_fail
