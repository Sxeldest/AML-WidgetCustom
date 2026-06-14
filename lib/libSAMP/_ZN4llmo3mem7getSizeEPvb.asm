; =========================================================
; Game Engine Function: _ZN4llmo3mem7getSizeEPvb
; Address            : 0x1E2E88 - 0x1E2EE8
; =========================================================

1E2E88:  PUSH            {R4,R6,R7,LR}
1E2E8A:  ADD             R7, SP, #8
1E2E8C:  SUB             SP, SP, #0x28
1E2E8E:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN4llmo3mem7getSizeEPvbE3$_4NS_9allocatorIS5_EEFbRKN12posix_detail7memInfoEEEE - 0x1E2E98); `vtable for'std::__function::__func<llmo::mem::getSize(void *,bool)::$_4,std::allocator<llmo::mem::getSize(void *,bool)::$_4>,bool ()(posix_detail::memInfo const&)> ...
1E2E90:  ADD             R4, SP, #0x30+var_28
1E2E92:  LDR             R3, =(__stack_chk_guard_ptr - 0x1E2E9A)
1E2E94:  ADD             R2, PC; `vtable for'std::__function::__func<llmo::mem::getSize(void *,bool)::$_4,std::allocator<llmo::mem::getSize(void *,bool)::$_4>,bool ()(posix_detail::memInfo const&)>
1E2E96:  ADD             R3, PC; __stack_chk_guard_ptr
1E2E98:  LDR             R3, [R3]; __stack_chk_guard
1E2E9A:  LDR             R3, [R3]
1E2E9C:  STR             R3, [SP,#0x30+var_C]
1E2E9E:  STR             R0, [SP,#0x30+var_2C]
1E2EA0:  MOVS            R0, #0
1E2EA2:  STR             R0, [SP,#0x30+var_30]
1E2EA4:  MOV             R0, SP
1E2EA6:  STR             R0, [SP,#0x30+var_20]
1E2EA8:  ADD             R0, SP, #0x30+var_2C
1E2EAA:  STR             R0, [SP,#0x30+var_24]
1E2EAC:  ADD.W           R0, R2, #8
1E2EB0:  STR             R4, [SP,#0x30+var_18]
1E2EB2:  STR             R0, [SP,#0x30+var_28]
1E2EB4:  MOV             R0, R4
1E2EB6:  BLX             j__ZN12posix_detail10getMemInfoERKNSt6__ndk18functionIFbRKNS_7memInfoEEEEb; posix_detail::getMemInfo(std::function<bool ()(posix_detail::memInfo const&)> const&,bool)
1E2EBA:  LDR             R0, [SP,#0x30+var_18]
1E2EBC:  CMP             R4, R0
1E2EBE:  BEQ             loc_1E2EC6
1E2EC0:  CBZ             R0, loc_1E2ED0
1E2EC2:  MOVS            R1, #5
1E2EC4:  B               loc_1E2EC8
1E2EC6:  MOVS            R1, #4
1E2EC8:  LDR             R2, [R0]
1E2ECA:  LDR.W           R1, [R2,R1,LSL#2]
1E2ECE:  BLX             R1
1E2ED0:  LDR             R0, [SP,#0x30+var_30]
1E2ED2:  LDR             R1, [SP,#0x30+var_C]
1E2ED4:  LDR             R2, =(__stack_chk_guard_ptr - 0x1E2EDA)
1E2ED6:  ADD             R2, PC; __stack_chk_guard_ptr
1E2ED8:  LDR             R2, [R2]; __stack_chk_guard
1E2EDA:  LDR             R2, [R2]
1E2EDC:  CMP             R2, R1
1E2EDE:  ITT EQ
1E2EE0:  ADDEQ           SP, SP, #0x28 ; '('
1E2EE2:  POPEQ           {R4,R6,R7,PC}
1E2EE4:  BLX             __stack_chk_fail
