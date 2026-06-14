; =========================================================
; Game Engine Function: sub_123D1C
; Address            : 0x123D1C - 0x123D32
; =========================================================

123D1C:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFiP13_VEHICLE_TYPEEEC1I15AutomobileZR350EEMT_FiS4_EPS9_EUlS4_E_NS_9allocatorISD_EES5_EE - 0x123D22); `vtable for'std::__function::__func<function_helper<int ()(_VEHICLE_TYPE *)>::function_helper<AutomobileZR350>(int (AutomobileZR350::*)(_VEHICLE_TYPE *),AutomobileZR350*)::{lambda(_VEHICLE_TYPE *)#1},std::allocator<function_helper<int ()(_VEHICLE_TYPE *)>::function_helper<AutomobileZR350>(int (AutomobileZR350::*)(_VEHICLE_TYPE *),AutomobileZR350*)::{lambda(_VEHICLE_TYPE *)#1}>,int ()(_VEHICLE_TYPE *)> ...
123D1E:  ADD             R2, PC; `vtable for'std::__function::__func<function_helper<int ()(_VEHICLE_TYPE *)>::function_helper<AutomobileZR350>(int (AutomobileZR350::*)(_VEHICLE_TYPE *),AutomobileZR350*)::{lambda(_VEHICLE_TYPE *)#1},std::allocator<function_helper<int ()(_VEHICLE_TYPE *)>::function_helper<AutomobileZR350>(int (AutomobileZR350::*)(_VEHICLE_TYPE *),AutomobileZR350*)::{lambda(_VEHICLE_TYPE *)#1}>,int ()(_VEHICLE_TYPE *)>
123D20:  ADDS            R2, #8
123D22:  STR             R2, [R1]
123D24:  VLDR            D16, [R0,#4]
123D28:  LDR             R0, [R0,#0xC]
123D2A:  STR             R0, [R1,#0xC]
123D2C:  VSTR            D16, [R1,#4]
123D30:  BX              LR
