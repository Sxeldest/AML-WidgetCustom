; =========================================================
; Game Engine Function: _Z7NvFReadPvjjS_
; Address            : 0x2673D6 - 0x267440
; =========================================================

2673D6:  PUSH            {R4-R7,LR}
2673D8:  ADD             R7, SP, #0xC
2673DA:  PUSH.W          {R8-R10}
2673DE:  MOV             R8, R0
2673E0:  LDRD.W          R0, R5, [R3]
2673E4:  MOV             R4, R1
2673E6:  CMP             R0, #1
2673E8:  BNE             loc_2673FC
2673EA:  MOV             R0, R8; ptr
2673EC:  MOV             R1, R4; size
2673EE:  MOV             R3, R5; stream
2673F0:  POP.W           {R8-R10}
2673F4:  POP.W           {R4-R7,LR}
2673F8:  B.W             j_fread
2673FC:  MOV             R0, R5; asset
2673FE:  MUL.W           R6, R2, R4
267402:  BLX             AAsset_getLength
267406:  MOV             R9, R0
267408:  MOV             R0, R5; asset
26740A:  BLX             AAsset_getLength
26740E:  MOV             R10, R0
267410:  MOV             R0, R5; asset
267412:  BLX             AAsset_getRemainingLength
267416:  SUB.W           R0, R0, R10
26741A:  MOV             R1, R8; buf
26741C:  ADD             R0, R9
26741E:  CMP             R6, R0
267420:  IT GT
267422:  MOVGT           R6, R0
267424:  MOV             R0, R5; asset
267426:  MOV             R2, R6; count
267428:  BLX             AAsset_read
26742C:  CMP             R4, #0
26742E:  IT EQ
267430:  MOVEQ           R4, #1
267432:  MOV             R1, R4
267434:  POP.W           {R8-R10}
267438:  POP.W           {R4-R7,LR}
26743C:  B.W             sub_19E700
