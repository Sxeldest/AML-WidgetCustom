; =========================================================
; Game Engine Function: sub_11AA44
; Address            : 0x11AA44 - 0x11AA84
; =========================================================

11AA44:  PUSH            {R7,LR}
11AA46:  MOV             R7, SP
11AA48:  LDR             R0, =(byte_263568 - 0x11AA4E)
11AA4A:  ADD             R0, PC; byte_263568
11AA4C:  LDRB            R0, [R0]
11AA4E:  DMB.W           ISH
11AA52:  LSLS            R0, R0, #0x1F
11AA54:  IT NE
11AA56:  POPNE           {R7,PC}
11AA58:  LDR             R0, =(byte_263568 - 0x11AA5E)
11AA5A:  ADD             R0, PC; byte_263568 ; __guard *
11AA5C:  BLX             j___cxa_guard_acquire
11AA60:  CBZ             R0, locret_11AA82
11AA62:  LDR             R1, =(unk_263550 - 0x11AA6E)
11AA64:  MOVS            R3, #0
11AA66:  LDR             R0, =(sub_11A768+1 - 0x11AA70)
11AA68:  LDR             R2, =(off_22A540 - 0x11AA72)
11AA6A:  ADD             R1, PC; unk_263550 ; obj
11AA6C:  ADD             R0, PC; sub_11A768 ; lpfunc
11AA6E:  ADD             R2, PC; off_22A540 ; lpdso_handle
11AA70:  STR             R3, [R1,#(dword_263560 - 0x263550)]
11AA72:  BLX             __cxa_atexit
11AA76:  LDR             R0, =(byte_263568 - 0x11AA7C)
11AA78:  ADD             R0, PC; byte_263568
11AA7A:  POP.W           {R7,LR}
11AA7E:  B.W             sub_2242B0
11AA82:  POP             {R7,PC}
