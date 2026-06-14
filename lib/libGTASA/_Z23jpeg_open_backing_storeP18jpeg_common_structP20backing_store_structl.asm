; =========================================================
; Game Engine Function: _Z23jpeg_open_backing_storeP18jpeg_common_structP20backing_store_structl
; Address            : 0x481C44 - 0x481C50
; =========================================================

481C44:  LDR             R1, [R0]
481C46:  MOVS            R2, #0x31 ; '1'
481C48:  STR             R2, [R1,#0x14]
481C4A:  LDR             R1, [R0]
481C4C:  LDR             R1, [R1]
481C4E:  BX              R1
