; =========================================================
; Game Engine Function: sub_11F0AC
; Address            : 0x11F0AC - 0x11F0F0
; =========================================================

11F0AC:  PUSH            {R4,R5,R7,LR}
11F0AE:  ADD             R7, SP, #8
11F0B0:  SUB             SP, SP, #0x18
11F0B2:  MOV             R4, R0
11F0B4:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvvEEC1I14FixMatrixStackEEMT_FvvEPS7_EUlvE_NS_9allocatorISB_EES3_EE - 0x11F0C0); `vtable for'std::__function::__func<function_helper<void ()(void)>::function_helper<FixMatrixStack>(void (FixMatrixStack::*)(void),FixMatrixStack*)::{lambda(void)#1},std::allocator<function_helper<void ()(void)>::function_helper<FixMatrixStack>(void (FixMatrixStack::*)(void),FixMatrixStack*)::{lambda(void)#1}>,void ()(void)> ...
11F0B6:  LDRD.W          R2, R3, [R1]
11F0BA:  MOV             R5, SP
11F0BC:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<void ()(void)>::function_helper<FixMatrixStack>(void (FixMatrixStack::*)(void),FixMatrixStack*)::{lambda(void)#1},std::allocator<function_helper<void ()(void)>::function_helper<FixMatrixStack>(void (FixMatrixStack::*)(void),FixMatrixStack*)::{lambda(void)#1}>,void ()(void)>
11F0BE:  LDR             R1, [R1,#8]
11F0C0:  ADDS            R0, #8
11F0C2:  STRD.W          R1, R5, [SP,#0x20+var_14]
11F0C6:  STR             R0, [SP,#0x20+var_20]
11F0C8:  MOV             R0, R5
11F0CA:  MOV             R1, R4
11F0CC:  STRD.W          R2, R3, [SP,#0x20+var_1C]
11F0D0:  BL              sub_112250
11F0D4:  LDR             R0, [SP,#0x20+var_10]
11F0D6:  CMP             R5, R0
11F0D8:  BEQ             loc_11F0E0
11F0DA:  CBZ             R0, loc_11F0EA
11F0DC:  MOVS            R1, #5
11F0DE:  B               loc_11F0E2
11F0E0:  MOVS            R1, #4
11F0E2:  LDR             R2, [R0]
11F0E4:  LDR.W           R1, [R2,R1,LSL#2]
11F0E8:  BLX             R1
11F0EA:  MOV             R0, R4
11F0EC:  ADD             SP, SP, #0x18
11F0EE:  POP             {R4,R5,R7,PC}
