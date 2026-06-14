; =========================================================
; Game Engine Function: sub_7CF5C
; Address            : 0x7CF5C - 0x7D002
; =========================================================

7CF5C:  PUSH            {R4-R7,LR}
7CF5E:  ADD             R7, SP, #0xC
7CF60:  PUSH.W          {R8,R9,R11}
7CF64:  SUB             SP, SP, #0x20; float
7CF66:  MOV             R4, R0
7CF68:  LDR             R0, =(__stack_chk_guard_ptr - 0x7CF72)
7CF6A:  MOV             R9, R2
7CF6C:  MOV             R8, R1
7CF6E:  ADD             R0, PC; __stack_chk_guard_ptr
7CF70:  LDR             R0, [R0]; __stack_chk_guard
7CF72:  LDR             R0, [R0]
7CF74:  STR             R0, [SP,#0x38+var_1C]
7CF76:  MOV             R0, R4
7CF78:  BL              sub_7C360
7CF7C:  LDR             R0, =(_ZTV7OButton - 0x7CF8C); `vtable for'OButton ...
7CF7E:  VMOV.I32        Q8, #0
7CF82:  ADD.W           R5, R4, #0x70 ; 'p'
7CF86:  MOVS            R1, #0
7CF88:  ADD             R0, PC; `vtable for'OButton
7CF8A:  STR             R1, [R4,#0x68]
7CF8C:  ADDS            R0, #8
7CF8E:  STR             R0, [R4]
7CF90:  MOV             R0, R5
7CF92:  VST1.64         {D16-D17}, [R0]!
7CF96:  VST1.64         {D16-D17}, [R0]
7CF9A:  MOVS            R0, #0x78 ; 'x'; unsigned int
7CF9C:  BLX             j__Znwj; operator new(uint)
7CFA0:  VMOV.F32        Q8, #1.0
7CFA4:  ADD             R2, SP, #0x38+var_30; int
7CFA6:  MOV             R6, R0
7CFA8:  VMOV            S0, R9
7CFAC:  VST1.64         {D16-D17}, [R2]
7CFB0:  MOV             R1, R8; int
7CFB2:  MOVS            R3, #0; int
7CFB4:  VSTR            S0, [SP,#0x38+var_38]
7CFB8:  BL              sub_7D380
7CFBC:  STR             R6, [R4,#0x54]
7CFBE:  MOV             R0, R4
7CFC0:  MOV             R1, R6
7CFC2:  BL              sub_7C73C
7CFC6:  LDR             R0, =(off_114CA4 - 0x7CFCE)
7CFC8:  LDR             R1, =(off_114CA8 - 0x7CFD0)
7CFCA:  ADD             R0, PC; off_114CA4
7CFCC:  ADD             R1, PC; off_114CA8
7CFCE:  LDR             R0, [R0]; unk_116DA0
7CFD0:  LDR             R1, [R1]; unk_116DB0
7CFD2:  VLD1.32         {D16-D17}, [R0]
7CFD6:  ADD.W           R0, R4, #0x80
7CFDA:  VLD1.32         {D18-D19}, [R1]
7CFDE:  VST1.32         {D16-D17}, [R5]
7CFE2:  VST1.32         {D18-D19}, [R0]
7CFE6:  LDR             R0, [SP,#0x38+var_1C]
7CFE8:  LDR             R1, =(__stack_chk_guard_ptr - 0x7CFEE)
7CFEA:  ADD             R1, PC; __stack_chk_guard_ptr
7CFEC:  LDR             R1, [R1]; __stack_chk_guard
7CFEE:  LDR             R1, [R1]
7CFF0:  CMP             R1, R0
7CFF2:  ITTTT EQ
7CFF4:  MOVEQ           R0, R4
7CFF6:  ADDEQ           SP, SP, #0x20 ; ' '
7CFF8:  POPEQ.W         {R8,R9,R11}
7CFFC:  POPEQ           {R4-R7,PC}
7CFFE:  BLX             __stack_chk_fail
