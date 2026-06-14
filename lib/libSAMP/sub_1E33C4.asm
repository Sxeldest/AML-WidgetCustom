; =========================================================
; Game Engine Function: sub_1E33C4
; Address            : 0x1E33C4 - 0x1E33E0
; =========================================================

1E33C4:  PUSH            {R4,R6,R7,LR}
1E33C6:  ADD             R7, SP, #8
1E33C8:  MOV             R4, R0
1E33CA:  MOVS            R0, #0xC; unsigned int
1E33CC:  BLX             j__Znwj; operator new(uint)
1E33D0:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4llmo3mem7getSizeEPvbE3$_4NS_9allocatorIS5_EEFbRKN12posix_detail7memInfoEEEE - 0x1E33DA); `vtable for'std::__function::__func<llmo::mem::getSize(void *,bool)::$_4,std::allocator<llmo::mem::getSize(void *,bool)::$_4>,bool ()(posix_detail::memInfo const&)> ...
1E33D2:  LDRD.W          R2, R3, [R4,#4]
1E33D6:  ADD             R1, PC; `vtable for'std::__function::__func<llmo::mem::getSize(void *,bool)::$_4,std::allocator<llmo::mem::getSize(void *,bool)::$_4>,bool ()(posix_detail::memInfo const&)>
1E33D8:  ADDS            R1, #8
1E33DA:  STM.W           R0, {R1-R3}
1E33DE:  POP             {R4,R6,R7,PC}
