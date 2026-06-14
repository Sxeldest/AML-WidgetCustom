; =========================================================
; Game Engine Function: _ZN18CAnimBlendSequence22RemoveUncompressedDataEPh
; Address            : 0x38BB80 - 0x38BB8A
; =========================================================

38BB80:  LDRH            R2, [R0,#6]
38BB82:  CMP             R2, #0
38BB84:  IT NE
38BB86:  BNE             _ZN18CAnimBlendSequence17CompressKeyframesEPh; CAnimBlendSequence::CompressKeyframes(uchar *)
38BB88:  BX              LR
