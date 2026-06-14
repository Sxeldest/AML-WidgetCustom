; =========================================================
; Game Engine Function: sub_47B42A
; Address            : 0x47B42A - 0x47B47C
; =========================================================

47B42A:  PUSH            {R4,R5,R7,LR}
47B42C:  ADD             R7, SP, #8
47B42E:  MOV             R4, R0
47B430:  CMP             R1, #2
47B432:  LDR.W           R5, [R4,#0x148]
47B436:  BEQ             loc_47B446
47B438:  LDR             R0, [R4]
47B43A:  MOVS            R1, #4
47B43C:  STR             R1, [R0,#0x14]
47B43E:  LDR             R0, [R4]
47B440:  LDR             R1, [R0]
47B442:  MOV             R0, R4
47B444:  BLX             R1
47B446:  MOVS            R0, #0
47B448:  STR             R0, [R5,#8]
47B44A:  LDR.W           R2, [R4,#0xE4]
47B44E:  LDR.W           R1, [R4,#0x148]
47B452:  CMP             R2, #1
47B454:  BLE             loc_47B45A
47B456:  MOVS            R2, #1
47B458:  B               loc_47B474
47B45A:  LDR.W           R2, [R4,#0xE0]
47B45E:  LDR.W           R3, [R4,#0xE8]
47B462:  LDR             R5, [R1,#8]
47B464:  SUBS            R2, #1
47B466:  ADD.W           R4, R3, #0x48 ; 'H'
47B46A:  CMP             R5, R2
47B46C:  IT CC
47B46E:  ADDCC.W         R4, R3, #0xC
47B472:  LDR             R2, [R4]
47B474:  STRD.W          R0, R0, [R1,#0xC]
47B478:  STR             R2, [R1,#0x14]
47B47A:  POP             {R4,R5,R7,PC}
