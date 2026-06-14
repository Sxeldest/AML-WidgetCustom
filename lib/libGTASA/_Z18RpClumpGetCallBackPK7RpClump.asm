; =========================================================
; Game Engine Function: _Z18RpClumpGetCallBackPK7RpClump
; Address            : 0x21477C - 0x21478A
; =========================================================

21477C:  LDR             R1, =(nullsub_11+1 - 0x214784)
21477E:  LDR             R0, [R0,#0x28]
214780:  ADD             R1, PC; nullsub_11
214782:  CMP             R0, R1
214784:  IT EQ
214786:  MOVEQ           R0, #0
214788:  BX              LR
