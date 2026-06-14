; =========================================================
; Game Engine Function: sub_F2E60
; Address            : 0xF2E60 - 0xF2EA0
; =========================================================

F2E60:  PUSH            {R7,LR}
F2E62:  MOV             R7, SP
F2E64:  LDR             R0, =(byte_23FCD0 - 0xF2E6A)
F2E66:  ADD             R0, PC; byte_23FCD0
F2E68:  LDRB            R0, [R0]
F2E6A:  DMB.W           ISH
F2E6E:  LSLS            R0, R0, #0x1F
F2E70:  IT NE
F2E72:  POPNE           {R7,PC}
F2E74:  LDR             R0, =(byte_23FCD0 - 0xF2E7A)
F2E76:  ADD             R0, PC; byte_23FCD0 ; __guard *
F2E78:  BLX             j___cxa_guard_acquire
F2E7C:  CBZ             R0, locret_F2E9E
F2E7E:  LDR             R1, =(unk_23FCB8 - 0xF2E8A)
F2E80:  MOVS            R3, #0
F2E82:  LDR             R0, =(sub_F2960+1 - 0xF2E8C)
F2E84:  LDR             R2, =(off_22A540 - 0xF2E8E)
F2E86:  ADD             R1, PC; unk_23FCB8 ; obj
F2E88:  ADD             R0, PC; sub_F2960 ; lpfunc
F2E8A:  ADD             R2, PC; off_22A540 ; lpdso_handle
F2E8C:  STR             R3, [R1,#(dword_23FCC8 - 0x23FCB8)]
F2E8E:  BLX             __cxa_atexit
F2E92:  LDR             R0, =(byte_23FCD0 - 0xF2E98)
F2E94:  ADD             R0, PC; byte_23FCD0
F2E96:  POP.W           {R7,LR}
F2E9A:  B.W             sub_2242B0
F2E9E:  POP             {R7,PC}
