; =========================================================
; Game Engine Function: sub_10341C
; Address            : 0x10341C - 0x103454
; =========================================================

10341C:  PUSH            {R7,LR}
10341E:  MOV             R7, SP
103420:  LDR             R3, =(off_234A74 - 0x103426)
103422:  ADD             R3, PC; off_234A74
103424:  LDR             R3, [R3]; dword_2402E4
103426:  LDR             R3, [R3]
103428:  LDR             R3, [R3]
10342A:  CBZ             R3, loc_10343C
10342C:  LDR             R0, =(unk_25B22C - 0x103436)
10342E:  RSB.W           R1, R3, R3,LSL#3
103432:  ADD             R0, PC; unk_25B22C
103434:  ADD.W           R0, R0, R1,LSL#2
103438:  LDRB            R0, [R0,#6]
10343A:  POP             {R7,PC}
10343C:  LDR             R3, =(off_25C9C0 - 0x103442)
10343E:  ADD             R3, PC; off_25C9C0
103440:  LDR             R3, [R3]
103442:  BLX             R3
103444:  LDR             R1, =(word_25B210 - 0x103452)
103446:  MOV             R2, R0
103448:  CMP             R0, #0
10344A:  IT NE
10344C:  MOVNE           R2, #1
10344E:  ADD             R1, PC; word_25B210
103450:  STRB            R2, [R1,#(byte_25B216 - 0x25B210)]
103452:  POP             {R7,PC}
