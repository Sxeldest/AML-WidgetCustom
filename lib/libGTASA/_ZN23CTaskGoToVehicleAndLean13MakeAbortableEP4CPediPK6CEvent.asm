; =========================================================
; Game Engine Function: _ZN23CTaskGoToVehicleAndLean13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x51A348 - 0x51A39A
; =========================================================

51A348:  PUSH            {R4-R7,LR}
51A34A:  ADD             R7, SP, #0xC
51A34C:  PUSH.W          {R8}
51A350:  MOV             R5, R0
51A352:  MOV             R8, R1
51A354:  LDR             R0, [R5,#8]
51A356:  MOV             R6, R2
51A358:  LDR             R1, [R0]
51A35A:  LDR             R4, [R1,#0x1C]
51A35C:  MOV             R1, R8
51A35E:  BLX             R4
51A360:  CMP             R6, #2
51A362:  IT NE
51A364:  CMPNE           R0, #1
51A366:  BNE             loc_51A392
51A368:  LDR             R0, [R5,#0xC]
51A36A:  CMP             R0, #0
51A36C:  ITTT NE
51A36E:  LDRNE.W         R1, [R0,#0x430]
51A372:  BICNE.W         R1, R1, #0x10000
51A376:  STRNE.W         R1, [R0,#0x430]
51A37A:  LDR             R0, [R5,#8]
51A37C:  CBZ             R0, loc_51A38A
51A37E:  LDR             R1, [R0]
51A380:  MOVS            R2, #2
51A382:  MOVS            R3, #0
51A384:  LDR             R6, [R1,#0x1C]
51A386:  MOV             R1, R8
51A388:  BLX             R6
51A38A:  MOVS            R0, #1
51A38C:  POP.W           {R8}
51A390:  POP             {R4-R7,PC}
51A392:  MOVS            R0, #0
51A394:  POP.W           {R8}
51A398:  POP             {R4-R7,PC}
