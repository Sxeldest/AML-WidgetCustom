; =========================================================
; Game Engine Function: sub_F9364
; Address            : 0xF9364 - 0xF93A0
; =========================================================

F9364:  PUSH            {R4-R7,LR}
F9366:  ADD             R7, SP, #0xC
F9368:  PUSH.W          {R11}
F936C:  MOVS            R6, #0
F936E:  MOV             R4, R0
F9370:  STRB            R6, [R0,#2]
F9372:  MOVS            R0, #0x10; unsigned int
F9374:  BLX             j__Znwj; operator new(uint)
F9378:  MOV             R5, R0
F937A:  BL              sub_F85C4
F937E:  LDR             R0, =(unk_247288 - 0xF938C)
F9380:  MOVS            R1, #1
F9382:  STRB.W          R1, [R4,#0x54]
F9386:  MOVS            R1, #0xD2; n
F9388:  ADD             R0, PC; unk_247288 ; int
F938A:  STRD.W          R5, R6, [R4,#4]
F938E:  STR             R6, [R4,#0x50]
F9390:  STRH            R6, [R4]
F9392:  STRB            R6, [R4,#0xC]
F9394:  BLX             sub_22178C
F9398:  MOV             R0, R4
F939A:  POP.W           {R11}
F939E:  POP             {R4-R7,PC}
