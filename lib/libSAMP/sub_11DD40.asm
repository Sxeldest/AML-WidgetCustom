; =========================================================
; Game Engine Function: sub_11DD40
; Address            : 0x11DD40 - 0x11DD80
; =========================================================

11DD40:  PUSH            {R7,LR}
11DD42:  MOV             R7, SP
11DD44:  LDR             R0, =(byte_2637F8 - 0x11DD4A)
11DD46:  ADD             R0, PC; byte_2637F8
11DD48:  LDRB            R0, [R0]
11DD4A:  DMB.W           ISH
11DD4E:  LSLS            R0, R0, #0x1F
11DD50:  IT NE
11DD52:  POPNE           {R7,PC}
11DD54:  LDR             R0, =(byte_2637F8 - 0x11DD5A)
11DD56:  ADD             R0, PC; byte_2637F8 ; __guard *
11DD58:  BLX             j___cxa_guard_acquire
11DD5C:  CBZ             R0, locret_11DD7E
11DD5E:  LDR             R1, =(unk_2637E0 - 0x11DD6A)
11DD60:  MOVS            R3, #0
11DD62:  LDR             R0, =(sub_11DC64+1 - 0x11DD6C)
11DD64:  LDR             R2, =(off_22A540 - 0x11DD6E)
11DD66:  ADD             R1, PC; unk_2637E0 ; obj
11DD68:  ADD             R0, PC; sub_11DC64 ; lpfunc
11DD6A:  ADD             R2, PC; off_22A540 ; lpdso_handle
11DD6C:  STR             R3, [R1,#(dword_2637F0 - 0x2637E0)]
11DD6E:  BLX             __cxa_atexit
11DD72:  LDR             R0, =(byte_2637F8 - 0x11DD78)
11DD74:  ADD             R0, PC; byte_2637F8
11DD76:  POP.W           {R7,LR}
11DD7A:  B.W             sub_2242B0
11DD7E:  POP             {R7,PC}
