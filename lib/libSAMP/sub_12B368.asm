; =========================================================
; Game Engine Function: sub_12B368
; Address            : 0x12B368 - 0x12B3A8
; =========================================================

12B368:  PUSH            {R4,R5,R7,LR}
12B36A:  ADD             R7, SP, #8
12B36C:  MOV             R4, R0
12B36E:  LDR             R0, =(_ZTV12ImGuiWrapper - 0x12B376); `vtable for'ImGuiWrapper ...
12B370:  LDR             R1, [R4,#0x1C]
12B372:  ADD             R0, PC; `vtable for'ImGuiWrapper
12B374:  ADD.W           R0, R0, #8
12B378:  STR             R0, [R4]
12B37A:  CBZ             R1, loc_12B398
12B37C:  BL              sub_167F4C
12B380:  MOV             R5, R0
12B382:  LDR             R0, =(off_234B40 - 0x12B388)
12B384:  ADD             R0, PC; off_234B40
12B386:  LDR             R1, [R0]; off_2636C8
12B388:  LDR             R0, [R4,#0x1C]
12B38A:  LDR             R1, [R1]
12B38C:  BLX             R1
12B38E:  LDR.W           R0, [R5,#0x8C]
12B392:  MOVS            R1, #0
12B394:  STR             R1, [R4,#0x1C]
12B396:  STR             R1, [R0,#8]
12B398:  LDRB            R0, [R4,#0xC]
12B39A:  LSLS            R0, R0, #0x1F
12B39C:  ITT NE
12B39E:  LDRNE           R0, [R4,#0x14]; void *
12B3A0:  BLXNE           j__ZdlPv; operator delete(void *)
12B3A4:  MOV             R0, R4
12B3A6:  POP             {R4,R5,R7,PC}
