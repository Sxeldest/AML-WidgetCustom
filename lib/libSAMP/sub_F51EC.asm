; =========================================================
; Game Engine Function: sub_F51EC
; Address            : 0xF51EC - 0xF5230
; =========================================================

F51EC:  PUSH            {R4,R5,R7,LR}
F51EE:  ADD             R7, SP, #8
F51F0:  SUB             SP, SP, #0x18
F51F2:  MOV             R4, R0
F51F4:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFivEEC1I13CustomMapIconEEMT_FivEPS7_EUlvE_NS_9allocatorISB_EES3_EE - 0xF5200); `vtable for'std::__function::__func<function_helper<int ()(void)>::function_helper<CustomMapIcon>(int (CustomMapIcon::*)(void),CustomMapIcon*)::{lambda(void)#1},std::allocator<function_helper<int ()(void)>::function_helper<CustomMapIcon>(int (CustomMapIcon::*)(void),CustomMapIcon*)::{lambda(void)#1}>,int ()(void)> ...
F51F6:  LDRD.W          R2, R3, [R1]
F51FA:  MOV             R5, SP
F51FC:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<int ()(void)>::function_helper<CustomMapIcon>(int (CustomMapIcon::*)(void),CustomMapIcon*)::{lambda(void)#1},std::allocator<function_helper<int ()(void)>::function_helper<CustomMapIcon>(int (CustomMapIcon::*)(void),CustomMapIcon*)::{lambda(void)#1}>,int ()(void)>
F51FE:  LDR             R1, [R1,#8]
F5200:  ADDS            R0, #8
F5202:  STRD.W          R1, R5, [SP,#0x20+var_14]
F5206:  STR             R0, [SP,#0x20+var_20]
F5208:  MOV             R0, R5
F520A:  MOV             R1, R4
F520C:  STRD.W          R2, R3, [SP,#0x20+var_1C]
F5210:  BL              sub_F52C0
F5214:  LDR             R0, [SP,#0x20+var_10]
F5216:  CMP             R5, R0
F5218:  BEQ             loc_F5220
F521A:  CBZ             R0, loc_F522A
F521C:  MOVS            R1, #5
F521E:  B               loc_F5222
F5220:  MOVS            R1, #4
F5222:  LDR             R2, [R0]
F5224:  LDR.W           R1, [R2,R1,LSL#2]
F5228:  BLX             R1
F522A:  MOV             R0, R4
F522C:  ADD             SP, SP, #0x18
F522E:  POP             {R4,R5,R7,PC}
