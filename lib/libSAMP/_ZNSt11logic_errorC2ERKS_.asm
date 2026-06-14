; =========================================================
; Game Engine Function: _ZNSt11logic_errorC2ERKS_
; Address            : 0x2100EC - 0x210114
; =========================================================

2100EC:  LDR             R1, [R1,#4]; Alternative name is 'std::logic_error::logic_error(std::logic_error const&)'
2100EE:  LDR             R2, =(_ZTVSt11logic_error_ptr - 0x2100F4)
2100F0:  ADD             R2, PC; _ZTVSt11logic_error_ptr
2100F2:  LDR             R2, [R2]; `vtable for'std::logic_error ...
2100F4:  ADDS            R2, #8
2100F6:  STRD.W          R2, R1, [R0]
2100FA:  SUBS            R1, #4
2100FC:  DMB.W           ISH
210100:  LDREX.W         R2, [R1]
210104:  ADDS            R2, #1
210106:  STREX.W         R3, R2, [R1]
21010A:  CMP             R3, #0
21010C:  BNE             loc_210100
21010E:  DMB.W           ISH
210112:  BX              LR
