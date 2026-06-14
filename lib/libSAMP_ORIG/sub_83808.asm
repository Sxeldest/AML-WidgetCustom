; =========================================================
; Game Engine Function: sub_83808
; Address            : 0x83808 - 0x8381C
; =========================================================

83808:  PUSH            {R7,LR}
8380A:  MOV             R7, SP
8380C:  MOVS            R0, #8; unsigned int
8380E:  BLX             j__Znwj; operator new(uint)
83812:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN6Record4InitEjE3$_2NS_9allocatorIS3_EEFvvEEE - 0x83818); `vtable for'std::__function::__func<Record::Init(uint)::$_2,std::allocator<Record::Init(uint)::$_2>,void ()(void)> ...
83814:  ADD             R1, PC; `vtable for'std::__function::__func<Record::Init(uint)::$_2,std::allocator<Record::Init(uint)::$_2>,void ()(void)>
83816:  ADDS            R1, #8
83818:  STR             R1, [R0]
8381A:  POP             {R7,PC}
