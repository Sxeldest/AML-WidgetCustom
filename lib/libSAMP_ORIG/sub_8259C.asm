; =========================================================
; Game Engine Function: sub_8259C
; Address            : 0x8259C - 0x825C0
; =========================================================

8259C:  PUSH            {R4,R6,R7,LR}
8259E:  ADD             R7, SP, #8
825A0:  LDR             R1, =(dword_1A49D8 - 0x825AA)
825A2:  MOVS            R3, #0
825A4:  LDR             R0, =(sub_81FBC+1 - 0x825AE)
825A6:  ADD             R1, PC; dword_1A49D8
825A8:  LDR             R2, =(off_110560 - 0x825B2)
825AA:  ADD             R0, PC; sub_81FBC
825AC:  MOV             R4, R1
825AE:  ADD             R2, PC; off_110560
825B0:  STR.W           R3, [R4,#(dword_1A49DC - 0x1A49D8)]!
825B4:  STR             R3, [R1,#(dword_1A49E0 - 0x1A49D8)]
825B6:  STR             R4, [R1]
825B8:  POP.W           {R4,R6,R7,LR}
825BC:  B.W             sub_10C188
