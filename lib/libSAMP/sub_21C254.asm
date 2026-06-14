; =========================================================
; Game Engine Function: sub_21C254
; Address            : 0x21C254 - 0x21C29C
; =========================================================

21C254:  PUSH            {R4-R7,LR}
21C256:  ADD             R7, SP, #0xC
21C258:  PUSH.W          {R11}
21C25C:  MOV             R4, R1
21C25E:  LDR             R1, =(aQjk+6 - 0x21C268); "(" ...
21C260:  LDR             R6, =(sub_216F98+1 - 0x21C26E)
21C262:  MOV             R5, R0
21C264:  ADD             R1, PC; "("
21C266:  MOV             R0, R4
21C268:  ADDS            R2, R1, #1
21C26A:  ADD             R6, PC; sub_216F98
21C26C:  BLX             R6; sub_216F98
21C26E:  LDR             R0, [R5,#8]
21C270:  MOV             R1, R4
21C272:  BL              sub_2154CC
21C276:  LDR             R1, =(asc_905D3 - 0x21C27E); ")[" ...
21C278:  MOV             R0, R4
21C27A:  ADD             R1, PC; ")["
21C27C:  ADDS            R2, R1, #2
21C27E:  BLX             R6; sub_216F98
21C280:  LDR             R0, [R5,#0xC]
21C282:  MOV             R1, R4
21C284:  BL              sub_2154CC
21C288:  LDR             R1, =(unk_8919A - 0x21C292)
21C28A:  MOV             R0, R4
21C28C:  MOV             R3, R6
21C28E:  ADD             R1, PC; unk_8919A
21C290:  ADDS            R2, R1, #1
21C292:  POP.W           {R11}
21C296:  POP.W           {R4-R7,LR}
21C29A:  BX              R3; sub_216F98
