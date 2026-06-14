; =========================================================
; Game Engine Function: _ZN18CWidgetRaceResults14SetWidgetInfo2EiiiiPcS0_
; Address            : 0x2BF140 - 0x2BF1BE
; =========================================================

2BF140:  PUSH            {R4-R7,LR}
2BF142:  ADD             R7, SP, #0xC
2BF144:  PUSH.W          {R8-R11}
2BF148:  SUB             SP, SP, #0x114
2BF14A:  MOV             R4, R0
2BF14C:  LDR             R0, =(__stack_chk_guard_ptr - 0x2BF156)
2BF14E:  MOV             R6, R1
2BF150:  MOV             R8, R3
2BF152:  ADD             R0, PC; __stack_chk_guard_ptr
2BF154:  MOV             R9, R2
2BF156:  CMP             R6, #4
2BF158:  LDR             R0, [R0]; __stack_chk_guard
2BF15A:  LDR             R0, [R0]
2BF15C:  STR             R0, [SP,#0x130+var_20]
2BF15E:  BHI             loc_2BF1A4
2BF160:  LDR             R5, =(byte_61CD7E - 0x2BF16E)
2BF162:  MOV             R10, SP
2BF164:  LDRD.W          R1, R11, [R7,#arg_4]
2BF168:  MOV             R0, R10; char *
2BF16A:  ADD             R5, PC; byte_61CD7E
2BF16C:  CMP             R1, #0
2BF16E:  IT EQ
2BF170:  MOVEQ           R1, R5; char *
2BF172:  BLX             strcpy
2BF176:  CMP.W           R11, #0
2BF17A:  ADD.W           R0, R10, #0x80; char *
2BF17E:  IT NE
2BF180:  MOVNE           R5, R11
2BF182:  MOV             R1, R5; char *
2BF184:  BLX             strcpy
2BF188:  MOV.W           R0, #0x10C
2BF18C:  LDR             R1, [R7,#arg_0]
2BF18E:  MLA.W           R0, R6, R0, R4
2BF192:  STRD.W          R9, R8, [SP,#0x130+var_30]
2BF196:  STR             R1, [SP,#0x130+var_28]
2BF198:  MOV             R1, R10; void *
2BF19A:  MOV.W           R2, #0x10C; size_t
2BF19E:  ADDS            R0, #0x90; void *
2BF1A0:  BLX             memcpy_0
2BF1A4:  LDR             R0, =(__stack_chk_guard_ptr - 0x2BF1AC)
2BF1A6:  LDR             R1, [SP,#0x130+var_20]
2BF1A8:  ADD             R0, PC; __stack_chk_guard_ptr
2BF1AA:  LDR             R0, [R0]; __stack_chk_guard
2BF1AC:  LDR             R0, [R0]
2BF1AE:  SUBS            R0, R0, R1
2BF1B0:  ITTT EQ
2BF1B2:  ADDEQ           SP, SP, #0x114
2BF1B4:  POPEQ.W         {R8-R11}
2BF1B8:  POPEQ           {R4-R7,PC}
2BF1BA:  BLX             __stack_chk_fail
