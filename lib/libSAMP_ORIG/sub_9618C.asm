; =========================================================
; Game Engine Function: sub_9618C
; Address            : 0x9618C - 0x96228
; =========================================================

9618C:  PUSH            {R4-R7,LR}
9618E:  ADD             R7, SP, #0xC
96190:  PUSH.W          {R8-R11}
96194:  CMP             R0, #1
96196:  BLT             loc_96222
96198:  LDR             R1, =(dword_1ACF68 - 0x961AA)
9619A:  MOVW            R2, #0x1518
9619E:  MOVW            R9, #0x9BCD
961A2:  MOVW            R8, #0x6432
961A6:  ADD             R1, PC; dword_1ACF68
961A8:  ADDS            R0, #1
961AA:  MOVT            R9, #0x1F
961AE:  MOVT            R8, #0x60 ; '`'
961B2:  LDR             R1, [R1]
961B4:  ADD.W           LR, R1, R2
961B8:  MOVW            R2, #0x1A84
961BC:  ADD.W           R10, R1, R2
961C0:  LDR.W           R3, [R10]
961C4:  LDR.W           R12, [R10,#8]
961C8:  SUBS            R1, R3, #1
961CA:  ADD.W           R2, R1, R1,LSL#1
961CE:  ADD.W           R4, R12, R2,LSL#2
961D2:  LDR             R2, =(unk_536AC - 0x961D8)
961D4:  ADD             R2, PC; unk_536AC
961D6:  MOV             R11, R2
961D8:  B               loc_961EE
961DA:  ADDS            R2, R4, #4
961DC:  LDR             R2, [R2]
961DE:  STR             R2, [R6]
961E0:  STR.W           R1, [R10]
961E4:  SUBS            R0, #1
961E6:  SUBS            R1, #1
961E8:  SUBS            R4, #0xC
961EA:  CMP             R0, #1
961EC:  BLE             loc_96222
961EE:  LDR             R2, [R4]
961F0:  MOV             R5, R11
961F2:  SUBS            R3, #1
961F4:  ADD.W           R6, R2, R2,LSL#1
961F8:  LSR.W           R5, R9, R2
961FC:  LSLS            R5, R5, #0x1F
961FE:  ADD.W           R6, R11, R6,LSL#2
96202:  LDR             R6, [R6,#8]
96204:  ADD             R6, LR
96206:  BNE             loc_961DA
96208:  LSR.W           R2, R8, R2
9620C:  LSLS            R2, R2, #0x1F
9620E:  BEQ             loc_961E0
96210:  LDR             R2, [R4,#4]
96212:  STR.W           R2, [R6],#4
96216:  ADD.W           R2, R3, R3,LSL#1
9621A:  ADD.W           R2, R12, R2,LSL#2
9621E:  ADDS            R2, #8
96220:  B               loc_961DC
96222:  POP.W           {R8-R11}
96226:  POP             {R4-R7,PC}
