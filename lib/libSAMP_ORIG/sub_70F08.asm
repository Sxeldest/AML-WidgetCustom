; =========================================================
; Game Engine Function: sub_70F08
; Address            : 0x70F08 - 0x71056
; =========================================================

70F08:  PUSH            {R4-R7,LR}
70F0A:  ADD             R7, SP, #0xC
70F0C:  PUSH.W          {R8-R10}
70F10:  SUB             SP, SP, #0x10
70F12:  MOV             R6, R0
70F14:  LDR             R0, =(__stack_chk_guard_ptr - 0x70F1E)
70F16:  MOV             R4, R1
70F18:  MOV             R8, R2
70F1A:  ADD             R0, PC; __stack_chk_guard_ptr
70F1C:  LDR             R0, [R0]; __stack_chk_guard
70F1E:  LDR             R0, [R0]
70F20:  STR             R0, [SP,#0x28+var_1C]
70F22:  LDRD.W          R5, R0, [R6,#0x24]
70F26:  SUB.W           R1, R0, R5
70F2A:  CBZ             R3, loc_70F5A
70F2C:  CMP             R1, #0xF
70F2E:  BLE             loc_70FA2
70F30:  LDR             R0, =(unk_50F8C - 0x70F40)
70F32:  VMOV.I32        Q8, #0
70F36:  ADD.W           R1, R5, #0x10
70F3A:  LDR             R2, [R6,#0x10]
70F3C:  ADD             R0, PC; unk_50F8C
70F3E:  STR             R1, [R6,#0x24]
70F40:  VST1.64         {D16-D17}, [R5]
70F44:  CMP             R4, #0
70F46:  ADD             R1, SP, #0x28+var_24
70F48:  STR.W           R8, [SP,#0x28+var_20]
70F4C:  IT NE
70F4E:  MOVNE           R0, R4
70F50:  STR             R0, [SP,#0x28+var_24]
70F52:  MOV             R0, R5; dest
70F54:  BL              sub_71334
70F58:  B               loc_70F86
70F5A:  CMP             R1, #0xF
70F5C:  BLE             loc_70FBA
70F5E:  ADD.W           R1, R5, #0x10
70F62:  LDR             R0, =(unk_50F8C - 0x70F7A)
70F64:  STR             R1, [R6,#0x24]
70F66:  VMOV.I32        Q8, #0
70F6A:  MOVS            R1, #8
70F6C:  MOV             R2, R5
70F6E:  VST1.64         {D16-D17}, [R2],R1
70F72:  MOVW            R1, #0x405
70F76:  ADD             R0, PC; unk_50F8C
70F78:  CMP             R4, #0
70F7A:  STRH            R1, [R5,#0xE]
70F7C:  STR.W           R8, [R5]
70F80:  IT NE
70F82:  MOVNE           R0, R4
70F84:  STR             R0, [R2]
70F86:  LDR             R0, [SP,#0x28+var_1C]
70F88:  LDR             R1, =(__stack_chk_guard_ptr - 0x70F8E)
70F8A:  ADD             R1, PC; __stack_chk_guard_ptr
70F8C:  LDR             R1, [R1]; __stack_chk_guard
70F8E:  LDR             R1, [R1]
70F90:  CMP             R1, R0
70F92:  ITTTT EQ
70F94:  MOVEQ           R0, #1
70F96:  ADDEQ           SP, SP, #0x10
70F98:  POPEQ.W         {R8-R10}
70F9C:  POPEQ           {R4-R7,PC}
70F9E:  BLX             __stack_chk_fail
70FA2:  LDR.W           R9, [R6,#0x20]
70FA6:  CMP.W           R9, #0
70FAA:  BEQ             loc_70FD2
70FAC:  SUB.W           R0, R0, R9
70FB0:  ADDS            R1, R0, #1
70FB2:  ADD.W           R10, R0, R1,LSR#1
70FB6:  MOV             R0, R9
70FB8:  B               loc_70FE6
70FBA:  LDR.W           R9, [R6,#0x20]
70FBE:  CMP.W           R9, #0
70FC2:  BEQ             loc_71002
70FC4:  SUB.W           R0, R0, R9
70FC8:  ADDS            R1, R0, #1
70FCA:  ADD.W           R10, R0, R1,LSR#1
70FCE:  MOV             R0, R9
70FD0:  B               loc_71016
70FD2:  LDR             R0, [R6,#0x18]
70FD4:  CBNZ            R0, loc_70FE0
70FD6:  MOVS            R0, #1; unsigned int
70FD8:  BLX             j__Znwj; operator new(uint)
70FDC:  STRD.W          R0, R0, [R6,#0x18]
70FE0:  LDR.W           R10, [R6,#0x2C]
70FE4:  MOVS            R0, #0
70FE6:  SUBS            R5, R5, R0
70FE8:  ADD.W           R0, R5, #0x10
70FEC:  CMP             R10, R0
70FEE:  IT CC
70FF0:  MOVCC           R10, R0
70FF2:  MOV             R0, R9; ptr
70FF4:  CMP.W           R10, #0
70FF8:  BEQ             loc_71032
70FFA:  MOV             R1, R10; size
70FFC:  BLX             realloc
71000:  B               loc_71038
71002:  LDR             R0, [R6,#0x18]
71004:  CBNZ            R0, loc_71010
71006:  MOVS            R0, #1; unsigned int
71008:  BLX             j__Znwj; operator new(uint)
7100C:  STRD.W          R0, R0, [R6,#0x18]
71010:  LDR.W           R10, [R6,#0x2C]
71014:  MOVS            R0, #0
71016:  SUBS            R5, R5, R0
71018:  ADD.W           R0, R5, #0x10
7101C:  CMP             R10, R0
7101E:  IT CC
71020:  MOVCC           R10, R0
71022:  MOV             R0, R9; ptr
71024:  CMP.W           R10, #0
71028:  BEQ             loc_71044
7102A:  MOV             R1, R10; size
7102C:  BLX             realloc
71030:  B               loc_7104A
71032:  BLX             free
71036:  MOVS            R0, #0
71038:  ADD             R5, R0
7103A:  ADD.W           R1, R0, R10
7103E:  STR             R1, [R6,#0x28]
71040:  STR             R0, [R6,#0x20]
71042:  B               loc_70F30
71044:  BLX             free
71048:  MOVS            R0, #0
7104A:  ADD             R5, R0
7104C:  ADD.W           R1, R0, R10
71050:  STR             R1, [R6,#0x28]
71052:  STR             R0, [R6,#0x20]
71054:  B               loc_70F5E
