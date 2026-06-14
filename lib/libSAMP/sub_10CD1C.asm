; =========================================================
; Game Engine Function: sub_10CD1C
; Address            : 0x10CD1C - 0x10CD5C
; =========================================================

10CD1C:  PUSH            {R7,LR}
10CD1E:  MOV             R7, SP
10CD20:  LDR             R0, =(byte_263220 - 0x10CD26)
10CD22:  ADD             R0, PC; byte_263220
10CD24:  LDRB            R0, [R0]
10CD26:  DMB.W           ISH
10CD2A:  LSLS            R0, R0, #0x1F
10CD2C:  IT NE
10CD2E:  POPNE           {R7,PC}
10CD30:  LDR             R0, =(byte_263220 - 0x10CD36)
10CD32:  ADD             R0, PC; byte_263220 ; __guard *
10CD34:  BLX             j___cxa_guard_acquire
10CD38:  CBZ             R0, locret_10CD5A
10CD3A:  LDR             R1, =(unk_263208 - 0x10CD46)
10CD3C:  MOVS            R3, #0
10CD3E:  LDR             R0, =(sub_10CC6C+1 - 0x10CD48)
10CD40:  LDR             R2, =(off_22A540 - 0x10CD4A)
10CD42:  ADD             R1, PC; unk_263208 ; obj
10CD44:  ADD             R0, PC; sub_10CC6C ; lpfunc
10CD46:  ADD             R2, PC; off_22A540 ; lpdso_handle
10CD48:  STR             R3, [R1,#(dword_263218 - 0x263208)]
10CD4A:  BLX             __cxa_atexit
10CD4E:  LDR             R0, =(byte_263220 - 0x10CD54)
10CD50:  ADD             R0, PC; byte_263220
10CD52:  POP.W           {R7,LR}
10CD56:  B.W             sub_2242B0
10CD5A:  POP             {R7,PC}
