; =========================================================
; Game Engine Function: sub_837A0
; Address            : 0x837A0 - 0x837B4
; =========================================================

837A0:  PUSH            {R7,LR}
837A2:  MOV             R7, SP
837A4:  MOVS            R0, #8; unsigned int
837A6:  BLX             j__Znwj; operator new(uint)
837AA:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN6Record4InitEjE3$_1NS_9allocatorIS3_EEFvvEEE - 0x837B0); `vtable for'std::__function::__func<Record::Init(uint)::$_1,std::allocator<Record::Init(uint)::$_1>,void ()(void)> ...
837AC:  ADD             R1, PC; `vtable for'std::__function::__func<Record::Init(uint)::$_1,std::allocator<Record::Init(uint)::$_1>,void ()(void)>
837AE:  ADDS            R1, #8
837B0:  STR             R1, [R0]
837B2:  POP             {R7,PC}
