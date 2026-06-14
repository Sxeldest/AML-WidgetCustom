; =========================================================
; Game Engine Function: sub_1A42E4
; Address            : 0x1A42E4 - 0x1A42EE
; =========================================================

1A42E4:  LDR             R0, =(AEStreamTransformer_ptr - 0x1A42EA)
1A42E6:  ADD             R0, PC; AEStreamTransformer_ptr
1A42E8:  LDR             R0, [R0]; AEStreamTransformer ; this
1A42EA:  B.W             sub_18CD58
