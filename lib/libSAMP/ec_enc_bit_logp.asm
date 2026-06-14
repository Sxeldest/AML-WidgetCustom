; =========================================================
; Game Engine Function: ec_enc_bit_logp
; Address            : 0x1951A8 - 0x19527C
; =========================================================

1951A8:  PUSH            {R4-R7,LR}
1951AA:  ADD             R7, SP, #0xC
1951AC:  PUSH.W          {R8}
1951B0:  LDR             R5, [R0,#0x1C]
1951B2:  CMP             R1, #0
1951B4:  LSR.W           R3, R5, R2
1951B8:  SUB.W           R2, R5, R3
1951BC:  ITTT NE
1951BE:  LDRNE           R5, [R0,#0x20]
1951C0:  ADDNE           R5, R5, R2
1951C2:  STRNE           R5, [R0,#0x20]
1951C4:  CMP             R1, #0
1951C6:  IT NE
1951C8:  MOVNE           R2, R3
1951CA:  CMP.W           R2, #0x800000
1951CE:  STR             R2, [R0,#0x1C]
1951D0:  BHI             loc_195276
1951D2:  LDR             R1, [R0,#0x20]
1951D4:  MOVW            R12, #1
1951D8:  MOVW            R8, #0xFF00
1951DC:  MOVT            R12, #0x80
1951E0:  MOV.W           LR, #0xFF
1951E4:  MOVT            R8, #0x7FFF
1951E8:  CMP.W           LR, R1,LSR#23
1951EC:  BNE             loc_1951F6
1951EE:  LDR             R3, [R0,#0x24]
1951F0:  ADDS            R3, #1
1951F2:  STR             R3, [R0,#0x24]
1951F4:  B               loc_195260
1951F6:  LDR             R2, [R0,#0x28]
1951F8:  LSRS            R5, R1, #0x1F
1951FA:  CMP             R2, #0
1951FC:  BLT             loc_195222
1951FE:  LDRD.W          R6, R3, [R0,#4]
195202:  LDR             R4, [R0,#0x18]
195204:  ADD             R3, R4
195206:  CMP             R3, R6
195208:  BCS             loc_195218
19520A:  LDR             R3, [R0]
19520C:  ADD             R2, R5
19520E:  ADDS            R6, R4, #1
195210:  STR             R6, [R0,#0x18]
195212:  STRB            R2, [R3,R4]
195214:  MOVS            R2, #0
195216:  B               loc_19521C
195218:  MOV.W           R2, #0xFFFFFFFF
19521C:  LDR             R3, [R0,#0x2C]
19521E:  ORRS            R2, R3
195220:  STR             R2, [R0,#0x2C]
195222:  LDR             R2, [R0,#0x24]
195224:  LSRS            R4, R1, #0x17
195226:  CBZ             R2, loc_195258
195228:  ADD.W           R1, R5, #0xFF
19522C:  LDRD.W          R3, R6, [R0,#4]
195230:  LDR             R5, [R0,#0x18]
195232:  ADD             R6, R5
195234:  CMP             R6, R3
195236:  BCS             loc_195246
195238:  LDR             R2, [R0]
19523A:  ADDS            R3, R5, #1
19523C:  STR             R3, [R0,#0x18]
19523E:  STRB            R1, [R2,R5]
195240:  MOVS            R5, #0
195242:  LDR             R2, [R0,#0x24]
195244:  B               loc_19524A
195246:  MOV.W           R5, #0xFFFFFFFF
19524A:  LDR             R3, [R0,#0x2C]
19524C:  SUBS            R2, #1
19524E:  STR             R2, [R0,#0x24]
195250:  ORR.W           R3, R3, R5
195254:  STR             R3, [R0,#0x2C]
195256:  BNE             loc_19522C
195258:  UXTB            R3, R4
19525A:  LDRD.W          R2, R1, [R0,#0x1C]
19525E:  STR             R3, [R0,#0x28]
195260:  LDR             R3, [R0,#0x14]
195262:  AND.W           R1, R8, R1,LSL#8
195266:  LSLS            R2, R2, #8
195268:  CMP             R2, R12
19526A:  STRD.W          R2, R1, [R0,#0x1C]
19526E:  ADD.W           R3, R3, #8
195272:  STR             R3, [R0,#0x14]
195274:  BCC             loc_1951E8
195276:  POP.W           {R8}
19527A:  POP             {R4-R7,PC}
