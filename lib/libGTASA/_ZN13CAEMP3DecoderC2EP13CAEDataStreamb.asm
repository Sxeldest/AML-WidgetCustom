; =========================================================
; Game Engine Function: _ZN13CAEMP3DecoderC2EP13CAEDataStreamb
; Address            : 0x27EC80 - 0x27ECCA
; =========================================================

27EC80:  PUSH            {R4-R7,LR}
27EC82:  ADD             R7, SP, #0xC
27EC84:  PUSH.W          {R11}
27EC88:  MOV             R4, R2
27EC8A:  MOV             R5, R1
27EC8C:  MOV             R6, R0
27EC8E:  BLX             j__ZN19CAEStreamingDecoderC2EP13CAEDataStream; CAEStreamingDecoder::CAEStreamingDecoder(CAEDataStream *)
27EC92:  LDR             R0, =(_ZTV13CAEMP3Decoder_ptr - 0x27ECA0)
27EC94:  VMOV.I32        Q8, #0
27EC98:  ADD.W           R1, R6, #0x1C
27EC9C:  ADD             R0, PC; _ZTV13CAEMP3Decoder_ptr
27EC9E:  VST1.32         {D16-D17}, [R1]
27ECA2:  MOVS            R1, #0
27ECA4:  LDR             R0, [R0]; `vtable for'CAEMP3Decoder ...
27ECA6:  STRB            R1, [R6,#8]
27ECA8:  ADD.W           R1, R6, #0x10
27ECAC:  ADDS            R0, #8
27ECAE:  STRB            R4, [R6,#9]
27ECB0:  VST1.32         {D16-D17}, [R1]
27ECB4:  STR             R5, [R6,#0xC]
27ECB6:  STR             R0, [R6]
27ECB8:  MOV.W           R0, #0x4000; byte_count
27ECBC:  BLX             malloc
27ECC0:  STR             R0, [R6,#0x58]
27ECC2:  MOV             R0, R6
27ECC4:  POP.W           {R11}
27ECC8:  POP             {R4-R7,PC}
