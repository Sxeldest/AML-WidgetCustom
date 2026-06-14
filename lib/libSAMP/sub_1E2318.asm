; =========================================================
; Game Engine Function: sub_1E2318
; Address            : 0x1E2318 - 0x1E2354
; =========================================================

1E2318:  PUSH            {R4,R10,R11,LR}
1E231C:  ADD             R11, SP, #8
1E2320:  MOV             R1, #0x28958
1E2328:  LDR             R4, [R0,R1]
1E232C:  LDR             R0, [R4,#4]
1E2330:  CMP             R0, #0
1E2334:  POPEQ           {R4,R10,R11,PC}
1E2338:  MOV             R1, #1
1E233C:  STR             R1, [R4]
1E2340:  BL              j_StopThread
1E2344:  MOV             R0, #0
1E2348:  STR             R0, [R4,#4]
1E234C:  STR             R0, [R4]
1E2350:  POP             {R4,R10,R11,PC}
