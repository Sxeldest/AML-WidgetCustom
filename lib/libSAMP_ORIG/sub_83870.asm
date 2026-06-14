; =========================================================
; Game Engine Function: sub_83870
; Address            : 0x83870 - 0x83884
; =========================================================

83870:  PUSH            {R7,LR}
83872:  MOV             R7, SP
83874:  MOVS            R0, #8; unsigned int
83876:  BLX             j__Znwj; operator new(uint)
8387A:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN6Record4InitEjE3$_3NS_9allocatorIS3_EEFvvEEE - 0x83880); `vtable for'std::__function::__func<Record::Init(uint)::$_3,std::allocator<Record::Init(uint)::$_3>,void ()(void)> ...
8387C:  ADD             R1, PC; `vtable for'std::__function::__func<Record::Init(uint)::$_3,std::allocator<Record::Init(uint)::$_3>,void ()(void)>
8387E:  ADDS            R1, #8
83880:  STR             R1, [R0]
83882:  POP             {R7,PC}
