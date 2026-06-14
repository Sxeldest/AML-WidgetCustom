; =========================================================
; Game Engine Function: _ZNSt9bad_allocC2Ev
; Address            : 0x108688 - 0x108694
; =========================================================

108688:  LDR             R1, =(_ZTVSt9bad_alloc_ptr - 0x10868E); Alternative name is 'std::bad_alloc::bad_alloc(void)'
10868A:  ADD             R1, PC; _ZTVSt9bad_alloc_ptr
10868C:  LDR             R1, [R1]; `vtable for'std::bad_alloc ...
10868E:  ADDS            R1, #8
108690:  STR             R1, [R0]
108692:  BX              LR
