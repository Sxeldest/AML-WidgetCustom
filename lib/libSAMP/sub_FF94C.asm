; =========================================================
; Game Engine Function: sub_FF94C
; Address            : 0xFF94C - 0xFF990
; =========================================================

FF94C:  PUSH            {R4-R7,LR}
FF94E:  ADD             R7, SP, #0xC
FF950:  PUSH.W          {R11}
FF954:  MOV             R4, R0
FF956:  LDR             R0, =(byte_25B1D0 - 0xFF960)
FF958:  MOVS            R1, #0x1E
FF95A:  MOVS            R5, #0
FF95C:  ADD             R0, PC; byte_25B1D0
FF95E:  MOVW            R6, #0x4E20
FF962:  STRB            R1, [R0]
FF964:  BL              sub_163768
FF968:  LDR.W           R0, [R0,R5,LSL#2]
FF96C:  CMP             R0, R4
FF96E:  BEQ             loc_FF978
FF970:  ADDS            R5, #1
FF972:  CMP             R5, R6
FF974:  BNE             loc_FF964
FF976:  MOVS            R5, #0
FF978:  LDR             R0, =(word_25B1D2 - 0xFF980)
FF97A:  LDR             R1, =(off_25B1E0 - 0xFF982)
FF97C:  ADD             R0, PC; word_25B1D2
FF97E:  ADD             R1, PC; off_25B1E0
FF980:  STRH            R5, [R0]
FF982:  MOV             R0, R4
FF984:  LDR             R1, [R1]
FF986:  POP.W           {R11}
FF98A:  POP.W           {R4-R7,LR}
FF98E:  BX              R1
