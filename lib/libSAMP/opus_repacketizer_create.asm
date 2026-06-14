; =========================================================
; Game Engine Function: opus_repacketizer_create
; Address            : 0x1B941C - 0x1B9436
; =========================================================

1B941C:  PUSH            {R7,LR}
1B941E:  MOV             R7, SP
1B9420:  MOV.W           R0, #0x12C; size
1B9424:  BLX             malloc
1B9428:  MOV             R1, R0
1B942A:  MOVS            R0, #0
1B942C:  CMP             R1, #0
1B942E:  ITT NE
1B9430:  STRNE           R0, [R1,#4]
1B9432:  MOVNE           R0, R1
1B9434:  POP             {R7,PC}
