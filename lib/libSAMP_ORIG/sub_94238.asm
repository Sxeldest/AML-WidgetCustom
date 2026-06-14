; =========================================================
; Game Engine Function: sub_94238
; Address            : 0x94238 - 0x942B6
; =========================================================

94238:  PUSH            {R4-R7,LR}
9423A:  ADD             R7, SP, #0xC
9423C:  PUSH.W          {R11}
94240:  LDRB            R3, [R2]
94242:  CBZ             R3, loc_94280
94244:  LDR             R6, =(unk_52D88 - 0x94250)
94246:  ADDS            R1, R2, #1
94248:  MOV.W           R0, #0xFFFFFFFF
9424C:  ADD             R6, PC; unk_52D88
9424E:  B               loc_94260
94250:  UXTB            R5, R0
94252:  ADDS            R1, #1
94254:  EORS            R5, R4
94256:  LDR.W           R5, [R6,R5,LSL#2]
9425A:  EOR.W           R0, R5, R0,LSR#8
9425E:  CBZ             R3, loc_9427C
94260:  MOV             R4, R3
94262:  LDRB            R3, [R1]
94264:  CMP             R4, #0x23 ; '#'
94266:  IT EQ
94268:  CMPEQ           R3, #0x23 ; '#'
9426A:  BNE             loc_94250
9426C:  LDRB            R3, [R1,#1]
9426E:  CMP             R3, #0x23 ; '#'
94270:  MOV.W           R3, #0x23 ; '#'
94274:  IT EQ
94276:  MOVEQ.W         R0, #0xFFFFFFFF
9427A:  B               loc_94250
9427C:  MVNS            R1, R0
9427E:  B               loc_94282
94280:  MOVS            R1, #0
94282:  LDR             R0, =(dword_1ACF68 - 0x9428C)
94284:  MOVW            R5, #0x2D14
94288:  ADD             R0, PC; dword_1ACF68
9428A:  LDR             R0, [R0]
9428C:  LDR             R3, [R0,R5]
9428E:  CBZ             R3, loc_942A2
94290:  ADD             R0, R5
94292:  LDR             R0, [R0,#8]
94294:  LDR             R6, [R0,#4]
94296:  CMP             R6, R1
94298:  BEQ             loc_942B0
9429A:  SUBS            R3, #1
9429C:  ADD.W           R0, R0, #0x1C
942A0:  BNE             loc_94294
942A2:  MOV             R0, R2; s
942A4:  POP.W           {R11}
942A8:  POP.W           {R4-R7,LR}
942AC:  B.W             sub_9A060
942B0:  POP.W           {R11}
942B4:  POP             {R4-R7,PC}
