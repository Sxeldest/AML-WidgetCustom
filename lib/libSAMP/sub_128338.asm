; =========================================================
; Game Engine Function: sub_128338
; Address            : 0x128338 - 0x12836C
; =========================================================

128338:  PUSH            {R4,R5,R7,LR}
12833A:  ADD             R7, SP, #8
12833C:  MOV             R4, R0
12833E:  LDR             R0, =(off_23494C - 0x128344)
128340:  ADD             R0, PC; off_23494C
128342:  LDR             R5, [R0]; dword_23DF24
128344:  LDR             R0, [R5]
128346:  CBNZ            R0, loc_128352
128348:  LDR             R0, =(aLibgtasaSo - 0x12834E); "libGTASA.so" ...
12834A:  ADD             R0, PC; "libGTASA.so"
12834C:  BL              sub_163FF8
128350:  STR             R0, [R5]
128352:  LDR             R1, =(sub_12837C+1 - 0x128362)
128354:  MOVW            R3, #0xDF04
128358:  LDR             R2, =(off_31410C - 0x128366)
12835A:  MOVT            R3, #0x66 ; 'f'
12835E:  ADD             R1, PC; sub_12837C
128360:  ADD             R0, R3
128362:  ADD             R2, PC; off_31410C
128364:  BL              sub_164222
128368:  MOV             R0, R4
12836A:  POP             {R4,R5,R7,PC}
