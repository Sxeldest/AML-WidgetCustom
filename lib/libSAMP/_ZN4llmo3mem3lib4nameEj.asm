; =========================================================
; Game Engine Function: _ZN4llmo3mem3lib4nameEj
; Address            : 0x1E2C2C - 0x1E2C8E
; =========================================================

1E2C2C:  PUSH            {R4,R5,R7,LR}
1E2C2E:  ADD             R7, SP, #8
1E2C30:  SUB             SP, SP, #0x28
1E2C32:  MOV             R4, R0
1E2C34:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN4llmo3mem3lib4nameEjE3$_1NS_9allocatorIS5_EEFbRKN12posix_detail7memInfoEEEE - 0x1E2C3E); `vtable for'std::__function::__func<llmo::mem::lib::name(uint)::$_1,std::allocator<llmo::mem::lib::name(uint)::$_1>,bool ()(posix_detail::memInfo const&)> ...
1E2C36:  LDR             R2, =(__stack_chk_guard_ptr - 0x1E2C40)
1E2C38:  ADD             R5, SP, #0x30+var_28
1E2C3A:  ADD             R0, PC; `vtable for'std::__function::__func<llmo::mem::lib::name(uint)::$_1,std::allocator<llmo::mem::lib::name(uint)::$_1>,bool ()(posix_detail::memInfo const&)>
1E2C3C:  ADD             R2, PC; __stack_chk_guard_ptr
1E2C3E:  ADDS            R0, #8
1E2C40:  LDR             R2, [R2]; __stack_chk_guard
1E2C42:  LDR             R2, [R2]
1E2C44:  STR             R2, [SP,#0x30+var_C]
1E2C46:  MOVS            R2, #0
1E2C48:  STR             R1, [SP,#0x30+var_2C]
1E2C4A:  ADD             R1, SP, #0x30+var_2C
1E2C4C:  STRD.W          R2, R2, [R4]
1E2C50:  STR             R2, [R4,#8]
1E2C52:  STR             R4, [SP,#0x30+var_20]
1E2C54:  STR             R1, [SP,#0x30+var_24]
1E2C56:  STR             R5, [SP,#0x30+var_18]
1E2C58:  STR             R0, [SP,#0x30+var_28]
1E2C5A:  MOV             R0, R5
1E2C5C:  MOVS            R1, #1
1E2C5E:  BLX             j__ZN12posix_detail10getMemInfoERKNSt6__ndk18functionIFbRKNS_7memInfoEEEEb; posix_detail::getMemInfo(std::function<bool ()(posix_detail::memInfo const&)> const&,bool)
1E2C62:  LDR             R0, [SP,#0x30+var_18]
1E2C64:  CMP             R5, R0
1E2C66:  BEQ             loc_1E2C6E
1E2C68:  CBZ             R0, loc_1E2C78
1E2C6A:  MOVS            R1, #5
1E2C6C:  B               loc_1E2C70
1E2C6E:  MOVS            R1, #4
1E2C70:  LDR             R2, [R0]
1E2C72:  LDR.W           R1, [R2,R1,LSL#2]
1E2C76:  BLX             R1
1E2C78:  LDR             R0, [SP,#0x30+var_C]
1E2C7A:  LDR             R1, =(__stack_chk_guard_ptr - 0x1E2C80)
1E2C7C:  ADD             R1, PC; __stack_chk_guard_ptr
1E2C7E:  LDR             R1, [R1]; __stack_chk_guard
1E2C80:  LDR             R1, [R1]
1E2C82:  CMP             R1, R0
1E2C84:  ITT EQ
1E2C86:  ADDEQ           SP, SP, #0x28 ; '('
1E2C88:  POPEQ           {R4,R5,R7,PC}
1E2C8A:  BLX             __stack_chk_fail
