; =========================================================
; Game Engine Function: sub_1E3360
; Address            : 0x1E3360 - 0x1E3372
; =========================================================

1E3360:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN4llmo3mem5getFDEPvbE3$_3NS_9allocatorIS5_EEFbRKN12posix_detail7memInfoEEEE - 0x1E3366); `vtable for'std::__function::__func<llmo::mem::getFD(void *,bool)::$_3,std::allocator<llmo::mem::getFD(void *,bool)::$_3>,bool ()(posix_detail::memInfo const&)> ...
1E3362:  ADD             R2, PC; `vtable for'std::__function::__func<llmo::mem::getFD(void *,bool)::$_3,std::allocator<llmo::mem::getFD(void *,bool)::$_3>,bool ()(posix_detail::memInfo const&)>
1E3364:  ADDS            R2, #8
1E3366:  STR             R2, [R1]
1E3368:  LDRD.W          R2, R0, [R0,#4]
1E336C:  STRD.W          R2, R0, [R1,#4]
1E3370:  BX              LR
