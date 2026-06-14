; =========================================================
; Game Engine Function: sub_10FAA0
; Address            : 0x10FAA0 - 0x10FAE0
; =========================================================

10FAA0:  PUSH            {R7,LR}
10FAA2:  MOV             R7, SP
10FAA4:  LDR             R0, =(byte_263320 - 0x10FAAA)
10FAA6:  ADD             R0, PC; byte_263320
10FAA8:  LDRB            R0, [R0]
10FAAA:  DMB.W           ISH
10FAAE:  LSLS            R0, R0, #0x1F
10FAB0:  IT NE
10FAB2:  POPNE           {R7,PC}
10FAB4:  LDR             R0, =(byte_263320 - 0x10FABA)
10FAB6:  ADD             R0, PC; byte_263320 ; __guard *
10FAB8:  BLX             j___cxa_guard_acquire
10FABC:  CBZ             R0, locret_10FADE
10FABE:  LDR             R1, =(unk_263308 - 0x10FACA)
10FAC0:  MOVS            R3, #0
10FAC2:  LDR             R0, =(sub_10F688+1 - 0x10FACC)
10FAC4:  LDR             R2, =(off_22A540 - 0x10FACE)
10FAC6:  ADD             R1, PC; unk_263308 ; obj
10FAC8:  ADD             R0, PC; sub_10F688 ; lpfunc
10FACA:  ADD             R2, PC; off_22A540 ; lpdso_handle
10FACC:  STR             R3, [R1,#(dword_263318 - 0x263308)]
10FACE:  BLX             __cxa_atexit
10FAD2:  LDR             R0, =(byte_263320 - 0x10FAD8)
10FAD4:  ADD             R0, PC; byte_263320
10FAD6:  POP.W           {R7,LR}
10FADA:  B.W             sub_2242B0
10FADE:  POP             {R7,PC}
