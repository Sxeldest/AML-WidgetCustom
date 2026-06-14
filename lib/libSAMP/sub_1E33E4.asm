; =========================================================
; Game Engine Function: sub_1E33E4
; Address            : 0x1E33E4 - 0x1E33F6
; =========================================================

1E33E4:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN4llmo3mem7getSizeEPvbE3$_4NS_9allocatorIS5_EEFbRKN12posix_detail7memInfoEEEE - 0x1E33EA); `vtable for'std::__function::__func<llmo::mem::getSize(void *,bool)::$_4,std::allocator<llmo::mem::getSize(void *,bool)::$_4>,bool ()(posix_detail::memInfo const&)> ...
1E33E6:  ADD             R2, PC; `vtable for'std::__function::__func<llmo::mem::getSize(void *,bool)::$_4,std::allocator<llmo::mem::getSize(void *,bool)::$_4>,bool ()(posix_detail::memInfo const&)>
1E33E8:  ADDS            R2, #8
1E33EA:  STR             R2, [R1]
1E33EC:  LDRD.W          R2, R0, [R0,#4]
1E33F0:  STRD.W          R2, R0, [R1,#4]
1E33F4:  BX              LR
