; =========================================================
; Game Engine Function: sub_164222
; Address            : 0x164222 - 0x164250
; =========================================================

164222:  PUSH            {R4-R7,LR}
164224:  ADD             R7, SP, #0xC
164226:  PUSH.W          {R11}
16422A:  MOV             R5, R0
16422C:  MOVW            R0, #0xFFF
164230:  BIC.W           R0, R5, R0; addr
164234:  MOV             R6, R2
164236:  MOV             R4, R1
164238:  MOV.W           R1, #0x1000; len
16423C:  MOVS            R2, #3; prot
16423E:  BLX             mprotect
164242:  CBZ             R6, loc_164248
164244:  LDR             R0, [R5]
164246:  STR             R0, [R6]
164248:  STR             R4, [R5]
16424A:  POP.W           {R11}
16424E:  POP             {R4-R7,PC}
