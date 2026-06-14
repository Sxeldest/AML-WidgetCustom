; =========================================================
; Game Engine Function: sub_21934C
; Address            : 0x21934C - 0x219392
; =========================================================

21934C:  PUSH            {R4-R7,LR}
21934E:  ADD             R7, SP, #0xC
219350:  PUSH.W          {R11}
219354:  ADD.W           R0, R0, #0x198
219358:  MOV             R5, R1
21935A:  MOVS            R1, #0x1C
21935C:  MOV             R4, R2
21935E:  BL              sub_216EF0
219362:  MOV             R6, R0
219364:  MOV             R0, R5; s
219366:  BLX             strlen
21936A:  LDR             R1, =0x1010134
21936C:  ADD             R0, R5
21936E:  STR             R1, [R6,#4]
219370:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle13EnclosingExprE - 0x219376); `vtable for'`anonymous namespace'::itanium_demangle::EnclosingExpr ...
219372:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::EnclosingExpr
219374:  ADDS            R1, #8
219376:  STR             R1, [R6]
219378:  LDR             R1, [R4]
21937A:  STR             R1, [R6,#0x10]
21937C:  STR             R5, [R6,#8]
21937E:  STR             R0, [R6,#0xC]
219380:  LDR             R0, =(unk_901C1 - 0x219386)
219382:  ADD             R0, PC; unk_901C1
219384:  STR             R0, [R6,#0x14]
219386:  ADDS            R0, #1
219388:  STR             R0, [R6,#0x18]
21938A:  MOV             R0, R6
21938C:  POP.W           {R11}
219390:  POP             {R4-R7,PC}
