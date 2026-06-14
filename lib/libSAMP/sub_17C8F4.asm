; =========================================================
; Game Engine Function: sub_17C8F4
; Address            : 0x17C8F4 - 0x17C93E
; =========================================================

17C8F4:  PUSH            {R4,R5,R7,LR}
17C8F6:  ADD             R7, SP, #8
17C8F8:  MOV             R5, R0
17C8FA:  BL              sub_17C080
17C8FE:  CBZ             R0, loc_17C92A
17C900:  LDR             R1, [R5]
17C902:  MOV             R4, R0
17C904:  LDR             R2, [R5,#0x34]
17C906:  BL              sub_17C1B8
17C90A:  LDR             R0, [R4]
17C90C:  LDR.W           R1, [R0,#0x390]
17C910:  MOV             R0, R4
17C912:  BLX             R1
17C914:  CBZ             R0, locret_17C93C
17C916:  LDR             R0, [R4]
17C918:  LDR             R1, [R0,#0x40]
17C91A:  MOV             R0, R4
17C91C:  BLX             R1
17C91E:  LDR             R0, [R4]
17C920:  LDR             R1, [R0,#0x44]
17C922:  MOV             R0, R4
17C924:  POP.W           {R4,R5,R7,LR}
17C928:  BX              R1
17C92A:  LDR             R1, =(aAxl - 0x17C934); "AXL" ...
17C92C:  MOVS            R0, #4
17C92E:  LDR             R2, =(aEnvNotLoadedEx - 0x17C936); "Env not loaded (exitGame)" ...
17C930:  ADD             R1, PC; "AXL"
17C932:  ADD             R2, PC; "Env not loaded (exitGame)"
17C934:  POP.W           {R4,R5,R7,LR}
17C938:  B.W             sub_2242C8
17C93C:  POP             {R4,R5,R7,PC}
