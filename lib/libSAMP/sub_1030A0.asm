; =========================================================
; Game Engine Function: sub_1030A0
; Address            : 0x1030A0 - 0x1030DC
; =========================================================

1030A0:  PUSH            {R7,LR}
1030A2:  MOV             R7, SP
1030A4:  LDR             R1, =(off_234A74 - 0x1030AA)
1030A6:  ADD             R1, PC; off_234A74
1030A8:  LDR             R1, [R1]; dword_2402E4
1030AA:  LDR             R1, [R1]
1030AC:  LDR             R1, [R1]
1030AE:  CBZ             R1, loc_1030C6
1030B0:  LDR             R0, =(unk_25B22C - 0x1030BA)
1030B2:  RSB.W           R1, R1, R1,LSL#3
1030B6:  ADD             R0, PC; unk_25B22C
1030B8:  ADD.W           R0, R0, R1,LSL#2
1030BC:  LDRB            R0, [R0,#4]
1030BE:  CMP             R0, #0
1030C0:  IT NE
1030C2:  MOVNE           R0, #1
1030C4:  POP             {R7,PC}
1030C6:  LDR             R1, =(off_25C98C - 0x1030CC)
1030C8:  ADD             R1, PC; off_25C98C
1030CA:  LDR             R1, [R1]
1030CC:  BLX             R1
1030CE:  LDR             R1, =(word_25B210 - 0x1030DA)
1030D0:  CMP             R0, #0
1030D2:  IT NE
1030D4:  MOVNE           R0, #1
1030D6:  ADD             R1, PC; word_25B210
1030D8:  STRB            R0, [R1,#(byte_25B214 - 0x25B210)]
1030DA:  POP             {R7,PC}
