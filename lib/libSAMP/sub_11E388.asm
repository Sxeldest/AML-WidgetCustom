; =========================================================
; Game Engine Function: sub_11E388
; Address            : 0x11E388 - 0x11E3B8
; =========================================================

11E388:  PUSH            {R7,LR}
11E38A:  MOV             R7, SP
11E38C:  SUB             SP, SP, #0x10
11E38E:  LDR             R0, [R0,#0x10]
11E390:  ADD.W           LR, SP, #0x18+var_14
11E394:  LDR.W           R12, [R7,#8]
11E398:  STM.W           LR, {R2,R3,R12}
11E39C:  STR             R1, [SP,#0x18+var_18]
11E39E:  CBZ             R0, loc_11E3B4
11E3A0:  LDR             R1, [R0]
11E3A2:  ADD             R2, SP, #0x18+var_14
11E3A4:  ADD.W           R3, R7, #0xC
11E3A8:  LDR.W           R12, [R1,#0x18]
11E3AC:  MOV             R1, SP
11E3AE:  BLX             R12
11E3B0:  ADD             SP, SP, #0x10
11E3B2:  POP             {R7,PC}
11E3B4:  BL              sub_DC92C
