; =========================================================
; Game Engine Function: sub_129E70
; Address            : 0x129E70 - 0x129ED6
; =========================================================

129E70:  PUSH            {R4-R7,LR}
129E72:  ADD             R7, SP, #0xC
129E74:  PUSH.W          {R8}
129E78:  MOV             R8, R2
129E7A:  MOV             R5, R1
129E7C:  MOV             R4, R0
129E7E:  BL              sub_12BC78
129E82:  LDR             R0, =(_ZTV2UI - 0x129E8E); `vtable for'UI ...
129E84:  VMOV.I32        Q8, #0
129E88:  MOV             R1, R4
129E8A:  ADD             R0, PC; `vtable for'UI
129E8C:  ADDS            R0, #8
129E8E:  STR.W           R0, [R1],#0x58
129E92:  VST1.32         {D16-D17}, [R1]!
129E96:  VST1.32         {D16-D17}, [R1]!
129E9A:  VST1.32         {D16-D17}, [R1]
129E9E:  MOVS            R0, #0x28 ; '('; unsigned int
129EA0:  BLX             j__Znwj; operator new(uint)
129EA4:  MOV             R6, R0
129EA6:  MOV             R1, R5
129EA8:  MOV             R2, R8
129EAA:  BL              sub_12B30C
129EAE:  STR             R6, [R4,#0x54]
129EB0:  MOV             R0, R5
129EB2:  BL              sub_12B830
129EB6:  LDRD.W          R0, R1, [R5]
129EBA:  ADD.W           R2, R4, #0x14
129EBE:  VMOV            D16, R0, R1
129EC2:  VMOV            D17, D16
129EC6:  VST1.32         {D16-D17}, [R2]!
129ECA:  STRD.W          R0, R1, [R2]
129ECE:  MOV             R0, R4
129ED0:  POP.W           {R8}
129ED4:  POP             {R4-R7,PC}
