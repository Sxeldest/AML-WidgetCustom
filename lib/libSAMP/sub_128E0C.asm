; =========================================================
; Game Engine Function: sub_128E0C
; Address            : 0x128E0C - 0x128E20
; =========================================================

128E0C:  PUSH            {R7,LR}
128E0E:  MOV             R7, SP
128E10:  MOVS            R0, #8; unsigned int
128E12:  BLX             j__Znwj; operator new(uint)
128E16:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15StreamingLimitsD1EvE3$_2NS_9allocatorIS3_EEFvvEEE - 0x128E1C); `vtable for'std::__function::__func<StreamingLimits::~StreamingLimits()::$_2,std::allocator<StreamingLimits::~StreamingLimits()::$_2>,void ()(void)> ...
128E18:  ADD             R1, PC; `vtable for'std::__function::__func<StreamingLimits::~StreamingLimits()::$_2,std::allocator<StreamingLimits::~StreamingLimits()::$_2>,void ()(void)>
128E1A:  ADDS            R1, #8
128E1C:  STR             R1, [R0]
128E1E:  POP             {R7,PC}
