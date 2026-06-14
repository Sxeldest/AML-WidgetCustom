; =========================================================
; Game Engine Function: _Z7NvFGetcPv
; Address            : 0x27409E - 0x2740C0
; =========================================================

27409E:  LDRD.W          R1, R0, [R0]; asset
2740A2:  CMP             R1, #1
2740A4:  IT EQ
2740A6:  BEQ.W           j_fgetc
2740AA:  PUSH            {R7,LR}
2740AC:  MOV             R7, SP
2740AE:  SUB             SP, SP, #8
2740B0:  SUBS            R1, R7, #1; buf
2740B2:  MOVS            R2, #1; count
2740B4:  BLX             AAsset_read
2740B8:  LDRB.W          R0, [R7,#-1]
2740BC:  ADD             SP, SP, #8
2740BE:  POP             {R7,PC}
