; =========================================================
; Game Engine Function: sub_181592
; Address            : 0x181592 - 0x18162E
; =========================================================

181592:  PUSH            {R4-R7,LR}
181594:  ADD             R7, SP, #0xC
181596:  PUSH.W          {R8-R11}
18159A:  SUB             SP, SP, #4
18159C:  CBZ             R1, loc_1815B0
18159E:  MOV             R6, R0
1815A0:  LDRB            R0, [R1]
1815A2:  MOV             R4, R1
1815A4:  CBZ             R0, loc_1815B0
1815A6:  MOV             R0, R4; s
1815A8:  BLX             strlen
1815AC:  CMP             R0, #0xF
1815AE:  BLS             loc_1815B8
1815B0:  ADD             SP, SP, #4
1815B2:  POP.W           {R8-R11}
1815B6:  POP             {R4-R7,PC}
1815B8:  ADD.W           R9, R6, #0x370
1815BC:  MOV             R0, R9
1815BE:  BL              sub_18CB76
1815C2:  LDR.W           R8, [R6,#0x378]
1815C6:  CMP.W           R8, #0
1815CA:  BEQ             loc_1815F0
1815CC:  LDR.W           R10, [R6,#0x374]
1815D0:  MOV             R11, R8
1815D2:  ADD.W           R0, R6, #0x374
1815D6:  STR             R0, [SP,#0x20+var_20]
1815D8:  MOV             R5, R10
1815DA:  LDR             R6, [R5]
1815DC:  MOV             R0, R4; s1
1815DE:  LDR             R1, [R6]; s2
1815E0:  BLX             strcmp
1815E4:  CBZ             R0, loc_181600
1815E6:  SUBS.W          R11, R11, #1
1815EA:  ADD.W           R5, R5, #4
1815EE:  BNE             loc_1815DA
1815F0:  MOV             R0, R9
1815F2:  ADD             SP, SP, #4
1815F4:  POP.W           {R8-R11}
1815F8:  POP.W           {R4-R7,LR}
1815FC:  B.W             sub_18CB7A
181600:  SUB.W           R1, R8, #1
181604:  LDR.W           R0, [R10,R1,LSL#2]
181608:  STR             R0, [R5]
18160A:  LDR             R0, [SP,#0x20+var_20]
18160C:  BL              sub_18162E
181610:  MOV             R0, R9
181612:  BL              sub_18CB7A
181616:  LDR             R0, [R6]; void *
181618:  CBZ             R0, loc_18161E
18161A:  BLX             j__ZdaPv; operator delete[](void *)
18161E:  MOV             R0, R6; void *
181620:  ADD             SP, SP, #4
181622:  POP.W           {R8-R11}
181626:  POP.W           {R4-R7,LR}
18162A:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
