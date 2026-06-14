; =========================================================
; Game Engine Function: sub_84F78
; Address            : 0x84F78 - 0x85064
; =========================================================

84F78:  PUSH            {R4-R7,LR}
84F7A:  ADD             R7, SP, #0xC
84F7C:  PUSH.W          {R8-R10}
84F80:  SUB             SP, SP, #0x10
84F82:  MOV             R8, R0
84F84:  LDR             R0, =(__stack_chk_guard_ptr - 0x84F8E)
84F86:  MOV             R4, R3
84F88:  MOV             R6, R2
84F8A:  ADD             R0, PC; __stack_chk_guard_ptr
84F8C:  MOV             R10, R1
84F8E:  LDR             R0, [R0]; __stack_chk_guard
84F90:  LDR             R0, [R0]
84F92:  STR             R0, [SP,#0x28+var_1C]
84F94:  MOVS            R0, #0x20 ; ' '; unsigned int
84F96:  BLX             j__Znwj; operator new(uint)
84F9A:  MOV             R9, R0
84F9C:  LDRD.W          R3, R0, [R7,#arg_0]
84FA0:  STR             R0, [SP,#0x28+var_28]
84FA2:  MOV             R0, R9
84FA4:  MOV             R1, R6
84FA6:  MOV             R2, R4
84FA8:  BL              sub_7DD96
84FAC:  MOV             R6, R8
84FAE:  STR.W           R9, [SP,#0x28+var_20]
84FB2:  LDR.W           R5, [R6,#0x50]!
84FB6:  CBZ             R5, loc_84FDA
84FB8:  ADD.W           R6, R8, #0x50 ; 'P'
84FBC:  B               loc_84FC6
84FBE:  LDR             R0, [R5]
84FC0:  CBZ             R0, loc_84FDE
84FC2:  MOV             R6, R5
84FC4:  MOV             R5, R0
84FC6:  LDR             R0, [R5,#0x10]
84FC8:  CMP             R0, R10
84FCA:  BHI             loc_84FBE
84FCC:  BCS             loc_84FE0
84FCE:  MOV             R6, R5
84FD0:  LDR.W           R0, [R6,#4]!
84FD4:  CBZ             R0, loc_84FE0
84FD6:  MOV             R5, R6
84FD8:  B               loc_84FC2
84FDA:  MOV             R5, R6
84FDC:  B               loc_84FE0
84FDE:  MOV             R6, R5
84FE0:  LDR             R4, [R6]
84FE2:  CBNZ            R4, loc_85024
84FE4:  MOVS            R0, #0x18; unsigned int
84FE6:  BLX             j__Znwj; operator new(uint)
84FEA:  MOV             R4, R0
84FEC:  MOVS            R0, #0
84FEE:  STR             R0, [R4,#0x14]
84FF0:  STRD.W          R0, R0, [R4]
84FF4:  STR             R5, [R4,#8]
84FF6:  STR             R4, [R6]
84FF8:  LDR.W           R0, [R8,#0x4C]
84FFC:  STR.W           R10, [R4,#0x10]
85000:  LDR             R0, [R0]
85002:  CMP             R0, #0
85004:  ITTE NE
85006:  STRNE.W         R0, [R8,#0x4C]
8500A:  LDRNE           R1, [R6]
8500C:  MOVEQ           R1, R4
8500E:  LDR.W           R0, [R8,#0x50]
85012:  BL              sub_77D8A
85016:  LDR.W           R9, [SP,#0x28+var_20]
8501A:  LDR.W           R0, [R8,#0x54]
8501E:  ADDS            R0, #1
85020:  STR.W           R0, [R8,#0x54]
85024:  LDR             R0, [R4,#0x14]
85026:  STR.W           R9, [R4,#0x14]
8502A:  CBZ             R0, loc_85034
8502C:  BL              sub_7DE3C
85030:  BLX             j__ZdlPv; operator delete(void *)
85034:  LDRD.W          R5, R6, [R8,#0x1C]
85038:  CMP             R5, R6
8503A:  BEQ             loc_8504A
8503C:  LDR.W           R1, [R5],#4
85040:  LDR             R0, [R4,#0x14]
85042:  BL              sub_7DED0
85046:  CMP             R5, R6
85048:  BNE             loc_8503C
8504A:  LDR             R0, [SP,#0x28+var_1C]
8504C:  LDR             R1, =(__stack_chk_guard_ptr - 0x85052)
8504E:  ADD             R1, PC; __stack_chk_guard_ptr
85050:  LDR             R1, [R1]; __stack_chk_guard
85052:  LDR             R1, [R1]
85054:  CMP             R1, R0
85056:  ITTT EQ
85058:  ADDEQ           SP, SP, #0x10
8505A:  POPEQ.W         {R8-R10}
8505E:  POPEQ           {R4-R7,PC}
85060:  BLX             __stack_chk_fail
