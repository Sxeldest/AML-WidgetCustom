; =========================================================
; Game Engine Function: sub_13D2EC
; Address            : 0x13D2EC - 0x13D328
; =========================================================

13D2EC:  PUSH            {R4-R7,LR}
13D2EE:  ADD             R7, SP, #0xC
13D2F0:  PUSH.W          {R11}
13D2F4:  MOV             R5, R2
13D2F6:  MOV             R6, R1
13D2F8:  MOV             R4, R0
13D2FA:  BL              sub_12BC78
13D2FE:  LDR             R0, =(_ZTV5Image - 0x13D306); `vtable for'Image ...
13D300:  LDRB            R2, [R6]
13D302:  ADD             R0, PC; `vtable for'Image
13D304:  LDRB            R3, [R5]
13D306:  ADDS            R0, #8
13D308:  STR             R0, [R4]
13D30A:  LDR             R0, [R6,#8]
13D30C:  LSLS            R2, R2, #0x1F
13D30E:  LDR             R1, [R5,#8]
13D310:  IT EQ
13D312:  ADDEQ           R0, R6, #1
13D314:  LSLS            R2, R3, #0x1F
13D316:  IT EQ
13D318:  ADDEQ           R1, R5, #1
13D31A:  BL              sub_1085C0
13D31E:  STR             R0, [R4,#0x54]
13D320:  MOV             R0, R4
13D322:  POP.W           {R11}
13D326:  POP             {R4-R7,PC}
