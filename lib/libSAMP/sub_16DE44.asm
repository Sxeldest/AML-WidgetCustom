; =========================================================
; Game Engine Function: sub_16DE44
; Address            : 0x16DE44 - 0x16DE7E
; =========================================================

16DE44:  PUSH            {R4,R6,R7,LR}
16DE46:  ADD             R7, SP, #8
16DE48:  LDR             R0, =(dword_381B58 - 0x16DE52)
16DE4A:  MOVW            R1, #0x19AC
16DE4E:  ADD             R0, PC; dword_381B58
16DE50:  LDR             R0, [R0]
16DE52:  LDR             R4, [R0,R1]
16DE54:  MOVS            R1, #1
16DE56:  LDR.W           R0, [R4,#0x27C]
16DE5A:  STRB.W          R1, [R4,#0x7C]
16DE5E:  BL              sub_172D44
16DE62:  LDR.W           R0, [R4,#0x27C]
16DE66:  LDR             R1, [R0,#0x40]
16DE68:  LDR             R0, [R0,#0x48]
16DE6A:  ADD.W           R0, R0, R1,LSL#4
16DE6E:  SUBS            R0, #0x10
16DE70:  VLD1.32         {D16-D17}, [R0]
16DE74:  ADD.W           R0, R4, #0x1D0
16DE78:  VST1.32         {D16-D17}, [R0]
16DE7C:  POP             {R4,R6,R7,PC}
