; =========================================================
; Game Engine Function: sub_10CDEC
; Address            : 0x10CDEC - 0x10CE06
; =========================================================

10CDEC:  PUSH            {R4,R6,R7,LR}
10CDEE:  ADD             R7, SP, #8
10CDF0:  MOV             R4, R0
10CDF2:  MOVS            R0, #8; unsigned int
10CDF4:  BLX             j__Znwj; operator new(uint)
10CDF8:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN18DisplayPerformanceC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x10CE00); `vtable for'std::__function::__func<DisplayPerformance::DisplayPerformance(void)::$_0,std::allocator<DisplayPerformance::DisplayPerformance(void)::$_0>,void ()(void)> ...
10CDFA:  LDR             R2, [R4,#4]
10CDFC:  ADD             R1, PC; `vtable for'std::__function::__func<DisplayPerformance::DisplayPerformance(void)::$_0,std::allocator<DisplayPerformance::DisplayPerformance(void)::$_0>,void ()(void)>
10CDFE:  ADDS            R1, #8
10CE00:  STRD.W          R1, R2, [R0]
10CE04:  POP             {R4,R6,R7,PC}
