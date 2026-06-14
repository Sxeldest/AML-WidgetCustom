; =========================================================
; Game Engine Function: png_do_swap
; Address            : 0x203430 - 0x20348C
; =========================================================

203430:  PUSH            {R7,LR}
203432:  MOV             R7, SP
203434:  LDRB            R2, [R0,#9]
203436:  CMP             R2, #0x10
203438:  BNE             locret_20348A
20343A:  LDRB            R2, [R0,#0xA]
20343C:  LDR             R0, [R0]
20343E:  MULS            R2, R0
203440:  CBZ             R2, locret_20348A
203442:  CMP             R2, #0x10
203444:  BCC             loc_203470
203446:  AND.W           R12, R2, #0xF
20344A:  SUBS.W          LR, R2, R12
20344E:  BEQ             loc_203470
203450:  ADD.W           R0, R1, LR,LSL#1
203454:  MOV             R3, LR
203456:  VLD2.8          {D16-D19}, [R1]
20345A:  SUBS            R3, #0x10
20345C:  VMOV            Q10, Q8
203460:  VST2.8          {D18-D21}, [R1]!
203464:  BNE             loc_203456
203466:  CMP.W           R12, #0
20346A:  IT EQ
20346C:  POPEQ           {R7,PC}
20346E:  B               loc_203476
203470:  MOV.W           LR, #0
203474:  MOV             R0, R1
203476:  SUB.W           R1, R2, LR
20347A:  LDRB            R2, [R0]
20347C:  SUBS            R1, #1
20347E:  LDRB            R3, [R0,#1]
203480:  STRB            R3, [R0]
203482:  STRB            R2, [R0,#1]
203484:  ADD.W           R0, R0, #2
203488:  BNE             loc_20347A
20348A:  POP             {R7,PC}
