; =========================================================
; Game Engine Function: sub_10FB24
; Address            : 0x10FB24 - 0x10FB64
; =========================================================

10FB24:  PUSH            {R7,LR}
10FB26:  MOV             R7, SP
10FB28:  LDR             R0, =(byte_263340 - 0x10FB2E)
10FB2A:  ADD             R0, PC; byte_263340
10FB2C:  LDRB            R0, [R0]
10FB2E:  DMB.W           ISH
10FB32:  LSLS            R0, R0, #0x1F
10FB34:  IT NE
10FB36:  POPNE           {R7,PC}
10FB38:  LDR             R0, =(byte_263340 - 0x10FB3E)
10FB3A:  ADD             R0, PC; byte_263340 ; __guard *
10FB3C:  BLX             j___cxa_guard_acquire
10FB40:  CBZ             R0, locret_10FB62
10FB42:  LDR             R1, =(unk_263328 - 0x10FB4E)
10FB44:  MOVS            R3, #0
10FB46:  LDR             R0, =(sub_10F688+1 - 0x10FB50)
10FB48:  LDR             R2, =(off_22A540 - 0x10FB52)
10FB4A:  ADD             R1, PC; unk_263328 ; obj
10FB4C:  ADD             R0, PC; sub_10F688 ; lpfunc
10FB4E:  ADD             R2, PC; off_22A540 ; lpdso_handle
10FB50:  STR             R3, [R1,#(dword_263338 - 0x263328)]
10FB52:  BLX             __cxa_atexit
10FB56:  LDR             R0, =(byte_263340 - 0x10FB5C)
10FB58:  ADD             R0, PC; byte_263340
10FB5A:  POP.W           {R7,LR}
10FB5E:  B.W             sub_2242B0
10FB62:  POP             {R7,PC}
