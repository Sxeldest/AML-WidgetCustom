; =========================================================
; Game Engine Function: sub_1E3298
; Address            : 0x1E3298 - 0x1E32BA
; =========================================================

1E3298:  PUSH            {R4,R6,R7,LR}
1E329A:  ADD             R7, SP, #8
1E329C:  MOV             R4, R0
1E329E:  MOVS            R0, #0x10; unsigned int
1E32A0:  BLX             j__Znwj; operator new(uint)
1E32A4:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4llmo3mem4prot3getEPvjbE3$_2NS_9allocatorIS6_EEFbRKN12posix_detail7memInfoEEEE - 0x1E32AE); `vtable for'std::__function::__func<llmo::mem::prot::get(void *,uint,bool)::$_2,std::allocator<llmo::mem::prot::get(void *,uint,bool)::$_2>,bool ()(posix_detail::memInfo const&)> ...
1E32A6:  VLDR            D16, [R4,#4]
1E32AA:  ADD             R1, PC; `vtable for'std::__function::__func<llmo::mem::prot::get(void *,uint,bool)::$_2,std::allocator<llmo::mem::prot::get(void *,uint,bool)::$_2>,bool ()(posix_detail::memInfo const&)>
1E32AC:  LDR             R2, [R4,#0xC]
1E32AE:  ADDS            R1, #8
1E32B0:  STR             R1, [R0]
1E32B2:  STR             R2, [R0,#0xC]
1E32B4:  VSTR            D16, [R0,#4]
1E32B8:  POP             {R4,R6,R7,PC}
