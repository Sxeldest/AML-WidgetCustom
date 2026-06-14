; =========================================================
; Game Engine Function: sub_F4FF0
; Address            : 0xF4FF0 - 0xF5006
; =========================================================

F4FF0:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFiPKcEEC1I13CustomMapIconEEMT_FiS4_EPS9_EUlS4_E_NS_9allocatorISD_EES5_EE - 0xF4FF6); `vtable for'std::__function::__func<function_helper<int ()(char const*)>::function_helper<CustomMapIcon>(int (CustomMapIcon::*)(char const*),CustomMapIcon*)::{lambda(char const*)#1},std::allocator<function_helper<int ()(char const*)>::function_helper<CustomMapIcon>(int (CustomMapIcon::*)(char const*),CustomMapIcon*)::{lambda(char const*)#1}>,int ()(char const*)> ...
F4FF2:  ADD             R2, PC; `vtable for'std::__function::__func<function_helper<int ()(char const*)>::function_helper<CustomMapIcon>(int (CustomMapIcon::*)(char const*),CustomMapIcon*)::{lambda(char const*)#1},std::allocator<function_helper<int ()(char const*)>::function_helper<CustomMapIcon>(int (CustomMapIcon::*)(char const*),CustomMapIcon*)::{lambda(char const*)#1}>,int ()(char const*)>
F4FF4:  ADDS            R2, #8
F4FF6:  STR             R2, [R1]
F4FF8:  VLDR            D16, [R0,#4]
F4FFC:  LDR             R0, [R0,#0xC]
F4FFE:  STR             R0, [R1,#0xC]
F5000:  VSTR            D16, [R1,#4]
F5004:  BX              LR
