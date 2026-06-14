; =========================================================
; Game Engine Function: _Z9NvAPKSeekPvli
; Address            : 0x271126 - 0x271136
; =========================================================

271126:  PUSH            {R7,LR}
271128:  MOV             R7, SP
27112A:  BLX             AAsset_seek
27112E:  ADDS            R1, R0, #1
271130:  IT NE
271132:  MOVNE           R0, #0
271134:  POP             {R7,PC}
