; =========================================================
; Game Engine Function: _ZN8CGarages22AllRespraysCloseOrOpenEb
; Address            : 0x314B68 - 0x314B96
; =========================================================

314B68:  LDR             R1, =(_ZN8CGarages10NumGaragesE_ptr - 0x314B6E)
314B6A:  ADD             R1, PC; _ZN8CGarages10NumGaragesE_ptr
314B6C:  LDR             R1, [R1]; CGarages::NumGarages ...
314B6E:  LDR.W           R12, [R1]; CGarages::NumGarages
314B72:  CMP.W           R12, #0
314B76:  IT EQ
314B78:  BXEQ            LR
314B7A:  LDR             R2, =(_ZN8CGarages8aGaragesE_ptr - 0x314B82)
314B7C:  MOVS            R3, #0
314B7E:  ADD             R2, PC; _ZN8CGarages8aGaragesE_ptr
314B80:  LDR             R2, [R2]; CGarages::aGarages ...
314B82:  ADDS            R2, #0x4C ; 'L'
314B84:  LDRB            R1, [R2]
314B86:  ADDS            R3, #1
314B88:  CMP             R1, #5
314B8A:  IT EQ
314B8C:  STRBEQ          R0, [R2,#1]
314B8E:  ADDS            R2, #0xD8
314B90:  CMP             R3, R12
314B92:  BCC             loc_314B84
314B94:  BX              LR
