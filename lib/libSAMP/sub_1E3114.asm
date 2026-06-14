; =========================================================
; Game Engine Function: sub_1E3114
; Address            : 0x1E3114 - 0x1E3130
; =========================================================

1E3114:  PUSH            {R4,R6,R7,LR}
1E3116:  ADD             R7, SP, #8
1E3118:  MOV             R4, R0
1E311A:  MOVS            R0, #0xC; unsigned int
1E311C:  BLX             j__Znwj; operator new(uint)
1E3120:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4llmo3mem3lib4findEPKcbE3$_0NS_9allocatorIS7_EEFbRKN12posix_detail7memInfoEEEE - 0x1E312A); `vtable for'std::__function::__func<llmo::mem::lib::find(char const*,bool)::$_0,std::allocator<llmo::mem::lib::find(char const*,bool)::$_0>,bool ()(posix_detail::memInfo const&)> ...
1E3122:  LDRD.W          R2, R3, [R4,#4]
1E3126:  ADD             R1, PC; `vtable for'std::__function::__func<llmo::mem::lib::find(char const*,bool)::$_0,std::allocator<llmo::mem::lib::find(char const*,bool)::$_0>,bool ()(posix_detail::memInfo const&)>
1E3128:  ADDS            R1, #8
1E312A:  STM.W           R0, {R1-R3}
1E312E:  POP             {R4,R6,R7,PC}
