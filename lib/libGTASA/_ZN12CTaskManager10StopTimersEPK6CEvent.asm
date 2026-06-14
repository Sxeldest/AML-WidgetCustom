; =========================================================
; Game Engine Function: _ZN12CTaskManager10StopTimersEPK6CEvent
; Address            : 0x53425C - 0x5342A8
; =========================================================

53425C:  PUSH            {R4,R5,R7,LR}
53425E:  ADD             R7, SP, #8
534260:  MOV             R5, R0
534262:  MOV             R4, R1
534264:  LDR             R0, [R5]
534266:  CBZ             R0, loc_534270
534268:  LDR             R1, [R0]
53426A:  LDR             R2, [R1,#0x18]
53426C:  MOV             R1, R4
53426E:  BLX             R2
534270:  LDR             R0, [R5,#4]
534272:  CBZ             R0, loc_53427C
534274:  LDR             R1, [R0]
534276:  LDR             R2, [R1,#0x18]
534278:  MOV             R1, R4
53427A:  BLX             R2
53427C:  LDR             R0, [R5,#8]
53427E:  CBZ             R0, loc_534288
534280:  LDR             R1, [R0]
534282:  LDR             R2, [R1,#0x18]
534284:  MOV             R1, R4
534286:  BLX             R2
534288:  LDR             R0, [R5,#0xC]
53428A:  CBZ             R0, loc_534294
53428C:  LDR             R1, [R0]
53428E:  LDR             R2, [R1,#0x18]
534290:  MOV             R1, R4
534292:  BLX             R2
534294:  LDR             R0, [R5,#0x10]
534296:  CMP             R0, #0
534298:  IT EQ
53429A:  POPEQ           {R4,R5,R7,PC}
53429C:  LDR             R1, [R0]
53429E:  LDR             R2, [R1,#0x18]
5342A0:  MOV             R1, R4
5342A2:  POP.W           {R4,R5,R7,LR}
5342A6:  BX              R2
