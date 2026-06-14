; =========================================================
; Game Engine Function: opus_encoder_create
; Address            : 0xC5208 - 0xC52DE
; =========================================================

C5208:  PUSH            {R4-R7,LR}
C520A:  ADD             R7, SP, #0xC
C520C:  PUSH.W          {R8,R9,R11}
C5210:  SUB             SP, SP, #8
C5212:  MOV             R5, R0
C5214:  LDR             R0, =(__stack_chk_guard_ptr - 0xC521E)
C5216:  MOV             R4, R3
C5218:  MOV             R8, R2
C521A:  ADD             R0, PC; __stack_chk_guard_ptr
C521C:  MOV             R9, R1
C521E:  CMP.W           R5, #0x3E80
C5222:  LDR             R0, [R0]; __stack_chk_guard
C5224:  LDR             R0, [R0]
C5226:  STR             R0, [SP,#0x20+var_1C]
C5228:  BLT             loc_C523E
C522A:  ITT NE
C522C:  MOVWNE          R0, #0xBB80
C5230:  CMPNE           R5, R0
C5232:  BEQ             loc_C524C
C5234:  MOVW            R0, #0x5DC0
C5238:  CMP             R5, R0
C523A:  BEQ             loc_C524C
C523C:  B               loc_C525C
C523E:  CMP.W           R5, #0x1F40
C5242:  BEQ             loc_C524C
C5244:  MOVW            R0, #0x2EE0
C5248:  CMP             R5, R0
C524A:  BNE             loc_C525C
C524C:  SUB.W           R0, R9, #1
C5250:  CMP             R0, #1
C5252:  ITT LS
C5254:  SUBLS.W         R0, R8, #0x800
C5258:  CMPLS           R0, #3
C525A:  BLS             loc_C5284
C525C:  CMP             R4, #0
C525E:  ITT NE
C5260:  MOVNE.W         R0, #0xFFFFFFFF
C5264:  STRNE           R0, [R4]
C5266:  MOVS            R6, #0
C5268:  LDR             R0, =(__stack_chk_guard_ptr - 0xC5270)
C526A:  LDR             R1, [SP,#0x20+var_1C]
C526C:  ADD             R0, PC; __stack_chk_guard_ptr
C526E:  LDR             R0, [R0]; __stack_chk_guard
C5270:  LDR             R0, [R0]
C5272:  SUBS            R0, R0, R1
C5274:  ITTTT EQ
C5276:  MOVEQ           R0, R6
C5278:  ADDEQ           SP, SP, #8
C527A:  POPEQ.W         {R8,R9,R11}
C527E:  POPEQ           {R4-R7,PC}
C5280:  BLX             __stack_chk_fail
C5284:  CMP             R0, #2
C5286:  BEQ             loc_C525C
C5288:  MOV             R0, SP
C528A:  BLX             j_silk_Get_Encoder_Size
C528E:  CBZ             R0, loc_C5294
C5290:  MOVS            R0, #0
C5292:  B               loc_C52AC
C5294:  LDR             R0, [SP,#0x20+var_20]
C5296:  ADDS            R0, #3
C5298:  BIC.W           R0, R0, #3
C529C:  STR             R0, [SP,#0x20+var_20]
C529E:  MOV             R0, R9
C52A0:  BLX             j_celt_encoder_get_size
C52A4:  LDR             R1, [SP,#0x20+var_20]
C52A6:  ADD             R0, R1
C52A8:  ADDW            R0, R0, #0x898; size
C52AC:  BLX             malloc
C52B0:  MOV             R6, R0
C52B2:  CBZ             R6, loc_C52D2
C52B4:  MOV             R0, R6
C52B6:  MOV             R1, R5
C52B8:  MOV             R2, R9
C52BA:  MOV             R3, R8
C52BC:  BLX             j_opus_encoder_init
C52C0:  CMP             R4, #0
C52C2:  IT NE
C52C4:  STRNE           R0, [R4]
C52C6:  CMP             R0, #0
C52C8:  BEQ             loc_C5268
C52CA:  MOV             R0, R6; ptr
C52CC:  BLX             free
C52D0:  B               loc_C5266
C52D2:  CMP             R4, #0
C52D4:  ITT NE
C52D6:  MOVNE           R0, #0xFFFFFFF9
C52DA:  STRNE           R0, [R4]
C52DC:  B               loc_C5266
