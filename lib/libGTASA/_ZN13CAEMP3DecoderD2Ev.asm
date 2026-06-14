; =========================================================
; Game Engine Function: _ZN13CAEMP3DecoderD2Ev
; Address            : 0x27ECD0 - 0x27ED18
; =========================================================

27ECD0:  PUSH            {R4,R6,R7,LR}
27ECD2:  ADD             R7, SP, #8
27ECD4:  MOV             R4, R0
27ECD6:  LDR             R0, =(_ZTV13CAEMP3Decoder_ptr - 0x27ECDC)
27ECD8:  ADD             R0, PC; _ZTV13CAEMP3Decoder_ptr
27ECDA:  LDR             R1, [R0]; `vtable for'CAEMP3Decoder ...
27ECDC:  LDR             R0, [R4,#0x28]
27ECDE:  ADDS            R1, #8
27ECE0:  STR             R1, [R4]
27ECE2:  CBZ             R0, loc_27ECEC
27ECE4:  BLX             j_mpg123_delete
27ECE8:  MOVS            R0, #0
27ECEA:  STR             R0, [R4,#0x28]
27ECEC:  LDR             R0, [R4,#0x58]; p
27ECEE:  CBZ             R0, loc_27ECF8
27ECF0:  BLX             free
27ECF4:  MOVS            R0, #0
27ECF6:  STR             R0, [R4,#0x58]
27ECF8:  LDR             R0, [R4,#0xC]
27ECFA:  CMP             R0, #0
27ECFC:  ITT NE
27ECFE:  LDRNE           R0, [R0]; void *
27ED00:  CMPNE           R0, #0
27ED02:  BEQ             loc_27ED0E
27ED04:  BLX             _ZdlPv; operator delete(void *)
27ED08:  LDR             R0, [R4,#0xC]
27ED0A:  MOVS            R1, #0
27ED0C:  STR             R1, [R0]
27ED0E:  MOV             R0, R4; this
27ED10:  POP.W           {R4,R6,R7,LR}
27ED14:  B.W             j_j__ZN19CAEStreamingDecoderD2Ev; j_CAEStreamingDecoder::~CAEStreamingDecoder()
