; =========================================================
; Game Engine Function: _ZN7CDarkel34ThisVehicleShouldBeKilledForFrenzyEPK8CVehicle
; Address            : 0x304504 - 0x30456C
; =========================================================

304504:  LDR             R1, =(_ZN7CDarkel6StatusE_ptr - 0x30450A)
304506:  ADD             R1, PC; _ZN7CDarkel6StatusE_ptr
304508:  LDR             R1, [R1]; CDarkel::Status ...
30450A:  LDRH            R1, [R1]; CDarkel::Status
30450C:  CMP             R1, #4
30450E:  IT NE
304510:  CMPNE           R1, #1
304512:  BNE             loc_304564
304514:  LDR             R1, =(_ZN7CDarkel11ModelToKillE_ptr - 0x30451A)
304516:  ADD             R1, PC; _ZN7CDarkel11ModelToKillE_ptr
304518:  LDR             R1, [R1]; CDarkel::ModelToKill ...
30451A:  LDR             R2, [R1]; CDarkel::ModelToKill
30451C:  ADDS            R1, R2, #2
30451E:  BNE             loc_304528
304520:  MOV.W           R12, #1
304524:  MOV             R0, R12
304526:  BX              LR
304528:  LDRSH.W         R3, [R0,#0x26]
30452C:  MOV.W           R12, #1
304530:  CMP             R2, R3
304532:  BEQ             loc_304568
304534:  LDR             R1, =(_ZN7CDarkel12ModelToKill2E_ptr - 0x30453A)
304536:  ADD             R1, PC; _ZN7CDarkel12ModelToKill2E_ptr
304538:  LDR             R1, [R1]; CDarkel::ModelToKill2 ...
30453A:  LDR             R1, [R1]; CDarkel::ModelToKill2
30453C:  CMP             R1, R3
30453E:  BEQ             loc_304568
304540:  LDR             R1, =(_ZN7CDarkel12ModelToKill3E_ptr - 0x304546)
304542:  ADD             R1, PC; _ZN7CDarkel12ModelToKill3E_ptr
304544:  LDR             R1, [R1]; CDarkel::ModelToKill3 ...
304546:  LDR             R1, [R1]; CDarkel::ModelToKill3
304548:  CMP             R1, R3
30454A:  BEQ             loc_304568
30454C:  LDR             R1, =(_ZN7CDarkel12ModelToKill4E_ptr - 0x304552)
30454E:  ADD             R1, PC; _ZN7CDarkel12ModelToKill4E_ptr
304550:  LDR             R1, [R1]; CDarkel::ModelToKill4 ...
304552:  LDR             R1, [R1]; CDarkel::ModelToKill4
304554:  CMP             R1, R3
304556:  BEQ             loc_304568
304558:  ADDS            R1, R2, #3
30455A:  ITT EQ
30455C:  LDREQ.W         R0, [R0,#0x5A4]
304560:  CMPEQ           R0, #9
304562:  BEQ             loc_304520
304564:  MOV.W           R12, #0
304568:  MOV             R0, R12
30456A:  BX              LR
