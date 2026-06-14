; =========================================================
; Game Engine Function: sub_1E3134
; Address            : 0x1E3134 - 0x1E3146
; =========================================================

1E3134:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN4llmo3mem3lib4findEPKcbE3$_0NS_9allocatorIS7_EEFbRKN12posix_detail7memInfoEEEE - 0x1E313A); `vtable for'std::__function::__func<llmo::mem::lib::find(char const*,bool)::$_0,std::allocator<llmo::mem::lib::find(char const*,bool)::$_0>,bool ()(posix_detail::memInfo const&)> ...
1E3136:  ADD             R2, PC; `vtable for'std::__function::__func<llmo::mem::lib::find(char const*,bool)::$_0,std::allocator<llmo::mem::lib::find(char const*,bool)::$_0>,bool ()(posix_detail::memInfo const&)>
1E3138:  ADDS            R2, #8
1E313A:  STR             R2, [R1]
1E313C:  LDRD.W          R2, R0, [R0,#4]
1E3140:  STRD.W          R2, R0, [R1,#4]
1E3144:  BX              LR
