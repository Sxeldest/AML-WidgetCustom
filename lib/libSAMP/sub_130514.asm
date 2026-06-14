; =========================================================
; Game Engine Function: sub_130514
; Address            : 0x130514 - 0x13054A
; =========================================================

130514:  PUSH            {R4,R5,R7,LR}
130516:  ADD             R7, SP, #8
130518:  SUB             SP, SP, #0x10
13051A:  MOV             R4, R0
13051C:  LDRB            R0, [R1]
13051E:  ADD             R5, SP, #0x18+var_14
130520:  LDR             R2, [R1,#8]
130522:  LSLS            R0, R0, #0x1F
130524:  IT EQ
130526:  ADDEQ           R2, R1, #1
130528:  MOV             R0, R5; int
13052A:  MOV             R1, R2; s
13052C:  BL              sub_DC6DC
130530:  LDR             R0, [R4,#0x54]
130532:  MOV             R1, R5
130534:  BL              sub_13D450
130538:  LDRB.W          R0, [SP,#0x18+var_14]
13053C:  LSLS            R0, R0, #0x1F
13053E:  ITT NE
130540:  LDRNE           R0, [SP,#0x18+var_C]; void *
130542:  BLXNE           j__ZdlPv; operator delete(void *)
130546:  ADD             SP, SP, #0x10
130548:  POP             {R4,R5,R7,PC}
