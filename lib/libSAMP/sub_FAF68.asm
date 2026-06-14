; =========================================================
; Game Engine Function: sub_FAF68
; Address            : 0xFAF68 - 0xFAFA8
; =========================================================

FAF68:  PUSH            {R7,LR}
FAF6A:  MOV             R7, SP
FAF6C:  LDR             R0, =(byte_247390 - 0xFAF72)
FAF6E:  ADD             R0, PC; byte_247390
FAF70:  LDRB            R0, [R0]
FAF72:  DMB.W           ISH
FAF76:  LSLS            R0, R0, #0x1F
FAF78:  IT NE
FAF7A:  POPNE           {R7,PC}
FAF7C:  LDR             R0, =(byte_247390 - 0xFAF82)
FAF7E:  ADD             R0, PC; byte_247390 ; __guard *
FAF80:  BLX             j___cxa_guard_acquire
FAF84:  CBZ             R0, locret_FAFA6
FAF86:  LDR             R1, =(unk_247378 - 0xFAF92)
FAF88:  MOVS            R3, #0
FAF8A:  LDR             R0, =(sub_FAE00+1 - 0xFAF94)
FAF8C:  LDR             R2, =(off_22A540 - 0xFAF96)
FAF8E:  ADD             R1, PC; unk_247378 ; obj
FAF90:  ADD             R0, PC; sub_FAE00 ; lpfunc
FAF92:  ADD             R2, PC; off_22A540 ; lpdso_handle
FAF94:  STR             R3, [R1,#(dword_247388 - 0x247378)]
FAF96:  BLX             __cxa_atexit
FAF9A:  LDR             R0, =(byte_247390 - 0xFAFA0)
FAF9C:  ADD             R0, PC; byte_247390
FAF9E:  POP.W           {R7,LR}
FAFA2:  B.W             sub_2242B0
FAFA6:  POP             {R7,PC}
