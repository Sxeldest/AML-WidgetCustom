; =========================================================
; Game Engine Function: sub_123CF4
; Address            : 0x123CF4 - 0x123D16
; =========================================================

123CF4:  PUSH            {R4,R6,R7,LR}
123CF6:  ADD             R7, SP, #8
123CF8:  MOV             R4, R0
123CFA:  MOVS            R0, #0x10; unsigned int
123CFC:  BLX             j__Znwj; operator new(uint)
123D00:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFiP13_VEHICLE_TYPEEEC1I15AutomobileZR350EEMT_FiS4_EPS9_EUlS4_E_NS_9allocatorISD_EES5_EE - 0x123D0A); `vtable for'std::__function::__func<function_helper<int ()(_VEHICLE_TYPE *)>::function_helper<AutomobileZR350>(int (AutomobileZR350::*)(_VEHICLE_TYPE *),AutomobileZR350*)::{lambda(_VEHICLE_TYPE *)#1},std::allocator<function_helper<int ()(_VEHICLE_TYPE *)>::function_helper<AutomobileZR350>(int (AutomobileZR350::*)(_VEHICLE_TYPE *),AutomobileZR350*)::{lambda(_VEHICLE_TYPE *)#1}>,int ()(_VEHICLE_TYPE *)> ...
123D02:  VLDR            D16, [R4,#4]
123D06:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<int ()(_VEHICLE_TYPE *)>::function_helper<AutomobileZR350>(int (AutomobileZR350::*)(_VEHICLE_TYPE *),AutomobileZR350*)::{lambda(_VEHICLE_TYPE *)#1},std::allocator<function_helper<int ()(_VEHICLE_TYPE *)>::function_helper<AutomobileZR350>(int (AutomobileZR350::*)(_VEHICLE_TYPE *),AutomobileZR350*)::{lambda(_VEHICLE_TYPE *)#1}>,int ()(_VEHICLE_TYPE *)>
123D08:  LDR             R2, [R4,#0xC]
123D0A:  ADDS            R1, #8
123D0C:  STR             R1, [R0]
123D0E:  STR             R2, [R0,#0xC]
123D10:  VSTR            D16, [R0,#4]
123D14:  POP             {R4,R6,R7,PC}
