; =========================================================
; Game Engine Function: sub_11B0AC
; Address            : 0x11B0AC - 0x11B0EC
; =========================================================

11B0AC:  PUSH            {R7,LR}
11B0AE:  MOV             R7, SP
11B0B0:  LDR             R0, =(byte_263608 - 0x11B0B6)
11B0B2:  ADD             R0, PC; byte_263608
11B0B4:  LDRB            R0, [R0]
11B0B6:  DMB.W           ISH
11B0BA:  LSLS            R0, R0, #0x1F
11B0BC:  IT NE
11B0BE:  POPNE           {R7,PC}
11B0C0:  LDR             R0, =(byte_263608 - 0x11B0C6)
11B0C2:  ADD             R0, PC; byte_263608 ; __guard *
11B0C4:  BLX             j___cxa_guard_acquire
11B0C8:  CBZ             R0, locret_11B0EA
11B0CA:  LDR             R1, =(unk_2635F0 - 0x11B0D6)
11B0CC:  MOVS            R3, #0
11B0CE:  LDR             R0, =(sub_11A7A8+1 - 0x11B0D8)
11B0D0:  LDR             R2, =(off_22A540 - 0x11B0DA)
11B0D2:  ADD             R1, PC; unk_2635F0 ; obj
11B0D4:  ADD             R0, PC; sub_11A7A8 ; lpfunc
11B0D6:  ADD             R2, PC; off_22A540 ; lpdso_handle
11B0D8:  STR             R3, [R1,#(dword_263600 - 0x2635F0)]
11B0DA:  BLX             __cxa_atexit
11B0DE:  LDR             R0, =(byte_263608 - 0x11B0E4)
11B0E0:  ADD             R0, PC; byte_263608
11B0E2:  POP.W           {R7,LR}
11B0E6:  B.W             sub_2242B0
11B0EA:  POP             {R7,PC}
