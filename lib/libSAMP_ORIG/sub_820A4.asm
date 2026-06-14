; =========================================================
; Game Engine Function: sub_820A4
; Address            : 0x820A4 - 0x820BE
; =========================================================

820A4:  PUSH            {R4,R6,R7,LR}
820A6:  ADD             R7, SP, #8
820A8:  MOV             R4, R0
820AA:  MOVS            R0, #8; unsigned int
820AC:  BLX             j__Znwj; operator new(uint)
820B0:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIPFvRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEtENS5_ISB_EESA_EE - 0x820B8); `vtable for'std::__function::__func<void (*)(std::string const&,ushort),std::allocator<void (*)(std::string const&,ushort)>,void ()(std::string const&,ushort)> ...
820B2:  LDR             R2, [R4,#4]
820B4:  ADD             R1, PC; `vtable for'std::__function::__func<void (*)(std::string const&,ushort),std::allocator<void (*)(std::string const&,ushort)>,void ()(std::string const&,ushort)>
820B6:  ADDS            R1, #8
820B8:  STRD.W          R1, R2, [R0]
820BC:  POP             {R4,R6,R7,PC}
