; =========================================================
; Game Engine Function: sub_82150
; Address            : 0x82150 - 0x82162
; =========================================================

82150:  LDR             R2, =(aPfvrn2sv13conn - 0x8215A); "PFvRN2SV13ConnectPacketEE" ...
82152:  LDR             R3, [R1,#4]
82154:  MOVS            R1, #0
82156:  ADD             R2, PC; "PFvRN2SV13ConnectPacketEE"
82158:  CMP             R3, R2
8215A:  IT EQ
8215C:  ADDEQ           R1, R0, #4
8215E:  MOV             R0, R1
82160:  BX              LR
