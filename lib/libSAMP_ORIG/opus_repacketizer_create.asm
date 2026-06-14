; =========================================================
; Game Engine Function: opus_repacketizer_create
; Address            : 0xDB65C - 0xDB676
; =========================================================

DB65C:  PUSH            {R7,LR}
DB65E:  MOV             R7, SP
DB660:  MOV.W           R0, #0x12C; size
DB664:  BLX             malloc
DB668:  MOV             R1, R0
DB66A:  MOVS            R0, #0
DB66C:  CMP             R1, #0
DB66E:  ITT NE
DB670:  STRNE           R0, [R1,#4]
DB672:  MOVNE           R0, R1
DB674:  POP             {R7,PC}
