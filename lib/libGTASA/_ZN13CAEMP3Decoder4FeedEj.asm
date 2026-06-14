; =========================================================
; Game Engine Function: _ZN13CAEMP3Decoder4FeedEj
; Address            : 0x27EF22 - 0x27EF44
; =========================================================

27EF22:  PUSH            {R4,R5,R7,LR}
27EF24:  ADD             R7, SP, #8
27EF26:  MOV             R4, R0
27EF28:  MOV             R2, R1; n
27EF2A:  LDR             R0, [R4,#0xC]; this
27EF2C:  LDR             R1, [R4,#0x58]; ptr
27EF2E:  BLX             j__ZN13CAEDataStream10FillBufferEPvj; CAEDataStream::FillBuffer(void *,uint)
27EF32:  MOV             R5, R0
27EF34:  CBZ             R5, loc_27EF40
27EF36:  LDR             R0, [R4,#0x28]
27EF38:  MOV             R2, R5
27EF3A:  LDR             R1, [R4,#0x58]
27EF3C:  BLX             j_mpg123_feed
27EF40:  MOV             R0, R5
27EF42:  POP             {R4,R5,R7,PC}
