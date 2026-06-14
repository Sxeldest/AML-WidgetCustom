; =========================================================
; Game Engine Function: sub_21B230
; Address            : 0x21B230 - 0x21B264
; =========================================================

21B230:  PUSH            {R4,R5,R7,LR}
21B232:  ADD             R7, SP, #8
21B234:  MOV             R5, R0
21B236:  LDR             R0, [R0,#8]
21B238:  MOV             R4, R1
21B23A:  BL              sub_2154CC
21B23E:  LDR             R1, =(aQjk+6 - 0x21B246); "(" ...
21B240:  MOV             R0, R4
21B242:  ADD             R1, PC; "("
21B244:  ADDS            R2, R1, #1
21B246:  BL              sub_216F98
21B24A:  ADD.W           R0, R5, #0xC
21B24E:  MOV             R1, R4
21B250:  BL              sub_21AC38
21B254:  LDR             R1, =(unk_901C1 - 0x21B25C)
21B256:  MOV             R0, R4
21B258:  ADD             R1, PC; unk_901C1
21B25A:  ADDS            R2, R1, #1
21B25C:  POP.W           {R4,R5,R7,LR}
21B260:  B.W             sub_216F98
