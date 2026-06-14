; =========================================================
; Game Engine Function: sub_123BDC
; Address            : 0x123BDC - 0x123C1C
; =========================================================

123BDC:  PUSH            {R7,LR}
123BDE:  MOV             R7, SP
123BE0:  LDR             R0, =(byte_263BF8 - 0x123BE6)
123BE2:  ADD             R0, PC; byte_263BF8
123BE4:  LDRB            R0, [R0]
123BE6:  DMB.W           ISH
123BEA:  LSLS            R0, R0, #0x1F
123BEC:  IT NE
123BEE:  POPNE           {R7,PC}
123BF0:  LDR             R0, =(byte_263BF8 - 0x123BF6)
123BF2:  ADD             R0, PC; byte_263BF8 ; __guard *
123BF4:  BLX             j___cxa_guard_acquire
123BF8:  CBZ             R0, locret_123C1A
123BFA:  LDR             R1, =(unk_263BE0 - 0x123C06)
123BFC:  MOVS            R3, #0
123BFE:  LDR             R0, =(sub_123AD0+1 - 0x123C08)
123C00:  LDR             R2, =(off_22A540 - 0x123C0A)
123C02:  ADD             R1, PC; unk_263BE0 ; obj
123C04:  ADD             R0, PC; sub_123AD0 ; lpfunc
123C06:  ADD             R2, PC; off_22A540 ; lpdso_handle
123C08:  STR             R3, [R1,#(dword_263BF0 - 0x263BE0)]
123C0A:  BLX             __cxa_atexit
123C0E:  LDR             R0, =(byte_263BF8 - 0x123C14)
123C10:  ADD             R0, PC; byte_263BF8
123C12:  POP.W           {R7,LR}
123C16:  B.W             sub_2242B0
123C1A:  POP             {R7,PC}
