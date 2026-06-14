; =========================================================
; Game Engine Function: _ZNSt8bad_castC2Ev
; Address            : 0x21FC40 - 0x21FC4C
; =========================================================

21FC40:  LDR             R1, =(_ZTVSt8bad_cast_ptr - 0x21FC46); Alternative name is 'std::bad_cast::bad_cast(void)'
21FC42:  ADD             R1, PC; _ZTVSt8bad_cast_ptr
21FC44:  LDR             R1, [R1]; `vtable for'std::bad_cast ...
21FC46:  ADDS            R1, #8
21FC48:  STR             R1, [R0]
21FC4A:  BX              LR
