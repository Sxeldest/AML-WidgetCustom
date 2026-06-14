; =========================================================
; Game Engine Function: _ZNSt10bad_typeidC2Ev
; Address            : 0x108818 - 0x108824
; =========================================================

108818:  LDR             R1, =(_ZTVSt10bad_typeid_ptr - 0x10881E)
10881A:  ADD             R1, PC; _ZTVSt10bad_typeid_ptr
10881C:  LDR             R1, [R1]; `vtable for'std::bad_typeid ...
10881E:  ADDS            R1, #8
108820:  STR             R1, [R0]
108822:  BX              LR
