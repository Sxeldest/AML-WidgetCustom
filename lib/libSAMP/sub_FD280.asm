; =========================================================
; Game Engine Function: sub_FD280
; Address            : 0xFD280 - 0xFD2E6
; =========================================================

FD280:  PUSH            {R4,R5,R7,LR}
FD282:  ADD             R7, SP, #8
FD284:  LDR             R0, =(off_23494C - 0xFD294)
FD286:  MOVW            R2, #0xB514
FD28A:  LDR             R1, =(off_234A24 - 0xFD296)
FD28C:  MOVT            R2, #0x96
FD290:  ADD             R0, PC; off_23494C
FD292:  ADD             R1, PC; off_234A24
FD294:  LDR             R0, [R0]; dword_23DF24
FD296:  LDR             R5, [R1]; dword_23DEEC
FD298:  MOVS            R1, #1
FD29A:  LDR             R0, [R0]
FD29C:  STRB            R1, [R0,R2]
FD29E:  LDR             R4, [R5]
FD2A0:  LDRB.W          R0, [R4,#0x50]
FD2A4:  CMP             R0, #0
FD2A6:  MOV             R0, R4
FD2A8:  BEQ             loc_FD2B6
FD2AA:  LDR             R0, [R4]
FD2AC:  MOVS            R1, #0
FD2AE:  LDR             R2, [R0,#0x24]
FD2B0:  MOV             R0, R4
FD2B2:  BLX             R2
FD2B4:  LDR             R0, [R5]
FD2B6:  LDR             R0, [R0,#0x58]
FD2B8:  MOVS            R1, #0
FD2BA:  STRB.W          R1, [R4,#0x50]
FD2BE:  BL              sub_12F5E0
FD2C2:  LDR             R0, =(off_2349A8 - 0xFD2C8)
FD2C4:  ADD             R0, PC; off_2349A8
FD2C6:  LDR             R0, [R0]; dword_381BF4
FD2C8:  LDR             R0, [R0]
FD2CA:  CBZ             R0, loc_FD2D0
FD2CC:  BL              sub_17C270
FD2D0:  LDR             R0, =(off_23496C - 0xFD2D6)
FD2D2:  ADD             R0, PC; off_23496C
FD2D4:  LDR             R0, [R0]; dword_23DEF4
FD2D6:  LDR             R0, [R0]
FD2D8:  CBZ             R0, locret_FD2E4
FD2DA:  MOVS            R1, #1
FD2DC:  POP.W           {R4,R5,R7,LR}
FD2E0:  B.W             sub_1443E8
FD2E4:  POP             {R4,R5,R7,PC}
