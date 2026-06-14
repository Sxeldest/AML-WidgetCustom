; =========================================================
; Game Engine Function: sub_82100
; Address            : 0x82100 - 0x82108
; =========================================================

82100:  LDR             R0, =(_ZTIPFvRKNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEtE_ptr - 0x82106)
82102:  ADD             R0, PC; _ZTIPFvRKNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEtE_ptr
82104:  LDR             R0, [R0]; `typeinfo for'void (*)(std::string const&,ushort) ...
82106:  BX              LR
