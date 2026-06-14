; =========================================================
; Game Engine Function: _ZNSt9bad_allocC2Ev
; Address            : 0x21FAE0 - 0x21FAEC
; =========================================================

21FAE0:  LDR             R1, =(_ZTVSt9bad_alloc_ptr - 0x21FAE6); Alternative name is 'std::bad_alloc::bad_alloc(void)'
21FAE2:  ADD             R1, PC; _ZTVSt9bad_alloc_ptr
21FAE4:  LDR             R1, [R1]; `vtable for'std::bad_alloc ...
21FAE6:  ADDS            R1, #8
21FAE8:  STR             R1, [R0]
21FAEA:  BX              LR
