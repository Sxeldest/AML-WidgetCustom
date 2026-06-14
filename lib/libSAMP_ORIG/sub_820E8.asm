; =========================================================
; Game Engine Function: sub_820E8
; Address            : 0x820E8 - 0x820FC
; =========================================================

820E8:  LDR             R2, =(_ZTSPFvRKNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEtE_ptr - 0x820F2)
820EA:  LDR             R3, [R1,#4]
820EC:  MOVS            R1, #0
820EE:  ADD             R2, PC; _ZTSPFvRKNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEtE_ptr
820F0:  LDR             R2, [R2]; "PFvRKNSt6__ndk112basic_stringIcNS_11cha"... ...
820F2:  CMP             R3, R2
820F4:  IT EQ
820F6:  ADDEQ           R1, R0, #4
820F8:  MOV             R0, R1
820FA:  BX              LR
