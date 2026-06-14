; =========================================================
; Game Engine Function: sub_103538
; Address            : 0x103538 - 0x1035A6
; =========================================================

103538:  PUSH            {R4-R7,LR}
10353A:  ADD             R7, SP, #0xC
10353C:  PUSH.W          {R8}
103540:  SUB             SP, SP, #8
103542:  MOV             R8, R1
103544:  LDR             R1, =(__stack_chk_guard_ptr - 0x10354A)
103546:  ADD             R1, PC; __stack_chk_guard_ptr
103548:  LDR             R1, [R1]; __stack_chk_guard
10354A:  LDR             R1, [R1]
10354C:  STR             R1, [SP,#0x18+var_14]
10354E:  LDR             R6, [R0]
103550:  ADD.W           R0, R6, R8,LSL#2
103554:  LDR.W           R5, [R0,#0x18C]
103558:  ADDS            R1, R5, #1
10355A:  STR.W           R1, [R0,#0x18C]
10355E:  ADD.W           R0, R6, #0x198
103562:  MOVS            R1, #0x10
103564:  BL              sub_FFA98
103568:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle26SyntheticTemplateParamNameE - 0x103572); `vtable for'`anonymous namespace'::itanium_demangle::SyntheticTemplateParamName ...
10356A:  MOV             R4, R0
10356C:  LDR             R0, =0x101011B
10356E:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::SyntheticTemplateParamName
103570:  STRD.W          R8, R5, [R4,#8]
103574:  ADDS            R1, #8
103576:  STR             R4, [SP,#0x18+var_18]
103578:  STRD.W          R1, R0, [R4]
10357C:  MOV             R1, SP
10357E:  LDR.W           R0, [R6,#0x150]
103582:  LDR.W           R0, [R0,#-4]
103586:  BL              sub_1035B8
10358A:  LDR             R0, [SP,#0x18+var_14]
10358C:  LDR             R1, =(__stack_chk_guard_ptr - 0x103592)
10358E:  ADD             R1, PC; __stack_chk_guard_ptr
103590:  LDR             R1, [R1]; __stack_chk_guard
103592:  LDR             R1, [R1]
103594:  CMP             R1, R0
103596:  ITTTT EQ
103598:  MOVEQ           R0, R4
10359A:  ADDEQ           SP, SP, #8
10359C:  POPEQ.W         {R8}
1035A0:  POPEQ           {R4-R7,PC}
1035A2:  BLX             __stack_chk_fail
