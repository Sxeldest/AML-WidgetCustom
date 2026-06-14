; =========================================================
; Game Engine Function: sub_146248
; Address            : 0x146248 - 0x14629A
; =========================================================

146248:  PUSH            {R7,LR}
14624A:  MOV             R7, SP
14624C:  SUB             SP, SP, #0x118
14624E:  LDRD.W          R1, R0, [R0]; src
146252:  MOVS            R3, #0
146254:  ASRS            R2, R0, #0x1F
146256:  ADD.W           R0, R0, R2,LSR#29
14625A:  MOVS            R2, #1
14625C:  ADD.W           R2, R2, R0,ASR#3; size
146260:  ADD             R0, SP, #0x120+var_11C; int
146262:  BL              sub_17D4F2
146266:  LDR             R0, [SP,#0x120+var_11C]
146268:  LDR             R1, [SP,#0x120+var_114]
14626A:  CMP             R1, R0
14626C:  BGE             loc_146282
14626E:  LDR             R0, [SP,#0x120+var_110]
146270:  ASRS            R2, R1, #3
146272:  LDRB            R0, [R0,R2]
146274:  ADDS            R2, R1, #1
146276:  AND.W           R1, R1, #7
14627A:  STR             R2, [SP,#0x120+var_114]
14627C:  LSLS            R0, R1
14627E:  UXTB            R0, R0
146280:  LSRS            R0, R0, #7
146282:  LDR             R1, =(off_23496C - 0x146288)
146284:  ADD             R1, PC; off_23496C
146286:  LDR             R1, [R1]; dword_23DEF4
146288:  LDR             R1, [R1]
14628A:  CBZ             R1, loc_146290
14628C:  STRB.W          R0, [R1,#0x209]
146290:  ADD             R0, SP, #0x120+var_11C
146292:  BL              sub_17D542
146296:  ADD             SP, SP, #0x118
146298:  POP             {R7,PC}
