; =========================================================
; Game Engine Function: sub_11BFB8
; Address            : 0x11BFB8 - 0x11BFF8
; =========================================================

11BFB8:  PUSH            {R7,LR}
11BFBA:  MOV             R7, SP
11BFBC:  LDR             R0, =(byte_263690 - 0x11BFC2)
11BFBE:  ADD             R0, PC; byte_263690
11BFC0:  LDRB            R0, [R0]
11BFC2:  DMB.W           ISH
11BFC6:  LSLS            R0, R0, #0x1F
11BFC8:  IT NE
11BFCA:  POPNE           {R7,PC}
11BFCC:  LDR             R0, =(byte_263690 - 0x11BFD2)
11BFCE:  ADD             R0, PC; byte_263690 ; __guard *
11BFD0:  BLX             j___cxa_guard_acquire
11BFD4:  CBZ             R0, locret_11BFF6
11BFD6:  LDR             R1, =(unk_263678 - 0x11BFE2)
11BFD8:  MOVS            R3, #0
11BFDA:  LDR             R0, =(sub_11BEB8+1 - 0x11BFE4)
11BFDC:  LDR             R2, =(off_22A540 - 0x11BFE6)
11BFDE:  ADD             R1, PC; unk_263678 ; obj
11BFE0:  ADD             R0, PC; sub_11BEB8 ; lpfunc
11BFE2:  ADD             R2, PC; off_22A540 ; lpdso_handle
11BFE4:  STR             R3, [R1,#(dword_263688 - 0x263678)]
11BFE6:  BLX             __cxa_atexit
11BFEA:  LDR             R0, =(byte_263690 - 0x11BFF0)
11BFEC:  ADD             R0, PC; byte_263690
11BFEE:  POP.W           {R7,LR}
11BFF2:  B.W             sub_2242B0
11BFF6:  POP             {R7,PC}
