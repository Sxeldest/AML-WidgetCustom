; =========================================================
; Game Engine Function: _ZN28CTaskComplexWanderProstitute18CreateFirstSubTaskEP4CPed
; Address            : 0x52423C - 0x524298
; =========================================================

52423C:  PUSH            {R4-R7,LR}
52423E:  ADD             R7, SP, #0xC
524240:  PUSH.W          {R11}
524244:  SUB             SP, SP, #8
524246:  MOV             R4, R1
524248:  MOV             R5, R0
52424A:  LDRB.W          R0, [R4,#0x485]
52424E:  LSLS            R0, R0, #0x1F
524250:  BNE             loc_524282
524252:  MOV             R6, R5
524254:  MOV             R1, R4
524256:  LDR.W           R0, [R6],#0x18
52425A:  LDR             R2, [R0,#0x3C]
52425C:  MOV             R0, R5
52425E:  BLX             R2
524260:  MOV             R0, R5
524262:  MOV             R3, R5
524264:  LDR.W           R1, [R0],#0x1C
524268:  LDRB.W          R2, [R3,#0x10]!
52426C:  LDR.W           R12, [R1,#0x40]
524270:  MOV             R1, R4
524272:  STRD.W          R0, R3, [SP,#0x18+var_18]
524276:  MOV             R0, R5
524278:  MOV             R3, R6
52427A:  BLX             R12
52427C:  MOV.W           R2, #0x384
524280:  B               loc_524286
524282:  MOV.W           R2, #0x2C0; int
524286:  MOV             R0, R5; this
524288:  MOV             R1, R4; CPed *
52428A:  ADD             SP, SP, #8
52428C:  POP.W           {R11}
524290:  POP.W           {R4-R7,LR}
524294:  B.W             _ZN18CTaskComplexWander13CreateSubTaskEPK4CPedi; CTaskComplexWander::CreateSubTask(CPed const*,int)
