; =========================================================
; Game Engine Function: sub_836F4
; Address            : 0x836F4 - 0x83708
; =========================================================

836F4:  PUSH            {R7,LR}
836F6:  MOV             R7, SP
836F8:  MOVS            R0, #8; unsigned int
836FA:  BLX             j__Znwj; operator new(uint)
836FE:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN6Record4InitEjE3$_0NS_9allocatorIS3_EEFvvEEE - 0x83704); `vtable for'std::__function::__func<Record::Init(uint)::$_0,std::allocator<Record::Init(uint)::$_0>,void ()(void)> ...
83700:  ADD             R1, PC; `vtable for'std::__function::__func<Record::Init(uint)::$_0,std::allocator<Record::Init(uint)::$_0>,void ()(void)>
83702:  ADDS            R1, #8
83704:  STR             R1, [R0]
83706:  POP             {R7,PC}
