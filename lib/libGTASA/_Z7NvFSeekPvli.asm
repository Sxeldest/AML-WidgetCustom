; =========================================================
; Game Engine Function: _Z7NvFSeekPvli
; Address            : 0x267632 - 0x26764E
; =========================================================

267632:  LDRD.W          R3, R0, [R0]; asset
267636:  CMP             R3, #1
267638:  IT EQ
26763A:  BEQ.W           j_fseek
26763E:  PUSH            {R7,LR}
267640:  MOV             R7, SP
267642:  BLX             AAsset_seek
267646:  ADDS            R1, R0, #1
267648:  IT NE
26764A:  MOVNE           R0, #0
26764C:  POP             {R7,PC}
