; =========================================================
; Game Engine Function: sub_115D3C
; Address            : 0x115D3C - 0x115D7C
; =========================================================

115D3C:  PUSH            {R7,LR}
115D3E:  MOV             R7, SP
115D40:  LDR             R0, =(byte_263510 - 0x115D46)
115D42:  ADD             R0, PC; byte_263510
115D44:  LDRB            R0, [R0]
115D46:  DMB.W           ISH
115D4A:  LSLS            R0, R0, #0x1F
115D4C:  IT NE
115D4E:  POPNE           {R7,PC}
115D50:  LDR             R0, =(byte_263510 - 0x115D56)
115D52:  ADD             R0, PC; byte_263510 ; __guard *
115D54:  BLX             j___cxa_guard_acquire
115D58:  CBZ             R0, locret_115D7A
115D5A:  LDR             R1, =(unk_2634F8 - 0x115D66)
115D5C:  MOVS            R3, #0
115D5E:  LDR             R0, =(sub_115348+1 - 0x115D68)
115D60:  LDR             R2, =(off_22A540 - 0x115D6A)
115D62:  ADD             R1, PC; unk_2634F8 ; obj
115D64:  ADD             R0, PC; sub_115348 ; lpfunc
115D66:  ADD             R2, PC; off_22A540 ; lpdso_handle
115D68:  STR             R3, [R1,#(dword_263508 - 0x2634F8)]
115D6A:  BLX             __cxa_atexit
115D6E:  LDR             R0, =(byte_263510 - 0x115D74)
115D70:  ADD             R0, PC; byte_263510
115D72:  POP.W           {R7,LR}
115D76:  B.W             sub_2242B0
115D7A:  POP             {R7,PC}
