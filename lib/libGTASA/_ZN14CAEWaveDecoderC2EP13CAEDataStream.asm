; =========================================================
; Game Engine Function: _ZN14CAEWaveDecoderC2EP13CAEDataStream
; Address            : 0x3B97F8 - 0x3B9814
; =========================================================

3B97F8:  PUSH            {R4,R6,R7,LR}
3B97FA:  ADD             R7, SP, #8
3B97FC:  MOV             R4, R1
3B97FE:  BLX             j__ZN19CAEStreamingDecoderC2EP13CAEDataStream; CAEStreamingDecoder::CAEStreamingDecoder(CAEDataStream *)
3B9802:  LDR             R1, =(_ZTV14CAEWaveDecoder_ptr - 0x3B980C)
3B9804:  MOVS            R2, #0
3B9806:  STRB            R2, [R0,#8]
3B9808:  ADD             R1, PC; _ZTV14CAEWaveDecoder_ptr
3B980A:  STR             R4, [R0,#0xC]
3B980C:  LDR             R1, [R1]; `vtable for'CAEWaveDecoder ...
3B980E:  ADDS            R1, #8
3B9810:  STR             R1, [R0]
3B9812:  POP             {R4,R6,R7,PC}
