; =========================================================
; Game Engine Function: sub_127C98
; Address            : 0x127C98 - 0x127CD8
; =========================================================

127C98:  PUSH            {R7,LR}
127C9A:  MOV             R7, SP
127C9C:  LDR             R0, =(byte_3140C8 - 0x127CA2)
127C9E:  ADD             R0, PC; byte_3140C8
127CA0:  LDRB            R0, [R0]
127CA2:  DMB.W           ISH
127CA6:  LSLS            R0, R0, #0x1F
127CA8:  IT NE
127CAA:  POPNE           {R7,PC}
127CAC:  LDR             R0, =(byte_3140C8 - 0x127CB2)
127CAE:  ADD             R0, PC; byte_3140C8 ; __guard *
127CB0:  BLX             j___cxa_guard_acquire
127CB4:  CBZ             R0, locret_127CD6
127CB6:  LDR             R1, =(unk_3140B0 - 0x127CC2)
127CB8:  MOVS            R3, #0
127CBA:  LDR             R0, =(sub_123AD0+1 - 0x127CC4)
127CBC:  LDR             R2, =(off_22A540 - 0x127CC6)
127CBE:  ADD             R1, PC; unk_3140B0 ; obj
127CC0:  ADD             R0, PC; sub_123AD0 ; lpfunc
127CC2:  ADD             R2, PC; off_22A540 ; lpdso_handle
127CC4:  STR             R3, [R1,#(dword_3140C0 - 0x3140B0)]
127CC6:  BLX             __cxa_atexit
127CCA:  LDR             R0, =(byte_3140C8 - 0x127CD0)
127CCC:  ADD             R0, PC; byte_3140C8
127CCE:  POP.W           {R7,LR}
127CD2:  B.W             sub_2242B0
127CD6:  POP             {R7,PC}
