; =========================================================
; Game Engine Function: sub_15917E
; Address            : 0x15917E - 0x1591EA
; =========================================================

15917E:  PUSH            {R4-R7,LR}
159180:  ADD             R7, SP, #0xC
159182:  PUSH.W          {R8}
159186:  SUB             SP, SP, #0x10
159188:  MOV             R5, R0
15918A:  MOV             R6, R2
15918C:  LDR             R2, [R2,#4]
15918E:  MOV             R8, R0
159190:  STR.W           R1, [R5],#4
159194:  MOV             R0, R5; int
159196:  MOV             R1, R2; s
159198:  BL              sub_DC6DC
15919C:  MOVS            R0, #0
15919E:  MOV             R4, R8
1591A0:  STR.W           R0, [R4,#0x10]!
1591A4:  STRD.W          R0, R0, [R4,#4]
1591A8:  LDRB            R1, [R6,#8]
1591AA:  LDR             R6, [R6]
1591AC:  STRD.W          R0, R0, [R4,#0x10]
1591B0:  UBFX.W          R0, R1, #1, #1
1591B4:  STRB            R0, [R4,#0xC]
1591B6:  MOV             R0, R6; s
1591B8:  BLX             strlen
1591BC:  MOV             R2, R0
1591BE:  MOV             R0, SP
1591C0:  MOV             R1, R6
1591C2:  BL              sub_164D04
1591C6:  LDRB            R0, [R4]
1591C8:  LSLS            R0, R0, #0x1F
1591CA:  ITT NE
1591CC:  LDRNE.W         R0, [R8,#0x18]; void *
1591D0:  BLXNE           j__ZdlPv; operator delete(void *)
1591D4:  VLDR            D16, [SP,#0x20+var_20]
1591D8:  LDR             R0, [SP,#0x20+var_18]
1591DA:  STR             R0, [R4,#8]
1591DC:  MOV             R0, R8
1591DE:  VSTR            D16, [R4]
1591E2:  ADD             SP, SP, #0x10
1591E4:  POP.W           {R8}
1591E8:  POP             {R4-R7,PC}
