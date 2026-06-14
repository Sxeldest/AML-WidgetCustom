; =========================================================
; Game Engine Function: sub_21B178
; Address            : 0x21B178 - 0x21B1B6
; =========================================================

21B178:  PUSH            {R4-R7,LR}
21B17A:  ADD             R7, SP, #0xC
21B17C:  PUSH.W          {R11}
21B180:  MOV             R4, R1
21B182:  LDRD.W          R1, R2, [R0,#8]
21B186:  LDR             R6, =(sub_216F98+1 - 0x21B190)
21B188:  MOV             R5, R0
21B18A:  MOV             R0, R4
21B18C:  ADD             R6, PC; sub_216F98
21B18E:  BLX             R6; sub_216F98
21B190:  LDR             R1, =(aQjk+6 - 0x21B198); "(" ...
21B192:  MOV             R0, R4
21B194:  ADD             R1, PC; "("
21B196:  ADDS            R2, R1, #1
21B198:  BLX             R6; sub_216F98
21B19A:  LDR             R0, [R5,#0x10]
21B19C:  MOV             R1, R4
21B19E:  BL              sub_2154CC
21B1A2:  LDR             R1, =(unk_901C1 - 0x21B1AC)
21B1A4:  MOV             R0, R4
21B1A6:  MOV             R3, R6
21B1A8:  ADD             R1, PC; unk_901C1
21B1AA:  ADDS            R2, R1, #1
21B1AC:  POP.W           {R11}
21B1B0:  POP.W           {R4-R7,LR}
21B1B4:  BX              R3; sub_216F98
