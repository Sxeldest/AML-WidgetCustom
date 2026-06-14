; =========================================================
; Game Engine Function: sub_10FBA8
; Address            : 0x10FBA8 - 0x10FBE8
; =========================================================

10FBA8:  PUSH            {R7,LR}
10FBAA:  MOV             R7, SP
10FBAC:  LDR             R0, =(byte_263360 - 0x10FBB2)
10FBAE:  ADD             R0, PC; byte_263360
10FBB0:  LDRB            R0, [R0]
10FBB2:  DMB.W           ISH
10FBB6:  LSLS            R0, R0, #0x1F
10FBB8:  IT NE
10FBBA:  POPNE           {R7,PC}
10FBBC:  LDR             R0, =(byte_263360 - 0x10FBC2)
10FBBE:  ADD             R0, PC; byte_263360 ; __guard *
10FBC0:  BLX             j___cxa_guard_acquire
10FBC4:  CBZ             R0, locret_10FBE6
10FBC6:  LDR             R1, =(unk_263348 - 0x10FBD2)
10FBC8:  MOVS            R3, #0
10FBCA:  LDR             R0, =(sub_10F688+1 - 0x10FBD4)
10FBCC:  LDR             R2, =(off_22A540 - 0x10FBD6)
10FBCE:  ADD             R1, PC; unk_263348 ; obj
10FBD0:  ADD             R0, PC; sub_10F688 ; lpfunc
10FBD2:  ADD             R2, PC; off_22A540 ; lpdso_handle
10FBD4:  STR             R3, [R1,#(dword_263358 - 0x263348)]
10FBD6:  BLX             __cxa_atexit
10FBDA:  LDR             R0, =(byte_263360 - 0x10FBE0)
10FBDC:  ADD             R0, PC; byte_263360
10FBDE:  POP.W           {R7,LR}
10FBE2:  B.W             sub_2242B0
10FBE6:  POP             {R7,PC}
