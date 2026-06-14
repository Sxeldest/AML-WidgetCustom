; =========================================================
; Game Engine Function: sub_82260
; Address            : 0x82260 - 0x82272
; =========================================================

82260:  LDR             R2, =(aPdofvrk6stream - 0x8226A); "PDoFvRK6StreamtE" ...
82262:  LDR             R3, [R1,#4]
82264:  MOVS            R1, #0
82266:  ADD             R2, PC; "PDoFvRK6StreamtE"
82268:  CMP             R3, R2
8226A:  IT EQ
8226C:  ADDEQ           R1, R0, #4
8226E:  MOV             R0, R1
82270:  BX              LR
