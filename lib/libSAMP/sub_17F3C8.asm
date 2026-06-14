; =========================================================
; Game Engine Function: sub_17F3C8
; Address            : 0x17F3C8 - 0x17F448
; =========================================================

17F3C8:  PUSH            {R4-R7,LR}
17F3CA:  ADD             R7, SP, #0xC
17F3CC:  PUSH.W          {R8-R10}
17F3D0:  SUB             SP, SP, #0x18
17F3D2:  MOV             R9, R3
17F3D4:  LDR             R3, =(unk_BE920 - 0x17F3DE)
17F3D6:  MOV             R10, R0
17F3D8:  ADD             R0, SP, #0x30+var_28
17F3DA:  ADD             R3, PC; unk_BE920
17F3DC:  STRD.W          R1, R2, [SP,#0x30+var_28]
17F3E0:  MOV             R1, R3
17F3E2:  BL              sub_17E580
17F3E6:  LDR.W           R8, [R7,#arg_0]
17F3EA:  CBZ             R0, loc_17F3FA
17F3EC:  ADD.W           R4, R10, #0xC
17F3F0:  MOV             R0, R4
17F3F2:  BL              sub_17D55E
17F3F6:  MOV             R0, R4
17F3F8:  B               loc_17F438
17F3FA:  ADDW            R5, R10, #0xAF4
17F3FE:  ADD             R4, SP, #0x30+var_20
17F400:  LDRD.W          R0, R1, [SP,#0x30+var_28]
17F404:  MOVS            R6, #0x20 ; ' '
17F406:  STRD.W          R0, R1, [SP,#0x30+var_20]
17F40A:  SUB.W           R0, R5, #0xC
17F40E:  MOV             R1, R4
17F410:  BL              sub_17E580
17F414:  CBNZ            R0, loc_17F430
17F416:  SUBS            R6, #1
17F418:  ADD.W           R5, R5, #0x124
17F41C:  BNE             loc_17F40A
17F41E:  LDRD.W          R1, R2, [SP,#0x30+var_28]
17F422:  MOV             R0, R10
17F424:  MOV             R3, R9
17F426:  STR.W           R8, [SP,#0x30+var_30]
17F42A:  BL              sub_181ACA
17F42E:  B               loc_17F440
17F430:  MOV             R0, R5
17F432:  BL              sub_17D55E
17F436:  MOV             R0, R5
17F438:  MOV             R1, R9
17F43A:  MOV             R2, R8
17F43C:  BL              sub_17D566
17F440:  ADD             SP, SP, #0x18
17F442:  POP.W           {R8-R10}
17F446:  POP             {R4-R7,PC}
