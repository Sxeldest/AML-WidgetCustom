; =========================================================
; Game Engine Function: sub_1331EC
; Address            : 0x1331EC - 0x133220
; =========================================================

1331EC:  PUSH            {R4,R6,R7,LR}
1331EE:  ADD             R7, SP, #8
1331F0:  MOV             R4, R0
1331F2:  LDR             R0, =(off_234C0C - 0x1331F8)
1331F4:  ADD             R0, PC; off_234C0C
1331F6:  LDR             R1, [R0]; `vtable for'Button ...
1331F8:  LDR             R0, [R4,#0x68]
1331FA:  ADDS            R1, #8
1331FC:  STR             R1, [R4]
1331FE:  ADD.W           R1, R4, #0x58 ; 'X'
133202:  CMP             R1, R0
133204:  BEQ             loc_13320C
133206:  CBZ             R0, loc_133216
133208:  MOVS            R1, #5
13320A:  B               loc_13320E
13320C:  MOVS            R1, #4
13320E:  LDR             R2, [R0]
133210:  LDR.W           R1, [R2,R1,LSL#2]
133214:  BLX             R1
133216:  MOV             R0, R4
133218:  POP.W           {R4,R6,R7,LR}
13321C:  B.W             sub_12BCE4
