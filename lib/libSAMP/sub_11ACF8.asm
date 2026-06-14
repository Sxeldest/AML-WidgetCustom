; =========================================================
; Game Engine Function: sub_11ACF8
; Address            : 0x11ACF8 - 0x11AD38
; =========================================================

11ACF8:  PUSH            {R7,LR}
11ACFA:  MOV             R7, SP
11ACFC:  LDR             R0, =(byte_2635A8 - 0x11AD02)
11ACFE:  ADD             R0, PC; byte_2635A8
11AD00:  LDRB            R0, [R0]
11AD02:  DMB.W           ISH
11AD06:  LSLS            R0, R0, #0x1F
11AD08:  IT NE
11AD0A:  POPNE           {R7,PC}
11AD0C:  LDR             R0, =(byte_2635A8 - 0x11AD12)
11AD0E:  ADD             R0, PC; byte_2635A8 ; __guard *
11AD10:  BLX             j___cxa_guard_acquire
11AD14:  CBZ             R0, locret_11AD36
11AD16:  LDR             R1, =(unk_263590 - 0x11AD22)
11AD18:  MOVS            R3, #0
11AD1A:  LDR             R0, =(sub_11A788+1 - 0x11AD24)
11AD1C:  LDR             R2, =(off_22A540 - 0x11AD26)
11AD1E:  ADD             R1, PC; unk_263590 ; obj
11AD20:  ADD             R0, PC; sub_11A788 ; lpfunc
11AD22:  ADD             R2, PC; off_22A540 ; lpdso_handle
11AD24:  STR             R3, [R1,#(dword_2635A0 - 0x263590)]
11AD26:  BLX             __cxa_atexit
11AD2A:  LDR             R0, =(byte_2635A8 - 0x11AD30)
11AD2C:  ADD             R0, PC; byte_2635A8
11AD2E:  POP.W           {R7,LR}
11AD32:  B.W             sub_2242B0
11AD36:  POP             {R7,PC}
