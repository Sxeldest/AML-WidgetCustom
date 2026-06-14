; =========================================================
; Game Engine Function: sub_F3990
; Address            : 0xF3990 - 0xF39A4
; =========================================================

F3990:  PUSH            {R7,LR}
F3992:  MOV             R7, SP
F3994:  MOVS            R0, #8; unsigned int
F3996:  BLX             j__Znwj; operator new(uint)
F399A:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN19CTouchInterfaceHookC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0xF39A0); `vtable for'std::__function::__func<CTouchInterfaceHook::CTouchInterfaceHook(void)::$_0,std::allocator<CTouchInterfaceHook::CTouchInterfaceHook(void)::$_0>,void ()(void)> ...
F399C:  ADD             R1, PC; `vtable for'std::__function::__func<CTouchInterfaceHook::CTouchInterfaceHook(void)::$_0,std::allocator<CTouchInterfaceHook::CTouchInterfaceHook(void)::$_0>,void ()(void)>
F399E:  ADDS            R1, #8
F39A0:  STR             R1, [R0]
F39A2:  POP             {R7,PC}
