; =========================================================
; Game Engine Function: FreeHrtfs
; Address            : 0x26185C - 0x26189A
; =========================================================

26185C:  PUSH            {R4,R5,R7,LR}
26185E:  ADD             R7, SP, #8
261860:  LDR             R0, =(dword_6D6848 - 0x261866)
261862:  ADD             R0, PC; dword_6D6848
261864:  LDR             R4, [R0]
261866:  CMP             R4, #0
261868:  IT EQ
26186A:  POPEQ           {R4,R5,R7,PC}
26186C:  LDR             R5, =(dword_6D6848 - 0x261872)
26186E:  ADD             R5, PC; dword_6D6848
261870:  LDR             R0, [R4,#0x1C]
261872:  STR             R0, [R5]
261874:  LDR             R0, [R4,#0xC]; p
261876:  BLX             free
26187A:  LDR             R0, [R4,#0x10]; p
26187C:  BLX             free
261880:  LDR             R0, [R4,#0x14]; p
261882:  BLX             free
261886:  LDR             R0, [R4,#0x18]; p
261888:  BLX             free
26188C:  MOV             R0, R4; p
26188E:  BLX             free
261892:  LDR             R4, [R5]
261894:  CMP             R4, #0
261896:  BNE             loc_261870
261898:  POP             {R4,R5,R7,PC}
