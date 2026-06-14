; =========================================================
; Game Engine Function: sub_17C604
; Address            : 0x17C604 - 0x17C662
; =========================================================

17C604:  PUSH            {R4-R7,LR}
17C606:  ADD             R7, SP, #0xC
17C608:  PUSH.W          {R11}
17C60C:  MOV             R5, R1
17C60E:  MOV             R6, R0
17C610:  BL              sub_17C080
17C614:  CBZ             R0, loc_17C646
17C616:  LDR             R1, [R6]
17C618:  MOV             R3, R5
17C61A:  LDR             R2, [R6,#0x1C]
17C61C:  MOV             R4, R0
17C61E:  BL              sub_17C1B8
17C622:  LDR             R0, [R4]
17C624:  LDR.W           R1, [R0,#0x390]
17C628:  MOV             R0, R4
17C62A:  BLX             R1
17C62C:  CBZ             R0, loc_17C65C
17C62E:  LDR             R0, [R4]
17C630:  LDR             R1, [R0,#0x40]
17C632:  MOV             R0, R4
17C634:  BLX             R1
17C636:  LDR             R0, [R4]
17C638:  LDR             R1, [R0,#0x44]
17C63A:  MOV             R0, R4
17C63C:  POP.W           {R11}
17C640:  POP.W           {R4-R7,LR}
17C644:  BX              R1
17C646:  LDR             R1, =(aAxl - 0x17C650); "AXL" ...
17C648:  MOVS            R0, #4
17C64A:  LDR             R2, =(aEnvNotLoadedDe - 0x17C652); "Env not loaded (DestroyDialog)" ...
17C64C:  ADD             R1, PC; "AXL"
17C64E:  ADD             R2, PC; "Env not loaded (DestroyDialog)"
17C650:  POP.W           {R11}
17C654:  POP.W           {R4-R7,LR}
17C658:  B.W             sub_2242C8
17C65C:  POP.W           {R11}
17C660:  POP             {R4-R7,PC}
