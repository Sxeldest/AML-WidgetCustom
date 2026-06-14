; =========================================================
; Game Engine Function: _ZNSt13runtime_errorC2ERKS_
; Address            : 0xF83F4 - 0xF841C
; =========================================================

F83F4:  LDR             R1, [R1,#4]; Alternative name is 'std::runtime_error::runtime_error(std::runtime_error const&)'
F83F6:  LDR             R2, =(_ZTVSt13runtime_error_ptr - 0xF83FC)
F83F8:  ADD             R2, PC; _ZTVSt13runtime_error_ptr
F83FA:  LDR             R2, [R2]; `vtable for'std::runtime_error ...
F83FC:  ADDS            R2, #8
F83FE:  STRD.W          R2, R1, [R0]
F8402:  SUBS            R1, #4
F8404:  DMB.W           ISH
F8408:  LDREX.W         R2, [R1]
F840C:  ADDS            R2, #1
F840E:  STREX.W         R3, R2, [R1]
F8412:  CMP             R3, #0
F8414:  BNE             loc_F8408
F8416:  DMB.W           ISH
F841A:  BX              LR
