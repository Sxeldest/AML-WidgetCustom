; =========================================================
; Game Engine Function: sub_144204
; Address            : 0x144204 - 0x144270
; =========================================================

144204:  PUSH            {R4-R7,LR}
144206:  ADD             R7, SP, #0xC
144208:  PUSH.W          {R8}
14420C:  SUB             SP, SP, #0x130
14420E:  MOV             R4, R0
144210:  BL              sub_F0B30
144214:  LDR             R5, =(dword_31431C - 0x14421A)
144216:  ADD             R5, PC; dword_31431C
144218:  LDR             R1, [R5]
14421A:  SUBS            R0, R0, R1
14421C:  MOVW            R1, #0xBB9
144220:  CMP             R0, R1
144222:  BCC             loc_144268
144224:  BL              sub_F0B30
144228:  ADD.W           R8, SP, #0x140+var_124
14422C:  STR             R0, [R5]
14422E:  MOV             R0, R8
144230:  BL              sub_17D4A8
144234:  LDR.W           R0, [R4,#0x210]
144238:  LDR             R1, =(off_234C58 - 0x14423E)
14423A:  ADD             R1, PC; off_234C58
14423C:  LDR             R2, [R0]
14423E:  LDR             R1, [R1]; unk_23C78C
144240:  LDR             R4, [R2,#0x6C]
144242:  MOVS            R2, #0
144244:  MOVW            R3, #0xFFFF
144248:  MOV.W           R5, #0xFFFFFFFF
14424C:  MOVS            R6, #8
14424E:  STRD.W          R3, R3, [SP,#0x140+var_130]
144252:  STRD.W          R6, R2, [SP,#0x140+var_140]
144256:  MOVS            R3, #1
144258:  STRD.W          R2, R5, [SP,#0x140+var_138]
14425C:  STR             R2, [SP,#0x140+var_128]
14425E:  MOV             R2, R8
144260:  BLX             R4
144262:  ADD             R0, SP, #0x140+var_124
144264:  BL              sub_17D542
144268:  ADD             SP, SP, #0x130
14426A:  POP.W           {R8}
14426E:  POP             {R4-R7,PC}
