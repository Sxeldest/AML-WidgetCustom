; =========================================================
; Game Engine Function: _ZN10FlowScreenC2Ebb
; Address            : 0x29B850 - 0x29B99A
; =========================================================

29B850:  PUSH            {R4-R7,LR}
29B852:  ADD             R7, SP, #0xC
29B854:  PUSH.W          {R8}
29B858:  SUB             SP, SP, #0x108
29B85A:  MOV             R4, R0
29B85C:  LDR             R0, =(__stack_chk_guard_ptr - 0x29B866)
29B85E:  MOV             R5, R2
29B860:  LDR             R2, =(_ZTV10MenuScreen_ptr - 0x29B868)
29B862:  ADD             R0, PC; __stack_chk_guard_ptr
29B864:  ADD             R2, PC; _ZTV10MenuScreen_ptr
29B866:  LDR             R0, [R0]; __stack_chk_guard
29B868:  LDR             R2, [R2]; `vtable for'MenuScreen ...
29B86A:  LDR             R3, [R0]
29B86C:  LDR             R0, =(aMenuSelector - 0x29B874); "menu_selector"
29B86E:  STR             R3, [SP,#0x118+var_14]
29B870:  ADD             R0, PC; "menu_selector"
29B872:  STRB            R1, [R4,#0xC]
29B874:  ADD.W           R1, R2, #8; char *
29B878:  STR             R1, [R4]
29B87A:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29B87E:  LDR             R1, =(_ZTV10FlowScreen_ptr - 0x29B88A)
29B880:  MOV.W           R8, #0
29B884:  LDR             R2, [R0,#0x54]
29B886:  ADD             R1, PC; _ZTV10FlowScreen_ptr
29B888:  ADDS            R2, #1
29B88A:  STR             R2, [R0,#0x54]
29B88C:  LDR             R1, [R1]; `vtable for'FlowScreen ...
29B88E:  ADDS            R1, #8
29B890:  STRD.W          R1, R0, [R4]
29B894:  MOVS            R0, #1; bool
29B896:  STR.W           R8, [R4,#8]
29B89A:  STRB            R5, [R4,#0xD]
29B89C:  STRD.W          R8, R8, [R4,#0x3C]
29B8A0:  STR.W           R8, [R4,#0x44]
29B8A4:  BLX             j__Z18Menu_IsPlayingGameb; Menu_IsPlayingGame(bool)
29B8A8:  CMP             R0, #1
29B8AA:  BNE             loc_29B8D2
29B8AC:  LDR             R0, =(gMobileMenu_ptr - 0x29B8B2)
29B8AE:  ADD             R0, PC; gMobileMenu_ptr
29B8B0:  LDR             R0, [R0]; gMobileMenu
29B8B2:  LDRB.W          R0, [R0,#(word_6E00C0+1 - 0x6E006C)]
29B8B6:  CBNZ            R0, loc_29B8D2
29B8B8:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x29B8C2)
29B8BA:  MOVS            R1, #0
29B8BC:  STR             R1, [R4,#0x10]
29B8BE:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
29B8C0:  STRD.W          R1, R1, [R4,#0x18]
29B8C4:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
29B8C6:  LDR             R0, [R0,#(dword_A00450 - 0xA00448)]
29B8C8:  CMP             R0, #0
29B8CA:  IT NE
29B8CC:  MOVNE           R0, #1
29B8CE:  STRB            R0, [R4,#0x14]
29B8D0:  B               loc_29B974
29B8D2:  ADR             R0, aMenuMainpresen; "menu_mainpresents"
29B8D4:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29B8D8:  LDR             R1, [R0,#0x54]
29B8DA:  ADDS            R1, #1
29B8DC:  STR             R1, [R0,#0x54]
29B8DE:  STR             R0, [R4,#0x10]
29B8E0:  STRB.W          R8, [R4,#0x14]
29B8E4:  BLX             rand
29B8E8:  ASRS            R2, R0, #0x1F
29B8EA:  LDR             R1, =(aMenuMainD - 0x29B8FA); "menu_main%d"
29B8EC:  ADD.W           R2, R0, R2,LSR#30
29B8F0:  ADD             R5, SP, #0x118+var_114
29B8F2:  BIC.W           R2, R2, #3
29B8F6:  ADD             R1, PC; "menu_main%d"
29B8F8:  SUBS            R0, R0, R2
29B8FA:  ADDS            R2, R0, #1
29B8FC:  MOV             R0, R5
29B8FE:  BL              sub_5E6BC0
29B902:  MOV             R0, R5; this
29B904:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29B908:  LDR             R6, =(aMenuMainD - 0x29B910); "menu_main%d"
29B90A:  LDR             R1, [R0,#0x54]
29B90C:  ADD             R6, PC; "menu_main%d"
29B90E:  ADDS            R1, #1
29B910:  STR             R1, [R0,#0x54]
29B912:  STRD.W          R0, R8, [R4,#0x18]
29B916:  MOVS            R0, #0
29B918:  CBZ             R0, loc_29B922
29B91A:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
29B91E:  STR.W           R8, [R4,#0x1C]
29B922:  BLX             rand
29B926:  ASRS            R1, R0, #0x1F
29B928:  ADD.W           R1, R0, R1,LSR#30
29B92C:  BIC.W           R1, R1, #3
29B930:  SUBS            R0, R0, R1
29B932:  MOV             R1, R6
29B934:  ADDS            R2, R0, #1
29B936:  MOV             R0, R5
29B938:  BL              sub_5E6BC0
29B93C:  MOV             R0, R5; this
29B93E:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29B942:  LDR             R1, [R0,#0x54]
29B944:  ADDS            R1, #1
29B946:  STR             R1, [R0,#0x54]
29B948:  LDR             R1, [R4,#0x18]
29B94A:  STR             R0, [R4,#0x1C]
29B94C:  CMP             R0, R1
29B94E:  BEQ             loc_29B918
29B950:  MOVS            R0, #0x40A00000
29B956:  STR             R0, [R4,#0x20]
29B958:  BLX             rand
29B95C:  MOV             R1, #0x55555556
29B964:  SMMUL.W         R1, R0, R1
29B968:  ADD.W           R1, R1, R1,LSR#31
29B96C:  ADD.W           R1, R1, R1,LSL#1
29B970:  SUBS            R0, R0, R1
29B972:  STR             R0, [R4,#0x24]
29B974:  MOVS            R0, #0
29B976:  STRD.W          R0, R0, [R4,#0x30]
29B97A:  STRB.W          R0, [R4,#0x38]
29B97E:  LDR             R0, =(__stack_chk_guard_ptr - 0x29B986)
29B980:  LDR             R1, [SP,#0x118+var_14]
29B982:  ADD             R0, PC; __stack_chk_guard_ptr
29B984:  LDR             R0, [R0]; __stack_chk_guard
29B986:  LDR             R0, [R0]
29B988:  SUBS            R0, R0, R1
29B98A:  ITTTT EQ
29B98C:  MOVEQ           R0, R4
29B98E:  ADDEQ           SP, SP, #0x108
29B990:  POPEQ.W         {R8}
29B994:  POPEQ           {R4-R7,PC}
29B996:  BLX             __stack_chk_fail
