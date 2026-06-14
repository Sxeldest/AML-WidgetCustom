; =========================================================
; Game Engine Function: sub_129220
; Address            : 0x129220 - 0x1292F6
; =========================================================

129220:  PUSH            {R4-R7,LR}
129222:  ADD             R7, SP, #0xC
129224:  PUSH.W          {R8-R11}
129228:  SUB             SP, SP, #4
12922A:  VPUSH           {D8}
12922E:  SUB             SP, SP, #0x10
129230:  LDR.W           R4, [R0,#0x1F4]
129234:  MOV             R6, R0
129236:  MOVW            R0, #0x12BB
12923A:  MOV             R10, R1
12923C:  MOVW            R1, #0x3E5D
129240:  LDR.W           R11, [R7,#arg_4]
129244:  LDRH            R5, [R4,#0x26]
129246:  VLDR            S16, [R7,#arg_0]
12924A:  SUBS            R0, R5, R0
12924C:  SUBS            R1, R5, R1
12924E:  CLZ.W           R0, R0
129252:  CLZ.W           R1, R1
129256:  LSRS            R0, R0, #5
129258:  LSRS            R1, R1, #5
12925A:  ORRS            R0, R1
12925C:  BEQ             loc_1292D0
12925E:  MOV             R0, R5
129260:  STRD.W          R2, R3, [SP,#0x38+var_30]
129264:  BL              sub_129074
129268:  LDR             R1, =(unk_B3CB4 - 0x129272)
12926A:  EOR.W           R0, R0, #2
12926E:  ADD             R1, PC; unk_B3CB4
129270:  LDRH.W          R0, [R1,R0,LSL#1]
129274:  STRH            R0, [R4,#0x26]
129276:  BL              sub_163768
12927A:  LDRH            R1, [R4,#0x26]
12927C:  LDR.W           R9, [R0,R1,LSL#2]
129280:  BL              sub_163768
129284:  LDR.W           R8, [R0,R5,LSL#2]
129288:  BL              sub_163768
12928C:  LDRH            R1, [R4,#0x26]
12928E:  LDR             R2, =(off_31413C - 0x129294)
129290:  ADD             R2, PC; off_31413C
129292:  STR.W           R8, [R0,R1,LSL#2]
129296:  MOV             R0, R6
129298:  LDR.W           R12, [R2]
12929C:  MOV             R1, R10
12929E:  STR.W           R11, [SP,#0x38+var_34]
1292A2:  VSTR            S16, [SP,#0x38+var_38]
1292A6:  LDRD.W          R2, R3, [SP,#0x38+var_30]
1292AA:  BLX             R12
1292AC:  MOV             R6, R0
1292AE:  CMP.W           R9, #0
1292B2:  BEQ             loc_1292BE
1292B4:  BL              sub_163768
1292B8:  LDRH            R1, [R4,#0x26]
1292BA:  STR.W           R9, [R0,R1,LSL#2]
1292BE:  STRH            R5, [R4,#0x26]
1292C0:  MOV             R0, R6
1292C2:  ADD             SP, SP, #0x10
1292C4:  VPOP            {D8}
1292C8:  ADD             SP, SP, #4
1292CA:  POP.W           {R8-R11}
1292CE:  POP             {R4-R7,PC}
1292D0:  LDR             R0, =(off_31413C - 0x1292DC)
1292D2:  MOV             R1, R10
1292D4:  VSTR            S16, [R7,#arg_0]
1292D8:  ADD             R0, PC; off_31413C
1292DA:  STR.W           R11, [R7,#arg_4]
1292DE:  LDR.W           R12, [R0]
1292E2:  MOV             R0, R6
1292E4:  ADD             SP, SP, #0x10
1292E6:  VPOP            {D8}
1292EA:  ADD             SP, SP, #4
1292EC:  POP.W           {R8-R11}
1292F0:  POP.W           {R4-R7,LR}
1292F4:  BX              R12
