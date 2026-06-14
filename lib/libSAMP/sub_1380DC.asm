; =========================================================
; Game Engine Function: sub_1380DC
; Address            : 0x1380DC - 0x13812A
; =========================================================

1380DC:  PUSH            {R4,R5,R7,LR}
1380DE:  ADD             R7, SP, #8
1380E0:  MOV             R4, R0
1380E2:  LDR             R0, =(unk_3141C8 - 0x1380E8)
1380E4:  ADD             R0, PC; unk_3141C8
1380E6:  LDR             R5, [R0,#(dword_3141D0 - 0x3141C8)]
1380E8:  CBZ             R5, loc_138102
1380EA:  LDR             R0, [R5,#0xC]
1380EC:  LDR.W           R1, [R0,#0xA8]
1380F0:  MOV             R0, R4
1380F2:  BL              sub_12BE22
1380F6:  LDR             R1, [R5,#0xC]
1380F8:  MOV             R0, R4
1380FA:  BL              sub_12BE22
1380FE:  LDR             R5, [R5]
138100:  B               loc_1380E8
138102:  LDR             R0, =(unk_3141C8 - 0x138108)
138104:  ADD             R0, PC; unk_3141C8
138106:  BL              sub_139568
13810A:  LDR             R5, =(word_3141DC - 0x138110)
13810C:  ADD             R5, PC; word_3141DC
13810E:  LDRB            R0, [R5,#(word_3141DC+1 - 0x3141DC)]
138110:  CBZ             R0, loc_138118
138112:  MOVS            R0, #0
138114:  BL              sub_138038
138118:  MOVS            R0, #0
13811A:  STRB            R0, [R5,#(byte_3141E4 - 0x3141DC)]
13811C:  STR             R0, [R5,#(dword_3141E0 - 0x3141DC)]
13811E:  STRH            R0, [R5]
138120:  MOV             R0, R4
138122:  POP.W           {R4,R5,R7,LR}
138126:  B.W             sub_137E48
