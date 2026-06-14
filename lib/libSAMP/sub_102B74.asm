; =========================================================
; Game Engine Function: sub_102B74
; Address            : 0x102B74 - 0x102BB2
; =========================================================

102B74:  PUSH            {R7,LR}
102B76:  MOV             R7, SP
102B78:  LDR             R1, =(off_234A74 - 0x102B7E)
102B7A:  ADD             R1, PC; off_234A74
102B7C:  LDR             R1, [R1]; dword_2402E4
102B7E:  LDR             R1, [R1]
102B80:  LDR             R1, [R1]
102B82:  CBZ             R1, loc_102B9C
102B84:  LDR             R0, =(unk_25B22C - 0x102B8E)
102B86:  RSB.W           R1, R1, R1,LSL#3
102B8A:  ADD             R0, PC; unk_25B22C
102B8C:  ADD.W           R0, R0, R1,LSL#2
102B90:  LDRB            R1, [R0,#0x1B]
102B92:  CMP             R1, #0
102B94:  ITE NE
102B96:  MOVNE           R0, #0
102B98:  LDRBEQ          R0, [R0,#byte_9]
102B9A:  POP             {R7,PC}
102B9C:  LDR             R1, =(off_25C93C - 0x102BA2)
102B9E:  ADD             R1, PC; off_25C93C
102BA0:  LDR             R1, [R1]
102BA2:  BLX             R1
102BA4:  LDR             R1, =(word_25B210 - 0x102BB0)
102BA6:  CMP             R0, #0
102BA8:  IT NE
102BAA:  MOVNE           R0, #1
102BAC:  ADD             R1, PC; word_25B210
102BAE:  STRB            R0, [R1,#(byte_25B219 - 0x25B210)]
102BB0:  POP             {R7,PC}
