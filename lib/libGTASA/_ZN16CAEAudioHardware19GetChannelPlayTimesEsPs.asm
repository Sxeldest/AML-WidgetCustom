; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware19GetChannelPlayTimesEsPs
; Address            : 0x392B8A - 0x392BC8
; =========================================================

392B8A:  PUSH            {R4-R7,LR}
392B8C:  ADD             R7, SP, #0xC
392B8E:  PUSH.W          {R11}
392B92:  MOV             R4, R2
392B94:  CBZ             R4, loc_392BC2
392B96:  ADD.W           R2, R0, R1,LSL#1
392B9A:  LDRH.W          R2, [R2,#0x4C]
392B9E:  ADDS            R3, R1, R2
392BA0:  SUBS            R3, #1
392BA2:  CMP             R3, R1
392BA4:  BLS             loc_392BC2
392BA6:  ADD.W           R0, R0, R1,LSL#2
392BAA:  SUBS            R6, R2, #1
392BAC:  ADDW            R5, R0, #0xBCC
392BB0:  LDR.W           R0, [R5],#4
392BB4:  LDR             R1, [R0]
392BB6:  LDR             R1, [R1,#0x10]
392BB8:  BLX             R1
392BBA:  STRH.W          R0, [R4],#2
392BBE:  SUBS            R6, #1
392BC0:  BNE             loc_392BB0
392BC2:  POP.W           {R11}
392BC6:  POP             {R4-R7,PC}
