; =========================================================
; Game Engine Function: _ZN18CPtrNodeSingleLinkdlEPv
; Address            : 0x40D934 - 0x40D956
; =========================================================

40D934:  LDR             R1, =(_ZN6CPools25ms_pPtrNodeSingleLinkPoolE_ptr - 0x40D93A)
40D936:  ADD             R1, PC; _ZN6CPools25ms_pPtrNodeSingleLinkPoolE_ptr
40D938:  LDR             R1, [R1]; CPools::ms_pPtrNodeSingleLinkPool ...
40D93A:  LDR             R1, [R1]; CPools::ms_pPtrNodeSingleLinkPool
40D93C:  LDRD.W          R2, R3, [R1]
40D940:  SUBS            R0, R0, R2
40D942:  ASRS            R0, R0, #3
40D944:  LDRB            R2, [R3,R0]
40D946:  ORR.W           R2, R2, #0x80
40D94A:  STRB            R2, [R3,R0]
40D94C:  LDR             R2, [R1,#0xC]
40D94E:  CMP             R0, R2
40D950:  IT LT
40D952:  STRLT           R0, [R1,#0xC]
40D954:  BX              LR
