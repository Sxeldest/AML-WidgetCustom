; =========================================================
; Game Engine Function: _Z13IsSCCloudFreev
; Address            : 0x286F80 - 0x286F94
; =========================================================

286F80:  PUSH            {R7,LR}
286F82:  MOV             R7, SP
286F84:  BLX             cloudGetBufferPtr
286F88:  MOVS            R1, #0
286F8A:  CMP             R0, #0
286F8C:  IT EQ
286F8E:  MOVEQ           R1, #1
286F90:  MOV             R0, R1
286F92:  POP             {R7,PC}
