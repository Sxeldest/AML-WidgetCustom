; =========================================================
; Game Engine Function: _ZNSt11logic_errorC2ERKS_
; Address            : 0xF8304 - 0xF832C
; =========================================================

F8304:  LDR             R1, [R1,#4]; Alternative name is 'std::logic_error::logic_error(std::logic_error const&)'
F8306:  LDR             R2, =(_ZTVSt11logic_error_ptr - 0xF830C)
F8308:  ADD             R2, PC; _ZTVSt11logic_error_ptr
F830A:  LDR             R2, [R2]; `vtable for'std::logic_error ...
F830C:  ADDS            R2, #8
F830E:  STRD.W          R2, R1, [R0]
F8312:  SUBS            R1, #4
F8314:  DMB.W           ISH
F8318:  LDREX.W         R2, [R1]
F831C:  ADDS            R2, #1
F831E:  STREX.W         R3, R2, [R1]
F8322:  CMP             R3, #0
F8324:  BNE             loc_F8318
F8326:  DMB.W           ISH
F832A:  BX              LR
