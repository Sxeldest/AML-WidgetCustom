; =========================================================
; Game Engine Function: _Z9NvAPKReadPvjjS_
; Address            : 0x270FD0 - 0x271022
; =========================================================

270FD0:  PUSH            {R4-R7,LR}
270FD2:  ADD             R7, SP, #0xC
270FD4:  PUSH.W          {R8-R10}
270FD8:  MOV             R5, R3
270FDA:  MOV             R4, R1
270FDC:  MOV             R8, R0
270FDE:  MOV             R0, R5; asset
270FE0:  MUL.W           R6, R2, R4
270FE4:  BLX             AAsset_getLength
270FE8:  MOV             R9, R0
270FEA:  MOV             R0, R5; asset
270FEC:  BLX             AAsset_getLength
270FF0:  MOV             R10, R0
270FF2:  MOV             R0, R5; asset
270FF4:  BLX             AAsset_getRemainingLength
270FF8:  SUB.W           R0, R0, R10
270FFC:  MOV             R1, R8; buf
270FFE:  ADD             R0, R9
271000:  CMP             R6, R0
271002:  IT GT
271004:  MOVGT           R6, R0
271006:  MOV             R0, R5; asset
271008:  MOV             R2, R6; count
27100A:  BLX             AAsset_read
27100E:  CMP             R4, #0
271010:  IT EQ
271012:  MOVEQ           R4, #1
271014:  MOV             R1, R4
271016:  POP.W           {R8-R10}
27101A:  POP.W           {R4-R7,LR}
27101E:  B.W             sub_19E700
