; =========================================================
; Game Engine Function: sub_17CA90
; Address            : 0x17CA90 - 0x17CAEE
; =========================================================

17CA90:  PUSH            {R4-R7,LR}
17CA92:  ADD             R7, SP, #0xC
17CA94:  PUSH.W          {R11}
17CA98:  MOV             R5, R1
17CA9A:  MOV             R6, R0
17CA9C:  BL              sub_17C080
17CAA0:  CBZ             R0, loc_17CAD2
17CAA2:  LDR             R1, [R6]
17CAA4:  MOV             R3, R5
17CAA6:  LDR             R2, [R6,#0x48]
17CAA8:  MOV             R4, R0
17CAAA:  BL              sub_17C1B8
17CAAE:  LDR             R0, [R4]
17CAB0:  LDR.W           R1, [R0,#0x390]
17CAB4:  MOV             R0, R4
17CAB6:  BLX             R1
17CAB8:  CBZ             R0, loc_17CAE8
17CABA:  LDR             R0, [R4]
17CABC:  LDR             R1, [R0,#0x40]
17CABE:  MOV             R0, R4
17CAC0:  BLX             R1
17CAC2:  LDR             R0, [R4]
17CAC4:  LDR             R1, [R0,#0x44]
17CAC6:  MOV             R0, R4
17CAC8:  POP.W           {R11}
17CACC:  POP.W           {R4-R7,LR}
17CAD0:  BX              R1
17CAD2:  LDR             R1, =(aAxl - 0x17CADC); "AXL" ...
17CAD4:  MOVS            R0, #6
17CAD6:  LDR             R2, =(aEnvNotLoadedSe_6 - 0x17CADE); "Env not loaded (SetAutocompleteState)" ...
17CAD8:  ADD             R1, PC; "AXL"
17CADA:  ADD             R2, PC; "Env not loaded (SetAutocompleteState)"
17CADC:  POP.W           {R11}
17CAE0:  POP.W           {R4-R7,LR}
17CAE4:  B.W             sub_2242C8
17CAE8:  POP.W           {R11}
17CAEC:  POP             {R4-R7,PC}
