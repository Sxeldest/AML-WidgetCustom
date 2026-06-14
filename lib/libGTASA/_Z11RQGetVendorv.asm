; =========================================================
; Game Engine Function: _Z11RQGetVendorv
; Address            : 0x1CC578 - 0x1CC582
; =========================================================

1CC578:  LDR             R0, =(rqVendor_ptr - 0x1CC57E)
1CC57A:  ADD             R0, PC; rqVendor_ptr
1CC57C:  LDR             R0, [R0]; rqVendor
1CC57E:  LDR             R0, [R0]
1CC580:  BX              LR
