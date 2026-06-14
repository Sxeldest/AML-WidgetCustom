; =========================================================
; Game Engine Function: sub_10FA1C
; Address            : 0x10FA1C - 0x10FA5C
; =========================================================

10FA1C:  PUSH            {R7,LR}
10FA1E:  MOV             R7, SP
10FA20:  LDR             R0, =(byte_263300 - 0x10FA26)
10FA22:  ADD             R0, PC; byte_263300
10FA24:  LDRB            R0, [R0]
10FA26:  DMB.W           ISH
10FA2A:  LSLS            R0, R0, #0x1F
10FA2C:  IT NE
10FA2E:  POPNE           {R7,PC}
10FA30:  LDR             R0, =(byte_263300 - 0x10FA36)
10FA32:  ADD             R0, PC; byte_263300 ; __guard *
10FA34:  BLX             j___cxa_guard_acquire
10FA38:  CBZ             R0, locret_10FA5A
10FA3A:  LDR             R1, =(unk_2632E8 - 0x10FA46)
10FA3C:  MOVS            R3, #0
10FA3E:  LDR             R0, =(sub_10F688+1 - 0x10FA48)
10FA40:  LDR             R2, =(off_22A540 - 0x10FA4A)
10FA42:  ADD             R1, PC; unk_2632E8 ; obj
10FA44:  ADD             R0, PC; sub_10F688 ; lpfunc
10FA46:  ADD             R2, PC; off_22A540 ; lpdso_handle
10FA48:  STR             R3, [R1,#(dword_2632F8 - 0x2632E8)]
10FA4A:  BLX             __cxa_atexit
10FA4E:  LDR             R0, =(byte_263300 - 0x10FA54)
10FA50:  ADD             R0, PC; byte_263300
10FA52:  POP.W           {R7,LR}
10FA56:  B.W             sub_2242B0
10FA5A:  POP             {R7,PC}
