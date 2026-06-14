; =========================================================
; Game Engine Function: sub_82010
; Address            : 0x82010 - 0x82024
; =========================================================

82010:  LDR             R2, =(_ZTSPFvvE_ptr - 0x8201A)
82012:  LDR             R3, [R1,#4]
82014:  MOVS            R1, #0
82016:  ADD             R2, PC; _ZTSPFvvE_ptr
82018:  LDR             R2, [R2]; "PFvvE" ...
8201A:  CMP             R3, R2
8201C:  IT EQ
8201E:  ADDEQ           R1, R0, #4
82020:  MOV             R0, R1
82022:  BX              LR
