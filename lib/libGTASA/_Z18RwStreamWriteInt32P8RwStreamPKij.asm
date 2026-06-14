; =========================================================
; Game Engine Function: _Z18RwStreamWriteInt32P8RwStreamPKij
; Address            : 0x1E2188 - 0x1E2196
; =========================================================

1E2188:  PUSH            {R4,R6,R7,LR}
1E218A:  ADD             R7, SP, #8
1E218C:  MOV             R4, R0
1E218E:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1E2192:  MOV             R0, R4
1E2194:  POP             {R4,R6,R7,PC}
