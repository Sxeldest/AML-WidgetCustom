; =========================================================
; Game Engine Function: _ZNSt13runtime_errorC2ERKS_
; Address            : 0x2101DC - 0x210204
; =========================================================

2101DC:  LDR             R1, [R1,#4]; Alternative name is 'std::runtime_error::runtime_error(std::runtime_error const&)'
2101DE:  LDR             R2, =(_ZTVSt13runtime_error_ptr - 0x2101E4)
2101E0:  ADD             R2, PC; _ZTVSt13runtime_error_ptr
2101E2:  LDR             R2, [R2]; `vtable for'std::runtime_error ...
2101E4:  ADDS            R2, #8
2101E6:  STRD.W          R2, R1, [R0]
2101EA:  SUBS            R1, #4
2101EC:  DMB.W           ISH
2101F0:  LDREX.W         R2, [R1]
2101F4:  ADDS            R2, #1
2101F6:  STREX.W         R3, R2, [R1]
2101FA:  CMP             R3, #0
2101FC:  BNE             loc_2101F0
2101FE:  DMB.W           ISH
210202:  BX              LR
