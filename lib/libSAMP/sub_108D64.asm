; =========================================================
; Game Engine Function: sub_108D64
; Address            : 0x108D64 - 0x108D7A
; =========================================================

108D64:  SUBS            R0, #1
108D66:  CMP             R0, #0x2D ; '-'
108D68:  ITT HI
108D6A:  MOVHI.W         R0, #0xFFFFFFFF
108D6E:  BXHI            LR
108D70:  LDR             R1, =(unk_B3BE4 - 0x108D76)
108D72:  ADD             R1, PC; unk_B3BE4
108D74:  LDR.W           R0, [R1,R0,LSL#2]
108D78:  BX              LR
