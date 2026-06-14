; =========================================================
; Game Engine Function: _ZN16CharSelectScreenC2EPKcb
; Address            : 0x29E73C - 0x29E840
; =========================================================

29E73C:  PUSH            {R4-R7,LR}
29E73E:  ADD             R7, SP, #0xC
29E740:  PUSH.W          {R8}
29E744:  SUB             SP, SP, #0x108
29E746:  MOV             R4, R0
29E748:  LDR             R0, =(__stack_chk_guard_ptr - 0x29E752)
29E74A:  MOV             R5, R1
29E74C:  LDR             R1, =(_ZTV10MenuScreen_ptr - 0x29E754)
29E74E:  ADD             R0, PC; __stack_chk_guard_ptr
29E750:  ADD             R1, PC; _ZTV10MenuScreen_ptr
29E752:  LDR             R0, [R0]; __stack_chk_guard
29E754:  LDR             R1, [R1]; `vtable for'MenuScreen ...
29E756:  LDR             R3, [R0]
29E758:  ADDS            R1, #8; char *
29E75A:  LDR             R0, =(aMenuSelector - 0x29E762); "menu_selector"
29E75C:  STR             R3, [SP,#0x118+var_14]
29E75E:  ADD             R0, PC; "menu_selector"
29E760:  STRB            R2, [R4,#0xC]
29E762:  STR             R1, [R4]
29E764:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29E768:  LDR             R1, =(_ZTV16CharSelectScreen_ptr - 0x29E778)
29E76A:  VMOV.I32        Q8, #0
29E76E:  LDR             R2, [R0,#0x54]
29E770:  ADD.W           R3, R4, #0x21 ; '!'
29E774:  ADD             R1, PC; _ZTV16CharSelectScreen_ptr
29E776:  MOV.W           R8, #0
29E77A:  ADDS            R2, #1
29E77C:  STR             R2, [R0,#0x54]
29E77E:  LDR             R1, [R1]; `vtable for'CharSelectScreen ...
29E780:  ADD.W           R2, R4, #0x14
29E784:  VST1.8          {D16-D17}, [R3]
29E788:  ADDS            R1, #8
29E78A:  VST1.32         {D16-D17}, [R2]
29E78E:  STR             R5, [R4,#0x10]
29E790:  STRD.W          R1, R0, [R4]
29E794:  STR.W           R8, [R4,#8]
29E798:  BLX             rand
29E79C:  ASRS            R2, R0, #0x1F
29E79E:  LDR             R1, =(aMenuCharD - 0x29E7AE); "menu_char%d"
29E7A0:  ADD.W           R2, R0, R2,LSR#29
29E7A4:  ADD             R5, SP, #0x118+var_114
29E7A6:  BIC.W           R2, R2, #7
29E7AA:  ADD             R1, PC; "menu_char%d"
29E7AC:  SUBS            R2, R0, R2
29E7AE:  MOV             R0, R5
29E7B0:  BL              sub_5E6BC0
29E7B4:  MOV             R0, R5; this
29E7B6:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29E7BA:  LDR             R6, =(aMenuCharD - 0x29E7C2); "menu_char%d"
29E7BC:  LDR             R1, [R0,#0x54]
29E7BE:  ADD             R6, PC; "menu_char%d"
29E7C0:  ADDS            R1, #1
29E7C2:  STR             R1, [R0,#0x54]
29E7C4:  STRD.W          R0, R8, [R4,#0x34]
29E7C8:  MOVS            R0, #0
29E7CA:  CBZ             R0, loc_29E7D4
29E7CC:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
29E7D0:  STR.W           R8, [R4,#0x38]
29E7D4:  BLX             rand
29E7D8:  ASRS            R1, R0, #0x1F
29E7DA:  ADD.W           R1, R0, R1,LSR#29
29E7DE:  BIC.W           R1, R1, #7
29E7E2:  SUBS            R2, R0, R1
29E7E4:  MOV             R0, R5
29E7E6:  MOV             R1, R6
29E7E8:  BL              sub_5E6BC0
29E7EC:  MOV             R0, R5; this
29E7EE:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29E7F2:  LDR             R1, [R0,#0x54]
29E7F4:  ADDS            R1, #1
29E7F6:  STR             R1, [R0,#0x54]
29E7F8:  LDR             R1, [R4,#0x34]
29E7FA:  STR             R0, [R4,#0x38]
29E7FC:  CMP             R0, R1
29E7FE:  BEQ             loc_29E7CA
29E800:  MOVS            R0, #0x40A00000
29E806:  STR             R0, [R4,#0x3C]
29E808:  BLX             rand
29E80C:  MOV             R1, #0x55555556
29E814:  SMMUL.W         R1, R0, R1
29E818:  ADD.W           R1, R1, R1,LSR#31
29E81C:  ADD.W           R1, R1, R1,LSL#1
29E820:  SUBS            R0, R0, R1
29E822:  STR             R0, [R4,#0x40]
29E824:  LDR             R0, =(__stack_chk_guard_ptr - 0x29E82C)
29E826:  LDR             R1, [SP,#0x118+var_14]
29E828:  ADD             R0, PC; __stack_chk_guard_ptr
29E82A:  LDR             R0, [R0]; __stack_chk_guard
29E82C:  LDR             R0, [R0]
29E82E:  SUBS            R0, R0, R1
29E830:  ITTTT EQ
29E832:  MOVEQ           R0, R4
29E834:  ADDEQ           SP, SP, #0x108
29E836:  POPEQ.W         {R8}
29E83A:  POPEQ           {R4-R7,PC}
29E83C:  BLX             __stack_chk_fail
