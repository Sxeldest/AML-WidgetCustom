; =========================================================
; Game Engine Function: sub_F4FC8
; Address            : 0xF4FC8 - 0xF4FEA
; =========================================================

F4FC8:  PUSH            {R4,R6,R7,LR}
F4FCA:  ADD             R7, SP, #8
F4FCC:  MOV             R4, R0
F4FCE:  MOVS            R0, #0x10; unsigned int
F4FD0:  BLX             j__Znwj; operator new(uint)
F4FD4:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFiPKcEEC1I13CustomMapIconEEMT_FiS4_EPS9_EUlS4_E_NS_9allocatorISD_EES5_EE - 0xF4FDE); `vtable for'std::__function::__func<function_helper<int ()(char const*)>::function_helper<CustomMapIcon>(int (CustomMapIcon::*)(char const*),CustomMapIcon*)::{lambda(char const*)#1},std::allocator<function_helper<int ()(char const*)>::function_helper<CustomMapIcon>(int (CustomMapIcon::*)(char const*),CustomMapIcon*)::{lambda(char const*)#1}>,int ()(char const*)> ...
F4FD6:  VLDR            D16, [R4,#4]
F4FDA:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<int ()(char const*)>::function_helper<CustomMapIcon>(int (CustomMapIcon::*)(char const*),CustomMapIcon*)::{lambda(char const*)#1},std::allocator<function_helper<int ()(char const*)>::function_helper<CustomMapIcon>(int (CustomMapIcon::*)(char const*),CustomMapIcon*)::{lambda(char const*)#1}>,int ()(char const*)>
F4FDC:  LDR             R2, [R4,#0xC]
F4FDE:  ADDS            R1, #8
F4FE0:  STR             R1, [R0]
F4FE2:  STR             R2, [R0,#0xC]
F4FE4:  VSTR            D16, [R0,#4]
F4FE8:  POP             {R4,R6,R7,PC}
