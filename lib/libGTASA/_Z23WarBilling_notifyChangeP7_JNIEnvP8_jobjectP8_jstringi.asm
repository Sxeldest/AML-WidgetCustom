; =========================================================
; Game Engine Function: _Z23WarBilling_notifyChangeP7_JNIEnvP8_jobjectP8_jstringi
; Address            : 0x27B364 - 0x27B3F2
; =========================================================

27B364:  PUSH            {R4-R7,LR}
27B366:  ADD             R7, SP, #0xC
27B368:  PUSH.W          {R8-R11}
27B36C:  SUB             SP, SP, #4
27B36E:  MOV             R10, R0
27B370:  MOV             R8, R3
27B372:  LDR.W           R0, [R10]
27B376:  MOV             R9, R2
27B378:  MOV             R1, R9
27B37A:  MOVS            R2, #0
27B37C:  LDR.W           R3, [R0,#0x2A4]
27B380:  MOV             R0, R10
27B382:  BLX             R3
27B384:  MOV             R11, R0
27B386:  LDR             R0, =(numItems_ptr - 0x27B38C)
27B388:  ADD             R0, PC; numItems_ptr
27B38A:  LDR             R0, [R0]; numItems
27B38C:  LDR             R5, [R0]
27B38E:  CMP             R5, #1
27B390:  BLT             loc_27B3D8
27B392:  LDR             R0, =(items_ptr - 0x27B39A)
27B394:  MOVS            R6, #0
27B396:  ADD             R0, PC; items_ptr
27B398:  LDR             R0, [R0]; items
27B39A:  LDR             R0, [R0]
27B39C:  ADD.W           R4, R0, #8
27B3A0:  LDR.W           R0, [R4,#-8]
27B3A4:  MOV             R1, R11; char *
27B3A6:  LDR             R0, [R0]; char *
27B3A8:  BLX             strcmp
27B3AC:  CBZ             R0, loc_27B3B8
27B3AE:  ADDS            R6, #1
27B3B0:  ADDS            R4, #0xC
27B3B2:  CMP             R6, R5
27B3B4:  BLT             loc_27B3A0
27B3B6:  B               loc_27B3D8
27B3B8:  CMP             R4, #8
27B3BA:  BEQ             loc_27B3D8
27B3BC:  LDR             R0, =(billingMutex_ptr - 0x27B3C2)
27B3BE:  ADD             R0, PC; billingMutex_ptr
27B3C0:  LDR             R5, [R0]; billingMutex
27B3C2:  LDR             R0, [R5]; mutex
27B3C4:  BLX             pthread_mutex_lock
27B3C8:  MOVS            R0, #1
27B3CA:  STRB.W          R0, [R4,#-3]
27B3CE:  STR.W           R8, [R4]
27B3D2:  LDR             R0, [R5]; mutex
27B3D4:  BLX             pthread_mutex_unlock
27B3D8:  LDR.W           R0, [R10]
27B3DC:  MOV             R1, R9
27B3DE:  MOV             R2, R11
27B3E0:  LDR.W           R3, [R0,#0x2A8]
27B3E4:  MOV             R0, R10
27B3E6:  ADD             SP, SP, #4
27B3E8:  POP.W           {R8-R11}
27B3EC:  POP.W           {R4-R7,LR}
27B3F0:  BX              R3
