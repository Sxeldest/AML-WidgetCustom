; =========================================================
; Game Engine Function: sub_E9214
; Address            : 0xE9214 - 0xE92B4
; =========================================================

E9214:  PUSH            {R4,R5,R7,LR}
E9216:  ADD             R7, SP, #8
E9218:  SUB             SP, SP, #0x10
E921A:  MOV             R4, R0
E921C:  LDR             R0, [R0,#8]
E921E:  MOV             R1, R0
E9220:  LDR.W           R3, [R1,#-4]!
E9224:  CBZ             R3, loc_E924A
E9226:  LDR             R1, [R4,#4]
E9228:  MOVS            R2, #3
E922A:  SUBS            R0, R0, R1
E922C:  MOV.W           R1, #0xFFFFFFFF
E9230:  ADD.W           R1, R1, R0,ASR#2
E9234:  ADD.W           R0, R4, #0x30 ; '0'
E9238:  BL              sub_E9460
E923C:  CBZ             R0, loc_E9258
E923E:  LDR             R0, [R4,#8]
E9240:  LDR             R1, [R4,#0x14]
E9242:  SUBS            R0, #4
E9244:  STR             R0, [R4,#8]
E9246:  SUBS            R0, R1, #1
E9248:  B               loc_E9250
E924A:  LDR             R0, [R4,#0x14]
E924C:  STR             R1, [R4,#8]
E924E:  SUBS            R0, #1
E9250:  STR             R0, [R4,#0x14]
E9252:  MOVS            R0, #1
E9254:  ADD             SP, SP, #0x10
E9256:  POP             {R4,R5,R7,PC}
E9258:  ADD.W           R1, R4, #0x50 ; 'P'
E925C:  MOV             R0, SP
E925E:  BL              sub_E4834
E9262:  LDR             R1, [R4,#8]
E9264:  LDRB.W          R2, [SP,#0x18+var_18]
E9268:  LDR.W           R1, [R1,#-4]
E926C:  LDRD.W          R12, LR, [R1,#8]
E9270:  LDRB            R3, [R1]
E9272:  STRB            R2, [R1]
E9274:  LDRD.W          R2, R5, [SP,#0x18+var_10]
E9278:  STRD.W          R2, R5, [R1,#8]
E927C:  STRB.W          R3, [SP,#0x18+var_18]
E9280:  STRD.W          R12, LR, [SP,#0x18+var_10]
E9284:  BL              sub_E3F7A
E9288:  LDRD.W          R1, R0, [R4,#4]
E928C:  SUBS            R3, R0, #4
E928E:  LDR             R2, [R4,#0x14]
E9290:  CMP             R1, R3
E9292:  STR             R3, [R4,#8]
E9294:  SUB.W           R2, R2, #1
E9298:  STR             R2, [R4,#0x14]
E929A:  BEQ             loc_E9252
E929C:  LDR.W           R0, [R0,#-8]
E92A0:  LDRB            R1, [R0]
E92A2:  CMP             R1, #2
E92A4:  BNE             loc_E9252
E92A6:  LDR             R4, [R0,#8]
E92A8:  LDR             R0, [R4,#4]
E92AA:  SUBS            R0, #0x10
E92AC:  BL              sub_E3F7A
E92B0:  STR             R0, [R4,#4]
E92B2:  B               loc_E9252
