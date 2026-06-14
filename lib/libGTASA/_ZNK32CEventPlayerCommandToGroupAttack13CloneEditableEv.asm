; =========================================================
; Game Engine Function: _ZNK32CEventPlayerCommandToGroupAttack13CloneEditableEv
; Address            : 0x379300 - 0x37939C
; =========================================================

379300:  PUSH            {R4,R6,R7,LR}
379302:  ADD             R7, SP, #8
379304:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37930E)
379306:  MOV.W           LR, #0
37930A:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
37930C:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37930E:  LDR             R1, [R1]; CPools::ms_pEventPool
379310:  LDRD.W          R12, R4, [R1,#8]
379314:  ADDS            R4, #1
379316:  STR             R4, [R1,#0xC]
379318:  CMP             R4, R12
37931A:  BNE             loc_37932A
37931C:  MOVS            R4, #0
37931E:  MOVS.W          R2, LR,LSL#31
379322:  STR             R4, [R1,#0xC]
379324:  BNE             loc_37935C
379326:  MOV.W           LR, #1
37932A:  LDR             R2, [R1,#4]
37932C:  LDRSB           R3, [R2,R4]
37932E:  CMP.W           R3, #0xFFFFFFFF
379332:  BGT             loc_379314
379334:  AND.W           R3, R3, #0x7F
379338:  STRB            R3, [R2,R4]
37933A:  LDR             R2, [R1,#4]
37933C:  LDR             R3, [R1,#0xC]
37933E:  LDRB            R4, [R2,R3]
379340:  AND.W           R12, R4, #0x80
379344:  ADDS            R4, #1
379346:  AND.W           R4, R4, #0x7F
37934A:  ORR.W           R4, R4, R12
37934E:  STRB            R4, [R2,R3]
379350:  LDR             R2, [R1]
379352:  LDR             R1, [R1,#0xC]
379354:  ADD.W           R1, R1, R1,LSL#4
379358:  ADD.W           R4, R2, R1,LSL#2
37935C:  LDR             R1, =(_ZTV26CEventPlayerCommandToGroup_ptr - 0x37936C)
37935E:  MOVW            R3, #0x100
379362:  MOVS            R2, #0
379364:  MOVT            R3, #0xC8
379368:  ADD             R1, PC; _ZTV26CEventPlayerCommandToGroup_ptr
37936A:  LDR             R0, [R0,#0x14]; this
37936C:  STR             R2, [R4,#4]
37936E:  LDR             R1, [R1]; `vtable for'CEventPlayerCommandToGroup ...
379370:  CMP             R0, #0
379372:  STR             R3, [R4,#8]
379374:  MOVW            R3, #0xFFFF
379378:  ADD.W           R1, R1, #8
37937C:  STRH            R3, [R4,#0xC]
37937E:  STR             R2, [R4,#0x10]
379380:  STR             R1, [R4]
379382:  MOV             R1, R4
379384:  STR.W           R0, [R1,#0x14]!; CEntity **
379388:  IT NE
37938A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37938E:  LDR             R0, =(_ZTV32CEventPlayerCommandToGroupAttack_ptr - 0x379394)
379390:  ADD             R0, PC; _ZTV32CEventPlayerCommandToGroupAttack_ptr
379392:  LDR             R0, [R0]; `vtable for'CEventPlayerCommandToGroupAttack ...
379394:  ADDS            R0, #8
379396:  STR             R0, [R4]
379398:  MOV             R0, R4
37939A:  POP             {R4,R6,R7,PC}
