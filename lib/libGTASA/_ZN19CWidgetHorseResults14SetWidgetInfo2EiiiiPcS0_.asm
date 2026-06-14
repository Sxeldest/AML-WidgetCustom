; =========================================================
; Game Engine Function: _ZN19CWidgetHorseResults14SetWidgetInfo2EiiiiPcS0_
; Address            : 0x2B8FD0 - 0x2B904E
; =========================================================

2B8FD0:  PUSH            {R4-R7,LR}
2B8FD2:  ADD             R7, SP, #0xC
2B8FD4:  PUSH.W          {R8-R11}
2B8FD8:  SUB             SP, SP, #0x114
2B8FDA:  MOV             R4, R0
2B8FDC:  LDR             R0, =(__stack_chk_guard_ptr - 0x2B8FE6)
2B8FDE:  MOV             R6, R1
2B8FE0:  MOV             R8, R3
2B8FE2:  ADD             R0, PC; __stack_chk_guard_ptr
2B8FE4:  MOV             R9, R2
2B8FE6:  CMP             R6, #6
2B8FE8:  LDR             R0, [R0]; __stack_chk_guard
2B8FEA:  LDR             R0, [R0]
2B8FEC:  STR             R0, [SP,#0x130+var_20]
2B8FEE:  BHI             loc_2B9034
2B8FF0:  LDR             R5, =(byte_61CD7E - 0x2B8FFE)
2B8FF2:  MOV             R10, SP
2B8FF4:  LDRD.W          R1, R11, [R7,#arg_4]
2B8FF8:  MOV             R0, R10; char *
2B8FFA:  ADD             R5, PC; byte_61CD7E
2B8FFC:  CMP             R1, #0
2B8FFE:  IT EQ
2B9000:  MOVEQ           R1, R5; char *
2B9002:  BLX             strcpy
2B9006:  CMP.W           R11, #0
2B900A:  ADD.W           R0, R10, #0x80; char *
2B900E:  IT NE
2B9010:  MOVNE           R5, R11
2B9012:  MOV             R1, R5; char *
2B9014:  BLX             strcpy
2B9018:  MOV.W           R0, #0x10C
2B901C:  LDR             R1, [R7,#arg_0]
2B901E:  MLA.W           R0, R6, R0, R4
2B9022:  STRD.W          R9, R8, [SP,#0x130+var_30]
2B9026:  STR             R1, [SP,#0x130+var_28]
2B9028:  MOV             R1, R10; void *
2B902A:  MOV.W           R2, #0x10C; size_t
2B902E:  ADDS            R0, #0x90; void *
2B9030:  BLX             memcpy_0
2B9034:  LDR             R0, =(__stack_chk_guard_ptr - 0x2B903C)
2B9036:  LDR             R1, [SP,#0x130+var_20]
2B9038:  ADD             R0, PC; __stack_chk_guard_ptr
2B903A:  LDR             R0, [R0]; __stack_chk_guard
2B903C:  LDR             R0, [R0]
2B903E:  SUBS            R0, R0, R1
2B9040:  ITTT EQ
2B9042:  ADDEQ           SP, SP, #0x114
2B9044:  POPEQ.W         {R8-R11}
2B9048:  POPEQ           {R4-R7,PC}
2B904A:  BLX             __stack_chk_fail
