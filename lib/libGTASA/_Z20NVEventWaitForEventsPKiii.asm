; =========================================================
; Game Engine Function: _Z20NVEventWaitForEventsPKiii
; Address            : 0x27133C - 0x2713DC
; =========================================================

27133C:  PUSH            {R4-R7,LR}
27133E:  ADD             R7, SP, #0xC
271340:  PUSH.W          {R8}
271344:  SUB             SP, SP, #8
271346:  LDR             R4, =(dword_6D8200 - 0x271352)
271348:  MOV             R6, R0
27134A:  MOV             R8, R2
27134C:  MOV             R5, R1
27134E:  ADD             R4, PC; dword_6D8200
271350:  ADD.W           R0, R4, #8; mutex
271354:  BLX             pthread_mutex_lock
271358:  LDR             R1, =(aNvevent - 0x271364); "NVEvent"
27135A:  ADR             R2, aEnteredNvevent; "entered NVEventWaitForEvents, wait time"...
27135C:  MOVS            R0, #3; prio
27135E:  MOV             R3, R8
271360:  ADD             R1, PC; "NVEvent"
271362:  BLX             __android_log_print
271366:  STRD.W          R6, R5, [R4,#(dword_6D821C - 0x6D8200)]
27136A:  BL              sub_271440
27136E:  CBZ             R0, loc_271374
271370:  MOVS            R4, #1
271372:  B               loc_2713B6
271374:  LDR             R0, =(dword_6D8200 - 0x27137A)
271376:  ADD             R0, PC; dword_6D8200
271378:  LDRB            R0, [R0,#(byte_6D8210 - 0x6D8200)]
27137A:  CBZ             R0, loc_2713B0
27137C:  CMP.W           R8, #0xFFFFFFFF
271380:  BLE             loc_2713A2
271382:  MOV.W           R0, #0x3E8
271386:  LDR             R1, =(dword_6D8200 - 0x271392)
271388:  MUL.W           R0, R8, R0
27138C:  MOVS            R2, #5
27138E:  ADD             R1, PC; dword_6D8200
271390:  STRD.W          R2, R0, [SP,#0x18+var_18]
271394:  ADD.W           R0, R1, #0xC; cond
271398:  ADDS            R1, #8; mutex
27139A:  MOV             R2, SP; abstime
27139C:  BLX             pthread_cond_timedwait
2713A0:  B               loc_2713B0
2713A2:  LDR             R1, =(dword_6D8200 - 0x2713A8)
2713A4:  ADD             R1, PC; dword_6D8200
2713A6:  ADD.W           R0, R1, #0xC; cond
2713AA:  ADDS            R1, #8; mutex
2713AC:  BLX             pthread_cond_wait
2713B0:  BL              sub_271440
2713B4:  MOV             R4, R0
2713B6:  LDR             R0, =(dword_6D8200 - 0x2713BE)
2713B8:  MOVS            R1, #0
2713BA:  ADD             R0, PC; dword_6D8200
2713BC:  STRD.W          R1, R1, [R0,#(dword_6D821C - 0x6D8200)]
2713C0:  ADDS            R0, #8; mutex
2713C2:  BLX             pthread_mutex_unlock
2713C6:  LDR             R1, =(aNvevent - 0x2713D0); "NVEvent"
2713C8:  ADR             R2, aExitedNveventw; "exited NVEventWaitForEvents"
2713CA:  MOVS            R0, #3; prio
2713CC:  ADD             R1, PC; "NVEvent"
2713CE:  BLX             __android_log_print
2713D2:  MOV             R0, R4
2713D4:  ADD             SP, SP, #8
2713D6:  POP.W           {R8}
2713DA:  POP             {R4-R7,PC}
