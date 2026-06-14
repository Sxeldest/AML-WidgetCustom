; =========================================================
; Game Engine Function: sub_128B7C
; Address            : 0x128B7C - 0x128B90
; =========================================================

128B7C:  PUSH            {R7,LR}
128B7E:  MOV             R7, SP
128B80:  MOVS            R0, #8; unsigned int
128B82:  BLX             j__Znwj; operator new(uint)
128B86:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15StreamingLimitsD1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x128B8C); `vtable for'std::__function::__func<StreamingLimits::~StreamingLimits()::$_0,std::allocator<StreamingLimits::~StreamingLimits()::$_0>,void ()(void)> ...
128B88:  ADD             R1, PC; `vtable for'std::__function::__func<StreamingLimits::~StreamingLimits()::$_0,std::allocator<StreamingLimits::~StreamingLimits()::$_0>,void ()(void)>
128B8A:  ADDS            R1, #8
128B8C:  STR             R1, [R0]
128B8E:  POP             {R7,PC}
