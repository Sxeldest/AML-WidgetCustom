; =========================================================
; Game Engine Function: sub_E0408
; Address            : 0xE0408 - 0xE046C
; =========================================================

E0408:  PUSH            {R4-R7,LR}
E040A:  ADD             R7, SP, #0xC
E040C:  PUSH.W          {R8-R10}
E0410:  SUB             SP, SP, #8
E0412:  MOV             R10, R1
E0414:  LDR             R1, [R0,#4]
E0416:  MOV             R9, R2
E0418:  LSLS            R2, R1, #1
E041A:  BPL             loc_E0456
E041C:  LDR             R0, [R0,#8]
E041E:  CMP             R1, #0
E0420:  ITE MI
E0422:  SUBMI.W         R4, R0, #0x10
E0426:  SUBPL.W         R4, R0, #8
E042A:  LDR             R0, [R4,#4]
E042C:  CBZ             R0, loc_E0456
E042E:  MOVS            R5, #0
E0430:  MOV             R8, SP
E0432:  LDR             R0, [R4]
E0434:  LDR.W           R6, [R0,R5,LSL#3]
E0438:  MOV             R0, R6; s
E043A:  BLX             strlen
E043E:  STRD.W          R6, R0, [SP,#0x20+var_20]
E0442:  MOV             R0, R8
E0444:  MOV             R1, R10
E0446:  MOV             R2, R9
E0448:  BL              sub_E046C
E044C:  CBZ             R0, loc_E0462
E044E:  LDR             R0, [R4,#4]
E0450:  ADDS            R5, #1
E0452:  CMP             R5, R0
E0454:  BCC             loc_E0432
E0456:  MOV.W           R0, #0xFFFFFFFF
E045A:  ADD             SP, SP, #8
E045C:  POP.W           {R8-R10}
E0460:  POP             {R4-R7,PC}
E0462:  LDR             R0, [R4]
E0464:  ADD.W           R0, R0, R5,LSL#3
E0468:  LDR             R0, [R0,#4]
E046A:  B               loc_E045A
