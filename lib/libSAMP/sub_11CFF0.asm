; =========================================================
; Game Engine Function: sub_11CFF0
; Address            : 0x11CFF0 - 0x11D030
; =========================================================

11CFF0:  PUSH            {R7,LR}
11CFF2:  MOV             R7, SP
11CFF4:  LDR             R0, =(byte_2637A8 - 0x11CFFA)
11CFF6:  ADD             R0, PC; byte_2637A8
11CFF8:  LDRB            R0, [R0]
11CFFA:  DMB.W           ISH
11CFFE:  LSLS            R0, R0, #0x1F
11D000:  IT NE
11D002:  POPNE           {R7,PC}
11D004:  LDR             R0, =(byte_2637A8 - 0x11D00A)
11D006:  ADD             R0, PC; byte_2637A8 ; __guard *
11D008:  BLX             j___cxa_guard_acquire
11D00C:  CBZ             R0, locret_11D02E
11D00E:  LDR             R1, =(unk_263790 - 0x11D01A)
11D010:  MOVS            R3, #0
11D012:  LDR             R0, =(sub_11CF1C+1 - 0x11D01C)
11D014:  LDR             R2, =(off_22A540 - 0x11D01E)
11D016:  ADD             R1, PC; unk_263790 ; obj
11D018:  ADD             R0, PC; sub_11CF1C ; lpfunc
11D01A:  ADD             R2, PC; off_22A540 ; lpdso_handle
11D01C:  STR             R3, [R1,#(dword_2637A0 - 0x263790)]
11D01E:  BLX             __cxa_atexit
11D022:  LDR             R0, =(byte_2637A8 - 0x11D028)
11D024:  ADD             R0, PC; byte_2637A8
11D026:  POP.W           {R7,LR}
11D02A:  B.W             sub_2242B0
11D02E:  POP             {R7,PC}
