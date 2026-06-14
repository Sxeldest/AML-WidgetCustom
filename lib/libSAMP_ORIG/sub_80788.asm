; =========================================================
; Game Engine Function: sub_80788
; Address            : 0x80788 - 0x8084A
; =========================================================

80788:  PUSH            {R4-R7,LR}
8078A:  ADD             R7, SP, #0xC
8078C:  PUSH.W          {R11}
80790:  SUB             SP, SP, #0x50
80792:  LDR             R0, =(__stack_chk_guard_ptr - 0x80798)
80794:  ADD             R0, PC; __stack_chk_guard_ptr
80796:  LDR             R0, [R0]; __stack_chk_guard
80798:  LDR             R0, [R0]
8079A:  STR             R0, [SP,#0x60+var_14]
8079C:  BL              sub_861B8
807A0:  MOV             R4, R0
807A2:  CBZ             R0, loc_807CA
807A4:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIPFvvENS_9allocatorIS3_EES2_EE - 0x807AE); `vtable for'std::__function::__func<void (*)(void),std::allocator<void (*)(void)>,void ()(void)> ...
807A6:  ADD             R5, SP, #0x60+var_30
807A8:  LDR             R1, =(sub_8086C+1 - 0x807B8)
807AA:  ADD             R0, PC; `vtable for'std::__function::__func<void (*)(void),std::allocator<void (*)(void)>,void ()(void)>
807AC:  STR             R5, [SP,#0x60+var_20]
807AE:  ADD.W           R6, R0, #8
807B2:  MOV             R0, R5
807B4:  ADD             R1, PC; sub_8086C
807B6:  STR             R1, [SP,#0x60+var_2C]
807B8:  STR             R6, [SP,#0x60+var_30]
807BA:  BL              sub_863A4
807BE:  LDR             R0, [SP,#0x60+var_20]
807C0:  CMP             R5, R0
807C2:  BEQ             loc_807D4
807C4:  CBZ             R0, loc_807DE
807C6:  MOVS            R1, #5
807C8:  B               loc_807D6
807CA:  LDR             R0, =(aSvErrPluginFai - 0x807D0); "[sv:err:plugin] : failed to init render"... ...
807CC:  ADD             R0, PC; "[sv:err:plugin] : failed to init render"...
807CE:  BL              sub_80664
807D2:  B               loc_8082E
807D4:  MOVS            R1, #4
807D6:  LDR             R2, [R0]
807D8:  LDR.W           R1, [R2,R1,LSL#2]
807DC:  BLX             R1
807DE:  LDR             R0, =(sub_80888+1 - 0x807E8)
807E0:  ADD             R5, SP, #0x60+var_48
807E2:  STR             R5, [SP,#0x60+var_38]
807E4:  ADD             R0, PC; sub_80888
807E6:  STRD.W          R6, R0, [SP,#0x60+var_48]
807EA:  MOV             R0, R5
807EC:  BL              sub_86490
807F0:  LDR             R0, [SP,#0x60+var_38]
807F2:  CMP             R5, R0
807F4:  BEQ             loc_807FC
807F6:  CBZ             R0, loc_80806
807F8:  MOVS            R1, #5
807FA:  B               loc_807FE
807FC:  MOVS            R1, #4
807FE:  LDR             R2, [R0]
80800:  LDR.W           R1, [R2,R1,LSL#2]
80804:  BLX             R1
80806:  LDR             R0, =(sub_8089C+1 - 0x80810)
80808:  MOV             R5, SP
8080A:  STR             R5, [SP,#0x60+var_50]
8080C:  ADD             R0, PC; sub_8089C
8080E:  STRD.W          R6, R0, [SP,#0x60+var_60]
80812:  MOV             R0, R5
80814:  BL              sub_8657C
80818:  LDR             R0, [SP,#0x60+var_50]
8081A:  CMP             R5, R0
8081C:  BEQ             loc_80824
8081E:  CBZ             R0, loc_8082E
80820:  MOVS            R1, #5
80822:  B               loc_80826
80824:  MOVS            R1, #4
80826:  LDR             R2, [R0]
80828:  LDR.W           R1, [R2,R1,LSL#2]
8082C:  BLX             R1
8082E:  LDR             R0, [SP,#0x60+var_14]
80830:  LDR             R1, =(__stack_chk_guard_ptr - 0x80836)
80832:  ADD             R1, PC; __stack_chk_guard_ptr
80834:  LDR             R1, [R1]; __stack_chk_guard
80836:  LDR             R1, [R1]
80838:  CMP             R1, R0
8083A:  ITTTT EQ
8083C:  MOVEQ           R0, R4
8083E:  ADDEQ           SP, SP, #0x50 ; 'P'
80840:  POPEQ.W         {R11}
80844:  POPEQ           {R4-R7,PC}
80846:  BLX             __stack_chk_fail
