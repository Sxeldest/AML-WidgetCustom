; =========================================================
; Game Engine Function: sub_11ABD0
; Address            : 0x11ABD0 - 0x11AC10
; =========================================================

11ABD0:  PUSH            {R7,LR}
11ABD2:  MOV             R7, SP
11ABD4:  LDR             R0, =(byte_263588 - 0x11ABDA)
11ABD6:  ADD             R0, PC; byte_263588
11ABD8:  LDRB            R0, [R0]
11ABDA:  DMB.W           ISH
11ABDE:  LSLS            R0, R0, #0x1F
11ABE0:  IT NE
11ABE2:  POPNE           {R7,PC}
11ABE4:  LDR             R0, =(byte_263588 - 0x11ABEA)
11ABE6:  ADD             R0, PC; byte_263588 ; __guard *
11ABE8:  BLX             j___cxa_guard_acquire
11ABEC:  CBZ             R0, locret_11AC0E
11ABEE:  LDR             R1, =(unk_263570 - 0x11ABFA)
11ABF0:  MOVS            R3, #0
11ABF2:  LDR             R0, =(sub_10CC6C+1 - 0x11ABFC)
11ABF4:  LDR             R2, =(off_22A540 - 0x11ABFE)
11ABF6:  ADD             R1, PC; unk_263570 ; obj
11ABF8:  ADD             R0, PC; sub_10CC6C ; lpfunc
11ABFA:  ADD             R2, PC; off_22A540 ; lpdso_handle
11ABFC:  STR             R3, [R1,#(dword_263580 - 0x263570)]
11ABFE:  BLX             __cxa_atexit
11AC02:  LDR             R0, =(byte_263588 - 0x11AC08)
11AC04:  ADD             R0, PC; byte_263588
11AC06:  POP.W           {R7,LR}
11AC0A:  B.W             sub_2242B0
11AC0E:  POP             {R7,PC}
