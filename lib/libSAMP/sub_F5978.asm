; =========================================================
; Game Engine Function: sub_F5978
; Address            : 0xF5978 - 0xF59B8
; =========================================================

F5978:  PUSH            {R7,LR}
F597A:  MOV             R7, SP
F597C:  LDR             R0, =(byte_2400B8 - 0xF5982)
F597E:  ADD             R0, PC; byte_2400B8
F5980:  LDRB            R0, [R0]
F5982:  DMB.W           ISH
F5986:  LSLS            R0, R0, #0x1F
F5988:  IT NE
F598A:  POPNE           {R7,PC}
F598C:  LDR             R0, =(byte_2400B8 - 0xF5992)
F598E:  ADD             R0, PC; byte_2400B8 ; __guard *
F5990:  BLX             j___cxa_guard_acquire
F5994:  CBZ             R0, locret_F59B6
F5996:  LDR             R1, =(unk_2400A0 - 0xF59A2)
F5998:  MOVS            R3, #0
F599A:  LDR             R0, =(sub_F4B9C+1 - 0xF59A4)
F599C:  LDR             R2, =(off_22A540 - 0xF59A6)
F599E:  ADD             R1, PC; unk_2400A0 ; obj
F59A0:  ADD             R0, PC; sub_F4B9C ; lpfunc
F59A2:  ADD             R2, PC; off_22A540 ; lpdso_handle
F59A4:  STR             R3, [R1,#(dword_2400B0 - 0x2400A0)]
F59A6:  BLX             __cxa_atexit
F59AA:  LDR             R0, =(byte_2400B8 - 0xF59B0)
F59AC:  ADD             R0, PC; byte_2400B8
F59AE:  POP.W           {R7,LR}
F59B2:  B.W             sub_2242B0
F59B6:  POP             {R7,PC}
