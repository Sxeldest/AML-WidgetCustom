; =========================================================
; Game Engine Function: _ZN16FxInterpInfo32_cC2Ev
; Address            : 0x36C970 - 0x36C984
; =========================================================

36C970:  LDR             R1, =(_ZTV16FxInterpInfo32_c_ptr - 0x36C97A); Alternative name is 'FxInterpInfo32_c::FxInterpInfo32_c(void)'
36C972:  MOVS            R2, #0
36C974:  STRB            R2, [R0,#4]
36C976:  ADD             R1, PC; _ZTV16FxInterpInfo32_c_ptr
36C978:  STRD.W          R2, R2, [R0,#8]
36C97C:  LDR             R1, [R1]; `vtable for'FxInterpInfo32_c ...
36C97E:  ADDS            R1, #8
36C980:  STR             R1, [R0]
36C982:  BX              LR
