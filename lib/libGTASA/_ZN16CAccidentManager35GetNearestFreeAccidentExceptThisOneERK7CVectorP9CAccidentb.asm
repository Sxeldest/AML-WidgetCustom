; =========================================================
; Game Engine Function: _ZN16CAccidentManager35GetNearestFreeAccidentExceptThisOneERK7CVectorP9CAccidentb
; Address            : 0x3BF1AC - 0x3BF284
; =========================================================

3BF1AC:  PUSH            {R4-R7,LR}
3BF1AE:  ADD             R7, SP, #0xC
3BF1B0:  PUSH.W          {R8-R10}
3BF1B4:  VLDR            S4, =3.4028e38
3BF1B8:  MOV.W           R12, #0
3BF1BC:  VLDR            D16, [R1,#4]
3BF1C0:  MOV.W           LR, #0
3BF1C4:  VLDR            S0, [R1]
3BF1C8:  MOV.W           R9, #0
3BF1CC:  VMOV            D1, D2
3BF1D0:  ADD.W           R4, R0, R9,LSL#3
3BF1D4:  MOV             R5, R9
3BF1D6:  ADD.W           R9, R5, #1
3BF1DA:  LDR.W           R10, [R0,R5,LSL#3]
3BF1DE:  CMP.W           R10, #0
3BF1E2:  BEQ             loc_3BF1F4
3BF1E4:  ADD.W           R1, R0, R5,LSL#3
3BF1E8:  LDRB            R6, [R1,#4]
3BF1EA:  CMP             R6, #0
3BF1EC:  ITT EQ
3BF1EE:  LDRBEQ          R1, [R1,#5]
3BF1F0:  CMPEQ           R1, #0
3BF1F2:  BEQ             loc_3BF200
3BF1F4:  SUB.W           R1, R9, #1
3BF1F8:  ADDS            R4, #8
3BF1FA:  CMP             R1, #0xF
3BF1FC:  BLT             loc_3BF1D4
3BF1FE:  B               loc_3BF27C
3BF200:  LDRB.W          R1, [R10,#0x45]
3BF204:  LSLS            R1, R1, #0x1F
3BF206:  BNE             loc_3BF1F4
3BF208:  CMP             R3, #1
3BF20A:  BNE             loc_3BF232
3BF20C:  CMP             R2, R4
3BF20E:  MOV.W           R8, #0
3BF212:  IT EQ
3BF214:  MOVEQ.W         R8, #1
3BF218:  LDRB.W          R6, [R10,#0x485]
3BF21C:  CMP             R2, #0
3BF21E:  MOV             R1, R2
3BF220:  IT NE
3BF222:  MOVNE           R1, #1
3BF224:  CMP.W           R12, R6,LSR#7
3BF228:  BNE             loc_3BF1F4
3BF22A:  ANDS.W          R1, R1, R8
3BF22E:  BNE             loc_3BF1F4
3BF230:  B               loc_3BF238
3BF232:  CBZ             R2, loc_3BF238
3BF234:  CMP             R2, R4
3BF236:  BEQ             loc_3BF1F4
3BF238:  LDR.W           R1, [R10,#0x14]
3BF23C:  ADD.W           R6, R1, #0x30 ; '0'
3BF240:  CMP             R1, #0
3BF242:  IT EQ
3BF244:  ADDEQ.W         R6, R10, #4
3BF248:  VLDR            S4, [R6]
3BF24C:  VLDR            D17, [R6,#4]
3BF250:  VSUB.F32        S4, S0, S4
3BF254:  VSUB.F32        D17, D16, D17
3BF258:  VMUL.F32        D3, D17, D17
3BF25C:  VMUL.F32        S4, S4, S4
3BF260:  VADD.F32        S4, S4, S6
3BF264:  VADD.F32        S6, S4, S7
3BF268:  VMIN.F32        D2, D3, D1
3BF26C:  VCMPE.F32       S6, S2
3BF270:  VMRS            APSR_nzcv, FPSCR
3BF274:  IT LT
3BF276:  MOVLT           LR, R4
3BF278:  CMP             R5, #0xF
3BF27A:  BLT             loc_3BF1CC
3BF27C:  MOV             R0, LR
3BF27E:  POP.W           {R8-R10}
3BF282:  POP             {R4-R7,PC}
