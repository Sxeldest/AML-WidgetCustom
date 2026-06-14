; =========================================================
; Game Engine Function: sub_1F4B64
; Address            : 0x1F4B64 - 0x1F4BB6
; =========================================================

1F4B64:  PUSH            {R4-R7,LR}
1F4B66:  ADD             R7, SP, #0xC
1F4B68:  PUSH.W          {R11}
1F4B6C:  SUB             SP, SP, #8
1F4B6E:  MOV             R5, R0
1F4B70:  LDR             R0, =(__stack_chk_guard_ptr - 0x1F4B7A)
1F4B72:  MOV             R6, SP
1F4B74:  MOV             R4, R1
1F4B76:  ADD             R0, PC; __stack_chk_guard_ptr
1F4B78:  MOV             R1, R5; std::locale *
1F4B7A:  LDR             R0, [R0]; __stack_chk_guard
1F4B7C:  LDR             R0, [R0]
1F4B7E:  STR             R0, [SP,#0x18+var_14]
1F4B80:  MOV             R0, R6; this
1F4B82:  BLX             j__ZNSt6__ndk16localeC2ERKS0_; std::locale::locale(std::locale const&)
1F4B86:  MOV             R0, R5
1F4B88:  MOV             R1, R4
1F4B8A:  BLX             j__ZNSt6__ndk16localeaSERKS0_; std::locale::operator=(std::locale const&)
1F4B8E:  MOV             R0, R4
1F4B90:  MOV             R1, R6
1F4B92:  BLX             j__ZNSt6__ndk16localeaSERKS0_; std::locale::operator=(std::locale const&)
1F4B96:  MOV             R0, R6; this
1F4B98:  BLX             j__ZNSt6__ndk16localeD2Ev; std::locale::~locale()
1F4B9C:  LDR             R0, [SP,#0x18+var_14]
1F4B9E:  LDR             R1, =(__stack_chk_guard_ptr - 0x1F4BA4)
1F4BA0:  ADD             R1, PC; __stack_chk_guard_ptr
1F4BA2:  LDR             R1, [R1]; __stack_chk_guard
1F4BA4:  LDR             R1, [R1]
1F4BA6:  CMP             R1, R0
1F4BA8:  ITTT EQ
1F4BAA:  ADDEQ           SP, SP, #8
1F4BAC:  POPEQ.W         {R11}
1F4BB0:  POPEQ           {R4-R7,PC}
1F4BB2:  BLX             __stack_chk_fail
