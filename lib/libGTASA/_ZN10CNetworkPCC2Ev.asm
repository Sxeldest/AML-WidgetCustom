; =========================================================
; Game Engine Function: _ZN10CNetworkPCC2Ev
; Address            : 0x450D68 - 0x450D74
; =========================================================

450D68:  LDR             R1, =(_ZTV10CNetworkPC_ptr - 0x450D6E); Alternative name is 'CNetworkPC::CNetworkPC(void)'
450D6A:  ADD             R1, PC; _ZTV10CNetworkPC_ptr
450D6C:  LDR             R1, [R1]; `vtable for'CNetworkPC ...
450D6E:  ADDS            R1, #8
450D70:  STR             R1, [R0]
450D72:  BX              LR
