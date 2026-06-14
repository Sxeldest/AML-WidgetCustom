; =========================================================
; Game Engine Function: sub_13D204
; Address            : 0x13D204 - 0x13D230
; =========================================================

13D204:  PUSH            {R4,R6,R7,LR}
13D206:  ADD             R7, SP, #8
13D208:  MOV             R4, R0
13D20A:  LDR             R0, =(off_2349A8 - 0x13D212)
13D20C:  MOVS            R1, #1
13D20E:  ADD             R0, PC; off_2349A8
13D210:  LDR             R0, [R0]; dword_381BF4
13D212:  LDR             R0, [R0]
13D214:  BL              sub_17C1DA
13D218:  CBNZ            R0, locret_13D22E
13D21A:  LDR             R0, =(off_234A24 - 0x13D226)
13D21C:  ADD.W           R2, R4, #0x58 ; 'X'
13D220:  MOV             R1, R4
13D222:  ADD             R0, PC; off_234A24
13D224:  LDR             R0, [R0]; dword_23DEEC
13D226:  LDR             R0, [R0]
13D228:  LDR             R0, [R0,#0x58]
13D22A:  BL              sub_12F718
13D22E:  POP             {R4,R6,R7,PC}
