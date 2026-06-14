; =========================================================
; Game Engine Function: sub_115AC4
; Address            : 0x115AC4 - 0x115B04
; =========================================================

115AC4:  PUSH            {R7,LR}
115AC6:  MOV             R7, SP
115AC8:  LDR             R0, =(byte_2634F0 - 0x115ACE)
115ACA:  ADD             R0, PC; byte_2634F0
115ACC:  LDRB            R0, [R0]
115ACE:  DMB.W           ISH
115AD2:  LSLS            R0, R0, #0x1F
115AD4:  IT NE
115AD6:  POPNE           {R7,PC}
115AD8:  LDR             R0, =(byte_2634F0 - 0x115ADE)
115ADA:  ADD             R0, PC; byte_2634F0 ; __guard *
115ADC:  BLX             j___cxa_guard_acquire
115AE0:  CBZ             R0, locret_115B02
115AE2:  LDR             R1, =(unk_2634D8 - 0x115AEE)
115AE4:  MOVS            R3, #0
115AE6:  LDR             R0, =(sub_115348+1 - 0x115AF0)
115AE8:  LDR             R2, =(off_22A540 - 0x115AF2)
115AEA:  ADD             R1, PC; unk_2634D8 ; obj
115AEC:  ADD             R0, PC; sub_115348 ; lpfunc
115AEE:  ADD             R2, PC; off_22A540 ; lpdso_handle
115AF0:  STR             R3, [R1,#(dword_2634E8 - 0x2634D8)]
115AF2:  BLX             __cxa_atexit
115AF6:  LDR             R0, =(byte_2634F0 - 0x115AFC)
115AF8:  ADD             R0, PC; byte_2634F0
115AFA:  POP.W           {R7,LR}
115AFE:  B.W             sub_2242B0
115B02:  POP             {R7,PC}
