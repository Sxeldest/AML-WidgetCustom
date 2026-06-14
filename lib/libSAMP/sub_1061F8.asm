; =========================================================
; Game Engine Function: sub_1061F8
; Address            : 0x1061F8 - 0x106242
; =========================================================

1061F8:  PUSH            {R4,R6,R7,LR}
1061FA:  ADD             R7, SP, #8
1061FC:  MOV             R4, R0
1061FE:  LDR             R0, [R0,#0x5C]
106200:  CBZ             R0, locret_106240
106202:  LDRB.W          R1, [R0,#0x485]
106206:  LSLS            R1, R1, #0x1B
106208:  BMI             locret_106240
10620A:  LDR.W           R0, [R0,#0x440]
10620E:  LDR             R0, [R0,#0x10]
106210:  CBZ             R0, locret_106240
106212:  LDR             R1, =(off_23494C - 0x106222)
106214:  MOVW            R3, #0xCC38
106218:  LDR             R2, [R0]
10621A:  MOVT            R3, #0x66 ; 'f'
10621E:  ADD             R1, PC; off_23494C
106220:  LDR             R1, [R1]; dword_23DF24
106222:  LDR             R1, [R1]
106224:  SUBS            R2, R2, R1
106226:  CMP             R2, R3
106228:  BNE             locret_106240
10622A:  MOV             R2, #0x530C8D
106232:  ADD             R1, R2
106234:  BLX             R1
106236:  LDR             R0, [R4,#0x5C]
106238:  MOVS            R1, #0
10623A:  LDR.W           R0, [R0,#0x440]
10623E:  STR             R1, [R0,#0x10]
106240:  POP             {R4,R6,R7,PC}
