; =========================================================
; Game Engine Function: sub_10323C
; Address            : 0x10323C - 0x103278
; =========================================================

10323C:  PUSH            {R7,LR}
10323E:  MOV             R7, SP
103240:  LDR             R1, =(off_234A74 - 0x103246)
103242:  ADD             R1, PC; off_234A74
103244:  LDR             R1, [R1]; dword_2402E4
103246:  LDR             R1, [R1]
103248:  LDR             R1, [R1]
10324A:  CBZ             R1, loc_103262
10324C:  LDR             R0, =(unk_25B22C - 0x103256)
10324E:  RSB.W           R1, R1, R1,LSL#3
103252:  ADD             R0, PC; unk_25B22C
103254:  ADD.W           R0, R0, R1,LSL#2
103258:  LDRB            R0, [R0,#6]
10325A:  CMP             R0, #0
10325C:  IT NE
10325E:  MOVNE           R0, #1
103260:  POP             {R7,PC}
103262:  LDR             R1, =(off_25C9AC - 0x103268)
103264:  ADD             R1, PC; off_25C9AC
103266:  LDR             R1, [R1]
103268:  BLX             R1
10326A:  LDR             R1, =(word_25B210 - 0x103276)
10326C:  CMP             R0, #0
10326E:  IT NE
103270:  MOVNE           R0, #1
103272:  ADD             R1, PC; word_25B210
103274:  STRB            R0, [R1,#(byte_25B216 - 0x25B210)]
103276:  POP             {R7,PC}
