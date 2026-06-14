; =========================================================
; Game Engine Function: _ZN10CNetworkPC11IsNetworkUpEv
; Address            : 0x450D90 - 0x450D9A
; =========================================================

450D90:  LDR             R0, =(_ZN10CNetworkPC13sm_network_upE_ptr - 0x450D96)
450D92:  ADD             R0, PC; _ZN10CNetworkPC13sm_network_upE_ptr
450D94:  LDR             R0, [R0]; CNetworkPC::sm_network_up ...
450D96:  LDRB            R0, [R0]; CNetworkPC::sm_network_up
450D98:  BX              LR
