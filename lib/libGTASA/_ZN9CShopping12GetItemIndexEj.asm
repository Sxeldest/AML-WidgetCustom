; =========================================================
; Game Engine Function: _ZN9CShopping12GetItemIndexEj
; Address            : 0x35FA44 - 0x35FA6A
; =========================================================

35FA44:  LDR             R2, =(_ZN9CShopping7ms_keysE_ptr - 0x35FA52)
35FA46:  MOV             R1, R0
35FA48:  MOVS            R0, #0
35FA4A:  MOVW            R12, #0x22F
35FA4E:  ADD             R2, PC; _ZN9CShopping7ms_keysE_ptr
35FA50:  LDR             R2, [R2]; CShopping::ms_keys ...
35FA52:  LDR.W           R3, [R2,R0,LSL#2]
35FA56:  CMP             R3, R1
35FA58:  IT EQ
35FA5A:  BXEQ            LR
35FA5C:  ADDS            R3, R0, #1
35FA5E:  CMP             R0, R12
35FA60:  MOV             R0, R3
35FA62:  BLT             loc_35FA52
35FA64:  MOV.W           R0, #0xFFFFFFFF
35FA68:  BX              LR
