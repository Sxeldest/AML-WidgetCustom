; =========================================================
; Game Engine Function: _ZN13CAEMP3DecoderD0Ev
; Address            : 0x27ED1C - 0x27ED68
; =========================================================

27ED1C:  PUSH            {R4,R6,R7,LR}
27ED1E:  ADD             R7, SP, #8
27ED20:  MOV             R4, R0
27ED22:  LDR             R0, =(_ZTV13CAEMP3Decoder_ptr - 0x27ED28)
27ED24:  ADD             R0, PC; _ZTV13CAEMP3Decoder_ptr
27ED26:  LDR             R1, [R0]; `vtable for'CAEMP3Decoder ...
27ED28:  LDR             R0, [R4,#0x28]
27ED2A:  ADDS            R1, #8
27ED2C:  STR             R1, [R4]
27ED2E:  CBZ             R0, loc_27ED38
27ED30:  BLX             j_mpg123_delete
27ED34:  MOVS            R0, #0
27ED36:  STR             R0, [R4,#0x28]
27ED38:  LDR             R0, [R4,#0x58]; p
27ED3A:  CBZ             R0, loc_27ED44
27ED3C:  BLX             free
27ED40:  MOVS            R0, #0
27ED42:  STR             R0, [R4,#0x58]
27ED44:  LDR             R0, [R4,#0xC]
27ED46:  CMP             R0, #0
27ED48:  ITT NE
27ED4A:  LDRNE           R0, [R0]; void *
27ED4C:  CMPNE           R0, #0
27ED4E:  BEQ             loc_27ED5A
27ED50:  BLX             _ZdlPv; operator delete(void *)
27ED54:  LDR             R0, [R4,#0xC]
27ED56:  MOVS            R1, #0
27ED58:  STR             R1, [R0]
27ED5A:  MOV             R0, R4; this
27ED5C:  BLX             j__ZN19CAEStreamingDecoderD2Ev; CAEStreamingDecoder::~CAEStreamingDecoder()
27ED60:  POP.W           {R4,R6,R7,LR}
27ED64:  B.W             j__ZdlPv; operator delete(void *)
