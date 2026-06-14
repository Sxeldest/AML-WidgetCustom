; =========================================================
; Game Engine Function: _ZNSt10bad_typeidC2Ev
; Address            : 0x21FC70 - 0x21FC7C
; =========================================================

21FC70:  LDR             R1, =(_ZTVSt10bad_typeid_ptr - 0x21FC76); Alternative name is 'std::bad_typeid::bad_typeid(void)'
21FC72:  ADD             R1, PC; _ZTVSt10bad_typeid_ptr
21FC74:  LDR             R1, [R1]; `vtable for'std::bad_typeid ...
21FC76:  ADDS            R1, #8
21FC78:  STR             R1, [R0]
21FC7A:  BX              LR
