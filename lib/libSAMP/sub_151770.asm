; =========================================================
; Game Engine Function: sub_151770
; Address            : 0x151770 - 0x151786
; =========================================================

151770:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN14AudioChannel3D13Set3DPositionERK7_VECTORS5_S5_E3$_2NS_9allocatorIS6_EEFvP11AudioStreamEEE - 0x151776); `vtable for'std::__function::__func<AudioChannel3D::Set3DPosition(_VECTOR const&,_VECTOR const&,_VECTOR const&)::$_2,std::allocator<AudioChannel3D::Set3DPosition(_VECTOR const&,_VECTOR const&,_VECTOR const&)::$_2>,void ()(AudioStream *)> ...
151772:  ADD             R2, PC; `vtable for'std::__function::__func<AudioChannel3D::Set3DPosition(_VECTOR const&,_VECTOR const&,_VECTOR const&)::$_2,std::allocator<AudioChannel3D::Set3DPosition(_VECTOR const&,_VECTOR const&,_VECTOR const&)::$_2>,void ()(AudioStream *)>
151774:  ADDS            R2, #8
151776:  STR             R2, [R1]
151778:  VLDR            D16, [R0,#4]
15177C:  LDR             R0, [R0,#0xC]
15177E:  STR             R0, [R1,#0xC]
151780:  VSTR            D16, [R1,#4]
151784:  BX              LR
