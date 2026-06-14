; =========================================================
; Game Engine Function: sub_96058
; Address            : 0x96058 - 0x9616E
; =========================================================

96058:  PUSH            {R4-R7,LR}
9605A:  ADD             R7, SP, #0xC
9605C:  PUSH.W          {R8-R11}
96060:  SUB             SP, SP, #0x1C
96062:  MOV             R9, R1
96064:  LDR             R1, =(__stack_chk_guard_ptr - 0x9606A)
96066:  ADD             R1, PC; __stack_chk_guard_ptr
96068:  LDR             R1, [R1]; __stack_chk_guard
9606A:  LDR             R1, [R1]
9606C:  STR             R1, [SP,#0x38+var_20]
9606E:  MOV             R1, #0x606432
96076:  LSRS            R1, R0
96078:  LSLS            R1, R1, #0x1F
9607A:  BEQ             loc_96154
9607C:  LDR             R2, =(dword_1ACF68 - 0x9608C)
9607E:  ADD.W           R3, R0, R0,LSL#1
96082:  LDR             R1, =(unk_536AC - 0x96092)
96084:  MOVW            R5, #0x1A84
96088:  ADD             R2, PC; dword_1ACF68
9608A:  MOVW            R6, #0x1518
9608E:  ADD             R1, PC; unk_536AC
96090:  ADD.W           R1, R1, R3,LSL#2
96094:  MOV             R11, R2
96096:  LDR             R2, [R2]
96098:  LDR             R3, [R1,#8]
9609A:  ADD             R3, R2
9609C:  LDR             R1, [R2,R5]
9609E:  ADD             R5, R2
960A0:  LDR             R4, [R3,R6]
960A2:  ADD.W           R10, R3, R6
960A6:  LDR             R6, [R5,#4]
960A8:  LDR.W           R3, [R10,#4]
960AC:  CMP             R1, R6
960AE:  STR             R3, [SP,#0x38+var_28]
960B0:  STRD.W          R0, R4, [SP,#0x38+var_30]
960B4:  BNE             loc_96130
960B6:  CMP             R1, #0
960B8:  ADD.W           R4, R1, #1
960BC:  ITTE NE
960BE:  ADDNE.W         R0, R1, R1,LSR#31
960C2:  ADDNE.W         R0, R1, R0,ASR#1
960C6:  MOVEQ           R0, #8
960C8:  CMP             R0, R4
960CA:  IT GT
960CC:  MOVGT           R4, R0
960CE:  CMP             R1, R4
960D0:  BGE             loc_96130
960D2:  LDR             R0, =(off_117248 - 0x960DA)
960D4:  LDR             R1, =(dword_1ACF70 - 0x960E0)
960D6:  ADD             R0, PC; off_117248
960D8:  LDR.W           R3, [R2,#0x370]
960DC:  ADD             R1, PC; dword_1ACF70
960DE:  STR             R1, [SP,#0x38+var_34]
960E0:  LDR             R6, [R0]; sub_9A720
960E2:  ADDS            R0, R3, #1
960E4:  STR.W           R0, [R2,#0x370]
960E8:  ADD.W           R0, R4, R4,LSL#1
960EC:  LDR             R1, [R1]
960EE:  LSLS            R0, R0, #2
960F0:  BLX             R6; sub_9A720
960F2:  LDR             R1, [R5,#8]; src
960F4:  MOV             R8, R0
960F6:  CBZ             R1, loc_9612A
960F8:  LDR             R0, [R5]
960FA:  ADD.W           R0, R0, R0,LSL#1
960FE:  LSLS            R2, R0, #2; n
96100:  MOV             R0, R8; dest
96102:  BLX             j_memcpy
96106:  LDR             R0, [R5,#8]
96108:  CMP             R0, #0
9610A:  ITTTT NE
9610C:  LDRNE.W         R1, [R11]
96110:  CMPNE           R1, #0
96112:  LDRNE.W         R2, [R1,#0x370]
96116:  SUBNE           R2, #1
96118:  IT NE
9611A:  STRNE.W         R2, [R1,#0x370]
9611E:  LDR             R2, =(off_11724C - 0x96126)
96120:  LDR             R1, [SP,#0x38+var_34]
96122:  ADD             R2, PC; off_11724C
96124:  LDR             R1, [R1]
96126:  LDR             R2, [R2]; j_opus_decoder_destroy_0
96128:  BLX             R2; j_opus_decoder_destroy_0
9612A:  LDR             R1, [R5]
9612C:  STRD.W          R4, R8, [R5,#4]
96130:  LDR             R2, [R5,#8]
96132:  ADD.W           R1, R1, R1,LSL#1
96136:  VLDR            D16, [SP,#0x38+var_30]
9613A:  ADD.W           R1, R2, R1,LSL#2
9613E:  LDR             R0, [SP,#0x38+var_28]
96140:  VST1.8          {D16}, [R1]
96144:  STR             R0, [R1,#8]
96146:  LDR             R0, [R5]
96148:  ADDS            R0, #1
9614A:  STR             R0, [R5]
9614C:  LDRD.W          R0, R1, [R9]
96150:  STRD.W          R0, R1, [R10]
96154:  LDR             R0, [SP,#0x38+var_20]
96156:  LDR             R1, =(__stack_chk_guard_ptr - 0x9615C)
96158:  ADD             R1, PC; __stack_chk_guard_ptr
9615A:  LDR             R1, [R1]; __stack_chk_guard
9615C:  LDR             R1, [R1]
9615E:  CMP             R1, R0
96160:  ITTT EQ
96162:  ADDEQ           SP, SP, #0x1C
96164:  POPEQ.W         {R8-R11}
96168:  POPEQ           {R4-R7,PC}
9616A:  BLX             __stack_chk_fail
