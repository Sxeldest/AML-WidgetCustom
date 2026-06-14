; =========================================================
; Game Engine Function: sub_17C948
; Address            : 0x17C948 - 0x17C9A6
; =========================================================

17C948:  PUSH            {R4-R7,LR}
17C94A:  ADD             R7, SP, #0xC
17C94C:  PUSH.W          {R11}
17C950:  MOV             R5, R1
17C952:  MOV             R6, R0
17C954:  BL              sub_17C080
17C958:  CBZ             R0, loc_17C98A
17C95A:  LDR             R1, [R6]
17C95C:  MOV             R3, R5
17C95E:  LDR             R2, [R6,#0x3C]
17C960:  MOV             R4, R0
17C962:  BL              sub_17C1B8
17C966:  LDR             R0, [R4]
17C968:  LDR.W           R1, [R0,#0x390]
17C96C:  MOV             R0, R4
17C96E:  BLX             R1
17C970:  CBZ             R0, loc_17C9A0
17C972:  LDR             R0, [R4]
17C974:  LDR             R1, [R0,#0x40]
17C976:  MOV             R0, R4
17C978:  BLX             R1
17C97A:  LDR             R0, [R4]
17C97C:  LDR             R1, [R0,#0x44]
17C97E:  MOV             R0, R4
17C980:  POP.W           {R11}
17C984:  POP.W           {R4-R7,LR}
17C988:  BX              R1
17C98A:  LDR             R1, =(aAxl - 0x17C994); "AXL" ...
17C98C:  MOVS            R0, #6
17C98E:  LDR             R2, =(aEnvNotLoadedSe_3 - 0x17C996); "Env not loaded (Settings_SetChatPageSiz"... ...
17C990:  ADD             R1, PC; "AXL"
17C992:  ADD             R2, PC; "Env not loaded (Settings_SetChatPageSiz"...
17C994:  POP.W           {R11}
17C998:  POP.W           {R4-R7,LR}
17C99C:  B.W             sub_2242C8
17C9A0:  POP.W           {R11}
17C9A4:  POP             {R4-R7,PC}
