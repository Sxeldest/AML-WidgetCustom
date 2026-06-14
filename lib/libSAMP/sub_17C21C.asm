; =========================================================
; Game Engine Function: sub_17C21C
; Address            : 0x17C21C - 0x17C266
; =========================================================

17C21C:  PUSH            {R4,R5,R7,LR}
17C21E:  ADD             R7, SP, #8
17C220:  MOV             R5, R0
17C222:  BL              sub_17C080
17C226:  CBZ             R0, loc_17C252
17C228:  LDR             R1, [R5]
17C22A:  MOV             R4, R0
17C22C:  LDR             R2, [R5,#8]
17C22E:  BL              sub_17C1B8
17C232:  LDR             R0, [R4]
17C234:  LDR.W           R1, [R0,#0x390]
17C238:  MOV             R0, R4
17C23A:  BLX             R1
17C23C:  CBZ             R0, locret_17C264
17C23E:  LDR             R0, [R4]
17C240:  LDR             R1, [R0,#0x40]
17C242:  MOV             R0, R4
17C244:  BLX             R1
17C246:  LDR             R0, [R4]
17C248:  LDR             R1, [R0,#0x44]
17C24A:  MOV             R0, R4
17C24C:  POP.W           {R4,R5,R7,LR}
17C250:  BX              R1
17C252:  LDR             R1, =(aAxl - 0x17C25C); "AXL" ...
17C254:  MOVS            R0, #4
17C256:  LDR             R2, =(aEnvNotLoadedSe - 0x17C25E); "Env not loaded. (SetInputLayout)" ...
17C258:  ADD             R1, PC; "AXL"
17C25A:  ADD             R2, PC; "Env not loaded. (SetInputLayout)"
17C25C:  POP.W           {R4,R5,R7,LR}
17C260:  B.W             sub_2242C8
17C264:  POP             {R4,R5,R7,PC}
