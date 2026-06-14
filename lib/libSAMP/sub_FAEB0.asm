; =========================================================
; Game Engine Function: sub_FAEB0
; Address            : 0xFAEB0 - 0xFAECA
; =========================================================

FAEB0:  PUSH            {R4,R6,R7,LR}
FAEB2:  ADD             R7, SP, #8
FAEB4:  MOV             R4, R0
FAEB6:  MOVS            R0, #8; unsigned int
FAEB8:  BLX             j__Znwj; operator new(uint)
FAEBC:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN8HeadmoveC1EvE3$_0NS_9allocatorIS3_EEFvNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEE - 0xFAEC4); `vtable for'std::__function::__func<Headmove::Headmove(void)::$_0,std::allocator<Headmove::Headmove(void)::$_0>,void ()(std::string_view)> ...
FAEBE:  LDR             R2, [R4,#4]
FAEC0:  ADD             R1, PC; `vtable for'std::__function::__func<Headmove::Headmove(void)::$_0,std::allocator<Headmove::Headmove(void)::$_0>,void ()(std::string_view)>
FAEC2:  ADDS            R1, #8
FAEC4:  STRD.W          R1, R2, [R0]
FAEC8:  POP             {R4,R6,R7,PC}
