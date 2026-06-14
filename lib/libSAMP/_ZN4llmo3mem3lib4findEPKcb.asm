; =========================================================
; Game Engine Function: _ZN4llmo3mem3lib4findEPKcb
; Address            : 0x1E2B80 - 0x1E2BE0
; =========================================================

1E2B80:  PUSH            {R4,R6,R7,LR}
1E2B82:  ADD             R7, SP, #8
1E2B84:  SUB             SP, SP, #0x28
1E2B86:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN4llmo3mem3lib4findEPKcbE3$_0NS_9allocatorIS7_EEFbRKN12posix_detail7memInfoEEEE - 0x1E2B90); `vtable for'std::__function::__func<llmo::mem::lib::find(char const*,bool)::$_0,std::allocator<llmo::mem::lib::find(char const*,bool)::$_0>,bool ()(posix_detail::memInfo const&)> ...
1E2B88:  ADD             R4, SP, #0x30+var_28
1E2B8A:  LDR             R3, =(__stack_chk_guard_ptr - 0x1E2B92)
1E2B8C:  ADD             R2, PC; `vtable for'std::__function::__func<llmo::mem::lib::find(char const*,bool)::$_0,std::allocator<llmo::mem::lib::find(char const*,bool)::$_0>,bool ()(posix_detail::memInfo const&)>
1E2B8E:  ADD             R3, PC; __stack_chk_guard_ptr
1E2B90:  LDR             R3, [R3]; __stack_chk_guard
1E2B92:  LDR             R3, [R3]
1E2B94:  STR             R3, [SP,#0x30+var_C]
1E2B96:  STR             R0, [SP,#0x30+var_2C]
1E2B98:  MOVS            R0, #0
1E2B9A:  STR             R0, [SP,#0x30+var_30]
1E2B9C:  MOV             R0, SP
1E2B9E:  STR             R0, [SP,#0x30+var_20]
1E2BA0:  ADD             R0, SP, #0x30+var_2C
1E2BA2:  STR             R0, [SP,#0x30+var_24]
1E2BA4:  ADD.W           R0, R2, #8
1E2BA8:  STR             R4, [SP,#0x30+var_18]
1E2BAA:  STR             R0, [SP,#0x30+var_28]
1E2BAC:  MOV             R0, R4
1E2BAE:  BLX             j__ZN12posix_detail10getMemInfoERKNSt6__ndk18functionIFbRKNS_7memInfoEEEEb; posix_detail::getMemInfo(std::function<bool ()(posix_detail::memInfo const&)> const&,bool)
1E2BB2:  LDR             R0, [SP,#0x30+var_18]
1E2BB4:  CMP             R4, R0
1E2BB6:  BEQ             loc_1E2BBE
1E2BB8:  CBZ             R0, loc_1E2BC8
1E2BBA:  MOVS            R1, #5
1E2BBC:  B               loc_1E2BC0
1E2BBE:  MOVS            R1, #4
1E2BC0:  LDR             R2, [R0]
1E2BC2:  LDR.W           R1, [R2,R1,LSL#2]
1E2BC6:  BLX             R1
1E2BC8:  LDR             R0, [SP,#0x30+var_30]
1E2BCA:  LDR             R1, [SP,#0x30+var_C]
1E2BCC:  LDR             R2, =(__stack_chk_guard_ptr - 0x1E2BD2)
1E2BCE:  ADD             R2, PC; __stack_chk_guard_ptr
1E2BD0:  LDR             R2, [R2]; __stack_chk_guard
1E2BD2:  LDR             R2, [R2]
1E2BD4:  CMP             R2, R1
1E2BD6:  ITT EQ
1E2BD8:  ADDEQ           SP, SP, #0x28 ; '('
1E2BDA:  POPEQ           {R4,R6,R7,PC}
1E2BDC:  BLX             __stack_chk_fail
