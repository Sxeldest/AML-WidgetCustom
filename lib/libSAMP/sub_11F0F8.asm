; =========================================================
; Game Engine Function: sub_11F0F8
; Address            : 0x11F0F8 - 0x11F11A
; =========================================================

11F0F8:  PUSH            {R4,R6,R7,LR}
11F0FA:  ADD             R7, SP, #8
11F0FC:  MOV             R4, R0
11F0FE:  MOVS            R0, #0x10; unsigned int
11F100:  BLX             j__Znwj; operator new(uint)
11F104:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvvEEC1I14FixMatrixStackEEMT_FvvEPS7_EUlvE_NS_9allocatorISB_EES3_EE - 0x11F10E); `vtable for'std::__function::__func<function_helper<void ()(void)>::function_helper<FixMatrixStack>(void (FixMatrixStack::*)(void),FixMatrixStack*)::{lambda(void)#1},std::allocator<function_helper<void ()(void)>::function_helper<FixMatrixStack>(void (FixMatrixStack::*)(void),FixMatrixStack*)::{lambda(void)#1}>,void ()(void)> ...
11F106:  VLDR            D16, [R4,#4]
11F10A:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<void ()(void)>::function_helper<FixMatrixStack>(void (FixMatrixStack::*)(void),FixMatrixStack*)::{lambda(void)#1},std::allocator<function_helper<void ()(void)>::function_helper<FixMatrixStack>(void (FixMatrixStack::*)(void),FixMatrixStack*)::{lambda(void)#1}>,void ()(void)>
11F10C:  LDR             R2, [R4,#0xC]
11F10E:  ADDS            R1, #8
11F110:  STR             R1, [R0]
11F112:  STR             R2, [R0,#0xC]
11F114:  VSTR            D16, [R0,#4]
11F118:  POP             {R4,R6,R7,PC}
