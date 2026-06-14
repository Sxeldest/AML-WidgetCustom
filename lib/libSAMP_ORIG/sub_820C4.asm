; =========================================================
; Game Engine Function: sub_820C4
; Address            : 0x820C4 - 0x820D2
; =========================================================

820C4:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIPFvRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEtENS5_ISB_EESA_EE - 0x820CC); `vtable for'std::__function::__func<void (*)(std::string const&,ushort),std::allocator<void (*)(std::string const&,ushort)>,void ()(std::string const&,ushort)> ...
820C6:  LDR             R0, [R0,#4]
820C8:  ADD             R2, PC; `vtable for'std::__function::__func<void (*)(std::string const&,ushort),std::allocator<void (*)(std::string const&,ushort)>,void ()(std::string const&,ushort)>
820CA:  ADDS            R2, #8
820CC:  STRD.W          R2, R0, [R1]
820D0:  BX              LR
