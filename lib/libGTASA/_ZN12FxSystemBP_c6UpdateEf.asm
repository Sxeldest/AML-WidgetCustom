; =========================================================
; Game Engine Function: _ZN12FxSystemBP_c6UpdateEf
; Address            : 0x36DF4A - 0x36DF80
; =========================================================

36DF4A:  PUSH            {R4-R7,LR}
36DF4C:  ADD             R7, SP, #0xC
36DF4E:  PUSH.W          {R11}
36DF52:  MOV             R5, R0
36DF54:  MOV             R4, R1
36DF56:  LDRSB.W         R0, [R5,#0x1B]
36DF5A:  CMP             R0, #1
36DF5C:  BLT             loc_36DF78
36DF5E:  MOVS            R6, #0
36DF60:  LDR             R0, [R5,#0x1C]
36DF62:  LDR.W           R0, [R0,R6,LSL#2]
36DF66:  LDR             R1, [R0]
36DF68:  LDR             R2, [R1,#0x14]
36DF6A:  MOV             R1, R4
36DF6C:  BLX             R2
36DF6E:  LDRSB.W         R0, [R5,#0x1B]
36DF72:  ADDS            R6, #1
36DF74:  CMP             R6, R0
36DF76:  BLT             loc_36DF60
36DF78:  MOVS            R0, #0
36DF7A:  POP.W           {R11}
36DF7E:  POP             {R4-R7,PC}
