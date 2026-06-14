; =========================================================
; Game Engine Function: sub_7CCAC
; Address            : 0x7CCAC - 0x7CD52
; =========================================================

7CCAC:  PUSH            {R4-R7,LR}
7CCAE:  ADD             R7, SP, #0xC
7CCB0:  PUSH.W          {R8,R9,R11}
7CCB4:  SUB             SP, SP, #0x20; float
7CCB6:  MOV             R4, R0
7CCB8:  LDR             R0, =(__stack_chk_guard_ptr - 0x7CCC2)
7CCBA:  MOV             R9, R2
7CCBC:  MOV             R8, R1
7CCBE:  ADD             R0, PC; __stack_chk_guard_ptr
7CCC0:  LDR             R0, [R0]; __stack_chk_guard
7CCC2:  LDR             R0, [R0]
7CCC4:  STR             R0, [SP,#0x38+var_1C]
7CCC6:  MOV             R0, R4
7CCC8:  BL              sub_7C360
7CCCC:  LDR             R0, =(_ZTV7CButton - 0x7CCDC); `vtable for'CButton ...
7CCCE:  VMOV.I32        Q8, #0
7CCD2:  ADD.W           R5, R4, #0x70 ; 'p'
7CCD6:  MOVS            R1, #0
7CCD8:  ADD             R0, PC; `vtable for'CButton
7CCDA:  STR             R1, [R4,#0x68]
7CCDC:  ADDS            R0, #8
7CCDE:  STR             R0, [R4]
7CCE0:  MOV             R0, R5
7CCE2:  VST1.64         {D16-D17}, [R0]!
7CCE6:  VST1.64         {D16-D17}, [R0]
7CCEA:  MOVS            R0, #0x78 ; 'x'; unsigned int
7CCEC:  BLX             j__Znwj; operator new(uint)
7CCF0:  VMOV.F32        Q8, #1.0
7CCF4:  ADD             R2, SP, #0x38+var_30; int
7CCF6:  MOV             R6, R0
7CCF8:  VMOV            S0, R9
7CCFC:  VST1.64         {D16-D17}, [R2]
7CD00:  MOV             R1, R8; int
7CD02:  MOVS            R3, #0; int
7CD04:  VSTR            S0, [SP,#0x38+var_38]
7CD08:  BL              sub_7D380
7CD0C:  STR             R6, [R4,#0x54]
7CD0E:  MOV             R0, R4
7CD10:  MOV             R1, R6
7CD12:  BL              sub_7C73C
7CD16:  LDR             R0, =(off_114CA4 - 0x7CD1E)
7CD18:  LDR             R1, =(off_114CA8 - 0x7CD20)
7CD1A:  ADD             R0, PC; off_114CA4
7CD1C:  ADD             R1, PC; off_114CA8
7CD1E:  LDR             R0, [R0]; unk_116DA0
7CD20:  LDR             R1, [R1]; unk_116DB0
7CD22:  VLD1.32         {D16-D17}, [R0]
7CD26:  ADD.W           R0, R4, #0x80
7CD2A:  VLD1.32         {D18-D19}, [R1]
7CD2E:  VST1.32         {D16-D17}, [R5]
7CD32:  VST1.32         {D18-D19}, [R0]
7CD36:  LDR             R0, [SP,#0x38+var_1C]
7CD38:  LDR             R1, =(__stack_chk_guard_ptr - 0x7CD3E)
7CD3A:  ADD             R1, PC; __stack_chk_guard_ptr
7CD3C:  LDR             R1, [R1]; __stack_chk_guard
7CD3E:  LDR             R1, [R1]
7CD40:  CMP             R1, R0
7CD42:  ITTTT EQ
7CD44:  MOVEQ           R0, R4
7CD46:  ADDEQ           SP, SP, #0x20 ; ' '
7CD48:  POPEQ.W         {R8,R9,R11}
7CD4C:  POPEQ           {R4-R7,PC}
7CD4E:  BLX             __stack_chk_fail
