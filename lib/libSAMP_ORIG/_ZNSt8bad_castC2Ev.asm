; =========================================================
; Game Engine Function: _ZNSt8bad_castC2Ev
; Address            : 0x1087E8 - 0x1087F4
; =========================================================

1087E8:  LDR             R1, =(_ZTVSt8bad_cast_ptr - 0x1087EE); Alternative name is 'std::bad_cast::bad_cast(void)'
1087EA:  ADD             R1, PC; _ZTVSt8bad_cast_ptr
1087EC:  LDR             R1, [R1]; `vtable for'std::bad_cast ...
1087EE:  ADDS            R1, #8
1087F0:  STR             R1, [R0]
1087F2:  BX              LR
