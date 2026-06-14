; =========================================================
; Game Engine Function: sub_11FE40
; Address            : 0x11FE40 - 0x11FE80
; =========================================================

11FE40:  PUSH            {R7,LR}
11FE42:  MOV             R7, SP
11FE44:  LDR             R0, =(byte_2638C8 - 0x11FE4A)
11FE46:  ADD             R0, PC; byte_2638C8
11FE48:  LDRB            R0, [R0]
11FE4A:  DMB.W           ISH
11FE4E:  LSLS            R0, R0, #0x1F
11FE50:  IT NE
11FE52:  POPNE           {R7,PC}
11FE54:  LDR             R0, =(byte_2638C8 - 0x11FE5A)
11FE56:  ADD             R0, PC; byte_2638C8 ; __guard *
11FE58:  BLX             j___cxa_guard_acquire
11FE5C:  CBZ             R0, locret_11FE7E
11FE5E:  LDR             R1, =(unk_2638B0 - 0x11FE6A)
11FE60:  MOVS            R3, #0
11FE62:  LDR             R0, =(sub_11FD60+1 - 0x11FE6C)
11FE64:  LDR             R2, =(off_22A540 - 0x11FE6E)
11FE66:  ADD             R1, PC; unk_2638B0 ; obj
11FE68:  ADD             R0, PC; sub_11FD60 ; lpfunc
11FE6A:  ADD             R2, PC; off_22A540 ; lpdso_handle
11FE6C:  STR             R3, [R1,#(dword_2638C0 - 0x2638B0)]
11FE6E:  BLX             __cxa_atexit
11FE72:  LDR             R0, =(byte_2638C8 - 0x11FE78)
11FE74:  ADD             R0, PC; byte_2638C8
11FE76:  POP.W           {R7,LR}
11FE7A:  B.W             sub_2242B0
11FE7E:  POP             {R7,PC}
