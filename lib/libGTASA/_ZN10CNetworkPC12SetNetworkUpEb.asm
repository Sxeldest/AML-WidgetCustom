; =========================================================
; Game Engine Function: _ZN10CNetworkPC12SetNetworkUpEb
; Address            : 0x450D80 - 0x450D8A
; =========================================================

450D80:  LDR             R1, =(_ZN10CNetworkPC13sm_network_upE_ptr - 0x450D86)
450D82:  ADD             R1, PC; _ZN10CNetworkPC13sm_network_upE_ptr
450D84:  LDR             R1, [R1]; CNetworkPC::sm_network_up ...
450D86:  STRB            R0, [R1]; CNetworkPC::sm_network_up
450D88:  BX              LR
