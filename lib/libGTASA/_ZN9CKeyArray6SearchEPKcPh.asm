; =========================================================
; Game Engine Function: _ZN9CKeyArray6SearchEPKcPh
; Address            : 0x54D4C8 - 0x54D53A
; =========================================================

54D4C8:  PUSH            {R4-R7,LR}
54D4CA:  ADD             R7, SP, #0xC
54D4CC:  PUSH.W          {R8}
54D4D0:  MOV             R5, R0
54D4D2:  MOV             R0, R1; this
54D4D4:  MOV             R8, R2
54D4D6:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
54D4DA:  LDR             R2, [R5,#4]
54D4DC:  MOVW            R12, #0xFFFF
54D4E0:  ADD             R2, R12
54D4E2:  SXTH            R3, R2
54D4E4:  CMP             R3, #0
54D4E6:  BLT             loc_54D52E
54D4E8:  LDR             R3, [R5]
54D4EA:  MOVS            R5, #0
54D4EC:  SXTH            R5, R5
54D4EE:  SXTAH.W         R6, R5, R2
54D4F2:  ADD.W           R6, R6, R6,LSR#31
54D4F6:  ASRS            R6, R6, #1
54D4F8:  UXTH            R4, R6
54D4FA:  ADD.W           R4, R3, R4,LSL#3
54D4FE:  LDR             R1, [R4,#4]
54D500:  CMP             R1, R0
54D502:  BEQ             loc_54D51E
54D504:  BCC             loc_54D512
54D506:  ADD.W           R1, R6, R12
54D50A:  SXTH            R2, R1
54D50C:  CMP             R5, R2
54D50E:  BLE             loc_54D4EE
54D510:  B               loc_54D52E
54D512:  ADDS            R1, R6, #1
54D514:  SXTH            R5, R1
54D516:  SXTH            R1, R2
54D518:  CMP             R1, R5
54D51A:  BGE             loc_54D4EC
54D51C:  B               loc_54D52E
54D51E:  CBZ             R4, loc_54D52E
54D520:  MOVS            R0, #1
54D522:  STRB.W          R0, [R8]
54D526:  LDR             R0, [R4]
54D528:  POP.W           {R8}
54D52C:  POP             {R4-R7,PC}
54D52E:  MOVS            R0, #0
54D530:  STRB.W          R0, [R8]
54D534:  POP.W           {R8}
54D538:  POP             {R4-R7,PC}
