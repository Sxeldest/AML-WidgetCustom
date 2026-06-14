; =========================================================
; Game Engine Function: sub_1E3230
; Address            : 0x1E3230 - 0x1E3242
; =========================================================

1E3230:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN4llmo3mem3lib4nameEjE3$_1NS_9allocatorIS5_EEFbRKN12posix_detail7memInfoEEEE - 0x1E3236); `vtable for'std::__function::__func<llmo::mem::lib::name(uint)::$_1,std::allocator<llmo::mem::lib::name(uint)::$_1>,bool ()(posix_detail::memInfo const&)> ...
1E3232:  ADD             R2, PC; `vtable for'std::__function::__func<llmo::mem::lib::name(uint)::$_1,std::allocator<llmo::mem::lib::name(uint)::$_1>,bool ()(posix_detail::memInfo const&)>
1E3234:  ADDS            R2, #8
1E3236:  STR             R2, [R1]
1E3238:  LDRD.W          R2, R0, [R0,#4]
1E323C:  STRD.W          R2, R0, [R1,#4]
1E3240:  BX              LR
