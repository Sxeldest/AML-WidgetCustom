; =========================================================
; Game Engine Function: sub_17C814
; Address            : 0x17C814 - 0x17C85E
; =========================================================

17C814:  PUSH            {R4,R5,R7,LR}
17C816:  ADD             R7, SP, #8
17C818:  MOV             R5, R0
17C81A:  BL              sub_17C080
17C81E:  CBZ             R0, loc_17C84A
17C820:  LDR             R1, [R5]
17C822:  MOV             R4, R0
17C824:  LDR             R2, [R5,#0x24]
17C826:  BL              sub_17C1B8
17C82A:  LDR             R0, [R4]
17C82C:  LDR.W           R1, [R0,#0x390]
17C830:  MOV             R0, R4
17C832:  BLX             R1
17C834:  CBZ             R0, locret_17C85C
17C836:  LDR             R0, [R4]
17C838:  LDR             R1, [R0,#0x40]
17C83A:  MOV             R0, R4
17C83C:  BLX             R1
17C83E:  LDR             R0, [R4]
17C840:  LDR             R1, [R0,#0x44]
17C842:  MOV             R0, R4
17C844:  POP.W           {R4,R5,R7,LR}
17C848:  BX              R1
17C84A:  LDR             R1, =(aAxl - 0x17C854); "AXL" ...
17C84C:  MOVS            R0, #4
17C84E:  LDR             R2, =(aEnvNotLoadedRe - 0x17C856); "Env not loaded (removeAllSlidersFormPla"... ...
17C850:  ADD             R1, PC; "AXL"
17C852:  ADD             R2, PC; "Env not loaded (removeAllSlidersFormPla"...
17C854:  POP.W           {R4,R5,R7,LR}
17C858:  B.W             sub_2242C8
17C85C:  POP             {R4,R5,R7,PC}
