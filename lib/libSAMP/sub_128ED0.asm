; =========================================================
; Game Engine Function: sub_128ED0
; Address            : 0x128ED0 - 0x128EE4
; =========================================================

128ED0:  PUSH            {R7,LR}
128ED2:  MOV             R7, SP
128ED4:  MOVS            R0, #8; unsigned int
128ED6:  BLX             j__Znwj; operator new(uint)
128EDA:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15StreamingLimitsD1EvE3$_3NS_9allocatorIS3_EEFvvEEE - 0x128EE0); `vtable for'std::__function::__func<StreamingLimits::~StreamingLimits()::$_3,std::allocator<StreamingLimits::~StreamingLimits()::$_3>,void ()(void)> ...
128EDC:  ADD             R1, PC; `vtable for'std::__function::__func<StreamingLimits::~StreamingLimits()::$_3,std::allocator<StreamingLimits::~StreamingLimits()::$_3>,void ()(void)>
128EDE:  ADDS            R1, #8
128EE0:  STR             R1, [R0]
128EE2:  POP             {R7,PC}
