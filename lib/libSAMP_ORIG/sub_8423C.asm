; =========================================================
; Game Engine Function: sub_8423C
; Address            : 0x8423C - 0x8427C
; =========================================================

8423C:  PUSH            {R7,LR}
8423E:  MOV             R7, SP
84240:  SUB             SP, SP, #8
84242:  LDR             R2, =(__stack_chk_guard_ptr - 0x84248)
84244:  ADD             R2, PC; __stack_chk_guard_ptr
84246:  LDR             R2, [R2]; __stack_chk_guard
84248:  LDR             R2, [R2]
8424A:  STR             R2, [SP,#0x10+var_C]
8424C:  LSRS            R2, R1, #2
8424E:  CMP             R2, #0xFA
84250:  BHI             loc_84266
84252:  LDR             R2, =(unk_1A6FB0 - 0x8425E)
84254:  STR             R0, [SP,#0x10+var_10]
84256:  ADD.W           R0, R1, R1,LSL#2
8425A:  ADD             R2, PC; unk_1A6FB0
8425C:  ADD.W           R0, R2, R0,LSL#2
84260:  MOV             R1, SP
84262:  BL              sub_84758
84266:  LDR             R0, [SP,#0x10+var_C]
84268:  LDR             R1, =(__stack_chk_guard_ptr - 0x8426E)
8426A:  ADD             R1, PC; __stack_chk_guard_ptr
8426C:  LDR             R1, [R1]; __stack_chk_guard
8426E:  LDR             R1, [R1]
84270:  CMP             R1, R0
84272:  ITT EQ
84274:  ADDEQ           SP, SP, #8
84276:  POPEQ           {R7,PC}
84278:  BLX             __stack_chk_fail
