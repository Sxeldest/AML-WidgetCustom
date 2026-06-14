; =========================================================
; Game Engine Function: sub_1E3210
; Address            : 0x1E3210 - 0x1E322C
; =========================================================

1E3210:  PUSH            {R4,R6,R7,LR}
1E3212:  ADD             R7, SP, #8
1E3214:  MOV             R4, R0
1E3216:  MOVS            R0, #0xC; unsigned int
1E3218:  BLX             j__Znwj; operator new(uint)
1E321C:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4llmo3mem3lib4nameEjE3$_1NS_9allocatorIS5_EEFbRKN12posix_detail7memInfoEEEE - 0x1E3226); `vtable for'std::__function::__func<llmo::mem::lib::name(uint)::$_1,std::allocator<llmo::mem::lib::name(uint)::$_1>,bool ()(posix_detail::memInfo const&)> ...
1E321E:  LDRD.W          R2, R3, [R4,#4]
1E3222:  ADD             R1, PC; `vtable for'std::__function::__func<llmo::mem::lib::name(uint)::$_1,std::allocator<llmo::mem::lib::name(uint)::$_1>,bool ()(posix_detail::memInfo const&)>
1E3224:  ADDS            R1, #8
1E3226:  STM.W           R0, {R1-R3}
1E322A:  POP             {R4,R6,R7,PC}
