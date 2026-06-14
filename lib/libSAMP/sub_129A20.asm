; =========================================================
; Game Engine Function: sub_129A20
; Address            : 0x129A20 - 0x129A64
; =========================================================

129A20:  PUSH            {R4,R5,R7,LR}
129A22:  ADD             R7, SP, #8
129A24:  SUB             SP, SP, #0x18
129A26:  MOV             R4, R0
129A28:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvvEEC1I13VehicleStructEEMT_FvvEPS7_EUlvE_NS_9allocatorISB_EES3_EE - 0x129A34); `vtable for'std::__function::__func<function_helper<void ()(void)>::function_helper<VehicleStruct>(void (VehicleStruct::*)(void),VehicleStruct*)::{lambda(void)#1},std::allocator<function_helper<void ()(void)>::function_helper<VehicleStruct>(void (VehicleStruct::*)(void),VehicleStruct*)::{lambda(void)#1}>,void ()(void)> ...
129A2A:  LDRD.W          R2, R3, [R1]
129A2E:  MOV             R5, SP
129A30:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<void ()(void)>::function_helper<VehicleStruct>(void (VehicleStruct::*)(void),VehicleStruct*)::{lambda(void)#1},std::allocator<function_helper<void ()(void)>::function_helper<VehicleStruct>(void (VehicleStruct::*)(void),VehicleStruct*)::{lambda(void)#1}>,void ()(void)>
129A32:  LDR             R1, [R1,#8]
129A34:  ADDS            R0, #8
129A36:  STRD.W          R1, R5, [SP,#0x20+var_14]
129A3A:  STR             R0, [SP,#0x20+var_20]
129A3C:  MOV             R0, R5
129A3E:  MOV             R1, R4
129A40:  STRD.W          R2, R3, [SP,#0x20+var_1C]
129A44:  BL              sub_112250
129A48:  LDR             R0, [SP,#0x20+var_10]
129A4A:  CMP             R5, R0
129A4C:  BEQ             loc_129A54
129A4E:  CBZ             R0, loc_129A5E
129A50:  MOVS            R1, #5
129A52:  B               loc_129A56
129A54:  MOVS            R1, #4
129A56:  LDR             R2, [R0]
129A58:  LDR.W           R1, [R2,R1,LSL#2]
129A5C:  BLX             R1
129A5E:  MOV             R0, R4
129A60:  ADD             SP, SP, #0x18
129A62:  POP             {R4,R5,R7,PC}
