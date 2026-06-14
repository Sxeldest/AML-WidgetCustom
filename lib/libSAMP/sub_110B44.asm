; =========================================================
; Game Engine Function: sub_110B44
; Address            : 0x110B44 - 0x110B84
; =========================================================

110B44:  PUSH            {R7,LR}
110B46:  MOV             R7, SP
110B48:  LDR             R0, =(byte_2633F0 - 0x110B4E)
110B4A:  ADD             R0, PC; byte_2633F0
110B4C:  LDRB            R0, [R0]
110B4E:  DMB.W           ISH
110B52:  LSLS            R0, R0, #0x1F
110B54:  IT NE
110B56:  POPNE           {R7,PC}
110B58:  LDR             R0, =(byte_2633F0 - 0x110B5E)
110B5A:  ADD             R0, PC; byte_2633F0 ; __guard *
110B5C:  BLX             j___cxa_guard_acquire
110B60:  CBZ             R0, locret_110B82
110B62:  LDR             R1, =(unk_2633D8 - 0x110B6E)
110B64:  MOVS            R3, #0
110B66:  LDR             R0, =(sub_110A7C+1 - 0x110B70)
110B68:  LDR             R2, =(off_22A540 - 0x110B72)
110B6A:  ADD             R1, PC; unk_2633D8 ; obj
110B6C:  ADD             R0, PC; sub_110A7C ; lpfunc
110B6E:  ADD             R2, PC; off_22A540 ; lpdso_handle
110B70:  STR             R3, [R1,#(dword_2633E8 - 0x2633D8)]
110B72:  BLX             __cxa_atexit
110B76:  LDR             R0, =(byte_2633F0 - 0x110B7C)
110B78:  ADD             R0, PC; byte_2633F0
110B7A:  POP.W           {R7,LR}
110B7E:  B.W             sub_2242B0
110B82:  POP             {R7,PC}
