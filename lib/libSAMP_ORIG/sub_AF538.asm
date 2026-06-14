; =========================================================
; Game Engine Function: sub_AF538
; Address            : 0xAF538 - 0xAF5FA
; =========================================================

AF538:  PUSH            {R4,R5,R7,LR}
AF53A:  ADD             R7, SP, #8
AF53C:  SUB             SP, SP, #0x48
AF53E:  MOV             R3, R2
AF540:  MOV             R2, R0
AF542:  LDR             R0, =(__stack_chk_guard_ptr - 0xAF548)
AF544:  ADD             R0, PC; __stack_chk_guard_ptr
AF546:  LDR             R0, [R0]; __stack_chk_guard
AF548:  LDR             R0, [R0]
AF54A:  STR             R0, [SP,#0x50+var_C]
AF54C:  LDRB            R0, [R2]
AF54E:  CMP             R0, #0
AF550:  BEQ             loc_AF5E2
AF552:  MOV             R4, R1
AF554:  B               loc_AF564
AF556:  CMP             R0, #0x25 ; '%'
AF558:  IT EQ
AF55A:  ADDEQ           R2, #1
AF55C:  LDRB.W          R0, [R2,#1]!
AF560:  CMP             R0, #0
AF562:  BEQ             loc_AF5E2
AF564:  CMP             R0, #0x25 ; '%'
AF566:  BNE             loc_AF556
AF568:  LDRB            R1, [R2,#1]
AF56A:  CMP             R1, #0x25 ; '%'
AF56C:  BEQ             loc_AF556
AF56E:  ADD             R5, SP, #0x50+s
AF570:  MOVS            R1, #0x40 ; '@'
AF572:  MOV             R0, R5; s
AF574:  BL              sub_886C0
AF578:  SUBS            R0, R5, #1
AF57A:  LDRB.W          R1, [R0,#1]!; nptr
AF57E:  CMP             R1, #0x20 ; ' '
AF580:  BEQ             loc_AF57A
AF582:  BIC.W           R2, R4, #1
AF586:  CMP             R2, #8
AF588:  BNE             loc_AF59C
AF58A:  BLX             atof
AF58E:  VMOV            D16, R0, R1
AF592:  VCVT.U32.F64    S0, D16
AF596:  VMOV            R3, S0
AF59A:  B               loc_AF5E2
AF59C:  SUB.W           R2, R1, #0x2D ; '-'
AF5A0:  CLZ.W           R2, R2
AF5A4:  LSRS            R2, R2, #5
AF5A6:  LDRB            R3, [R0,R2]
AF5A8:  SUBS            R3, #0x2B ; '+'
AF5AA:  CLZ.W           R3, R3
AF5AE:  LSRS            R3, R3, #5
AF5B0:  ADD             R2, R3
AF5B2:  LDRB            R4, [R0,R2]
AF5B4:  SUB.W           R3, R4, #0x30 ; '0'
AF5B8:  CMP             R3, #9
AF5BA:  BHI             loc_AF5DA
AF5BC:  MOVS            R3, #0
AF5BE:  ADDS            R5, R0, R2
AF5C0:  ADD.W           R3, R3, R3,LSL#2
AF5C4:  ADDS            R2, #1
AF5C6:  LDRB            R5, [R5,#1]
AF5C8:  ADD.W           R3, R4, R3,LSL#1
AF5CC:  SUBS            R3, #0x30 ; '0'
AF5CE:  SUB.W           R4, R5, #0x30 ; '0'
AF5D2:  CMP             R4, #0xA
AF5D4:  MOV             R4, R5
AF5D6:  BCC             loc_AF5BE
AF5D8:  B               loc_AF5DC
AF5DA:  MOVS            R3, #0
AF5DC:  CMP             R1, #0x2D ; '-'
AF5DE:  IT EQ
AF5E0:  NEGEQ           R3, R3
AF5E2:  LDR             R0, [SP,#0x50+var_C]
AF5E4:  LDR             R1, =(__stack_chk_guard_ptr - 0xAF5EA)
AF5E6:  ADD             R1, PC; __stack_chk_guard_ptr
AF5E8:  LDR             R1, [R1]; __stack_chk_guard
AF5EA:  LDR             R1, [R1]
AF5EC:  CMP             R1, R0
AF5EE:  ITTT EQ
AF5F0:  MOVEQ           R0, R3
AF5F2:  ADDEQ           SP, SP, #0x48 ; 'H'
AF5F4:  POPEQ           {R4,R5,R7,PC}
AF5F6:  BLX             __stack_chk_fail
