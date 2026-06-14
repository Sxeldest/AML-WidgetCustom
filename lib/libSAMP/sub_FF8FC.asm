; =========================================================
; Game Engine Function: sub_FF8FC
; Address            : 0xFF8FC - 0xFF940
; =========================================================

FF8FC:  PUSH            {R4-R7,LR}
FF8FE:  ADD             R7, SP, #0xC
FF900:  PUSH.W          {R11}
FF904:  MOV             R4, R0
FF906:  LDR             R0, =(byte_25B1D0 - 0xFF910)
FF908:  MOVS            R1, #0x14
FF90A:  MOVS            R5, #0
FF90C:  ADD             R0, PC; byte_25B1D0
FF90E:  MOVW            R6, #0x4E20
FF912:  STRB            R1, [R0]
FF914:  BL              sub_163768
FF918:  LDR.W           R0, [R0,R5,LSL#2]
FF91C:  CMP             R0, R4
FF91E:  BEQ             loc_FF928
FF920:  ADDS            R5, #1
FF922:  CMP             R5, R6
FF924:  BNE             loc_FF914
FF926:  MOVS            R5, #0
FF928:  LDR             R0, =(word_25B1D2 - 0xFF930)
FF92A:  LDR             R1, =(off_25B1DC - 0xFF932)
FF92C:  ADD             R0, PC; word_25B1D2
FF92E:  ADD             R1, PC; off_25B1DC
FF930:  STRH            R5, [R0]
FF932:  MOV             R0, R4
FF934:  LDR             R1, [R1]
FF936:  POP.W           {R11}
FF93A:  POP.W           {R4-R7,LR}
FF93E:  BX              R1
