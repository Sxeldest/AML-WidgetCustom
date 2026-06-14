; =========================================================
; Game Engine Function: _Z20FindAtomicFromNameCBP8RpAtomicPv
; Address            : 0x459CF8 - 0x459D24
; =========================================================

459CF8:  PUSH            {R4-R7,LR}
459CFA:  ADD             R7, SP, #0xC
459CFC:  PUSH.W          {R11}
459D00:  MOV             R4, R0
459D02:  MOV             R5, R1
459D04:  LDR             R0, [R4,#4]
459D06:  LDR             R6, [R5]
459D08:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
459D0C:  MOV             R1, R0; char *
459D0E:  MOV             R0, R6; char *
459D10:  BLX             strcasecmp
459D14:  CMP             R0, #0
459D16:  ITT EQ
459D18:  STREQ           R4, [R5,#4]
459D1A:  MOVEQ           R4, #0
459D1C:  MOV             R0, R4
459D1E:  POP.W           {R11}
459D22:  POP             {R4-R7,PC}
