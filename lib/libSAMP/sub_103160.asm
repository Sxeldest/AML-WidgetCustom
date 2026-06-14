; =========================================================
; Game Engine Function: sub_103160
; Address            : 0x103160 - 0x103196
; =========================================================

103160:  PUSH            {R7,LR}
103162:  MOV             R7, SP
103164:  LDR             R2, =(off_234A74 - 0x10316A)
103166:  ADD             R2, PC; off_234A74
103168:  LDR             R2, [R2]; dword_2402E4
10316A:  LDR             R2, [R2]
10316C:  LDR             R2, [R2]
10316E:  CBZ             R2, loc_103186
103170:  LDR             R0, =(unk_25B22C - 0x10317A)
103172:  RSB.W           R1, R2, R2,LSL#3
103176:  ADD             R0, PC; unk_25B22C
103178:  ADD.W           R0, R0, R1,LSL#2
10317C:  LDRB            R0, [R0,#6]
10317E:  CMP             R0, #0
103180:  IT NE
103182:  MOVNE           R0, #1
103184:  POP             {R7,PC}
103186:  LDR             R2, =(off_25C9A0 - 0x10318C)
103188:  ADD             R2, PC; off_25C9A0
10318A:  LDR             R2, [R2]
10318C:  BLX             R2
10318E:  LDR             R1, =(word_25B210 - 0x103194)
103190:  ADD             R1, PC; word_25B210
103192:  STRB            R0, [R1,#(byte_25B216 - 0x25B210)]
103194:  POP             {R7,PC}
