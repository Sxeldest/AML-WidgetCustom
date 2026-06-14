; =========================================================
; Game Engine Function: sub_120BB0
; Address            : 0x120BB0 - 0x120BF0
; =========================================================

120BB0:  PUSH            {R7,LR}
120BB2:  MOV             R7, SP
120BB4:  LDR             R0, =(byte_263930 - 0x120BBA)
120BB6:  ADD             R0, PC; byte_263930
120BB8:  LDRB            R0, [R0]
120BBA:  DMB.W           ISH
120BBE:  LSLS            R0, R0, #0x1F
120BC0:  IT NE
120BC2:  POPNE           {R7,PC}
120BC4:  LDR             R0, =(byte_263930 - 0x120BCA)
120BC6:  ADD             R0, PC; byte_263930 ; __guard *
120BC8:  BLX             j___cxa_guard_acquire
120BCC:  CBZ             R0, locret_120BEE
120BCE:  LDR             R1, =(unk_263918 - 0x120BDA)
120BD0:  MOVS            R3, #0
120BD2:  LDR             R0, =(sub_120AC0+1 - 0x120BDC)
120BD4:  LDR             R2, =(off_22A540 - 0x120BDE)
120BD6:  ADD             R1, PC; unk_263918 ; obj
120BD8:  ADD             R0, PC; sub_120AC0 ; lpfunc
120BDA:  ADD             R2, PC; off_22A540 ; lpdso_handle
120BDC:  STR             R3, [R1,#(dword_263928 - 0x263918)]
120BDE:  BLX             __cxa_atexit
120BE2:  LDR             R0, =(byte_263930 - 0x120BE8)
120BE4:  ADD             R0, PC; byte_263930
120BE6:  POP.W           {R7,LR}
120BEA:  B.W             sub_2242B0
120BEE:  POP             {R7,PC}
