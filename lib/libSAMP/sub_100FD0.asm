; =========================================================
; Game Engine Function: sub_100FD0
; Address            : 0x100FD0 - 0x100FE2
; =========================================================

100FD0:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZ25CPed__ProcessControl_hookP9_PED_TYPEE3$_3NS_9allocatorIS4_EEFvvEEE - 0x100FD6); `vtable for'std::__function::__func<CPed__ProcessControl_hook(_PED_TYPE *)::$_3,std::allocator<CPed__ProcessControl_hook(_PED_TYPE *)::$_3>,void ()(void)> ...
100FD2:  ADD             R2, PC; `vtable for'std::__function::__func<CPed__ProcessControl_hook(_PED_TYPE *)::$_3,std::allocator<CPed__ProcessControl_hook(_PED_TYPE *)::$_3>,void ()(void)>
100FD4:  ADDS            R2, #8
100FD6:  STR             R2, [R1]
100FD8:  LDRD.W          R2, R0, [R0,#4]
100FDC:  STRD.W          R2, R0, [R1,#4]
100FE0:  BX              LR
