; =========================================================
; Game Engine Function: sub_F5264
; Address            : 0xF5264 - 0xF527A
; =========================================================

F5264:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFivEEC1I13CustomMapIconEEMT_FivEPS7_EUlvE_NS_9allocatorISB_EES3_EE - 0xF526A); `vtable for'std::__function::__func<function_helper<int ()(void)>::function_helper<CustomMapIcon>(int (CustomMapIcon::*)(void),CustomMapIcon*)::{lambda(void)#1},std::allocator<function_helper<int ()(void)>::function_helper<CustomMapIcon>(int (CustomMapIcon::*)(void),CustomMapIcon*)::{lambda(void)#1}>,int ()(void)> ...
F5266:  ADD             R2, PC; `vtable for'std::__function::__func<function_helper<int ()(void)>::function_helper<CustomMapIcon>(int (CustomMapIcon::*)(void),CustomMapIcon*)::{lambda(void)#1},std::allocator<function_helper<int ()(void)>::function_helper<CustomMapIcon>(int (CustomMapIcon::*)(void),CustomMapIcon*)::{lambda(void)#1}>,int ()(void)>
F5268:  ADDS            R2, #8
F526A:  STR             R2, [R1]
F526C:  VLDR            D16, [R0,#4]
F5270:  LDR             R0, [R0,#0xC]
F5272:  STR             R0, [R1,#0xC]
F5274:  VSTR            D16, [R1,#4]
F5278:  BX              LR
