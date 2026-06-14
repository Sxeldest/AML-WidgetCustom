; =========================================================
; Game Engine Function: sub_181FAA
; Address            : 0x181FAA - 0x182004
; =========================================================

181FAA:  PUSH            {R4-R7,LR}
181FAC:  ADD             R7, SP, #0xC
181FAE:  PUSH.W          {R8,R9,R11}
181FB2:  MOV             R6, R0
181FB4:  LDR             R0, [R0]
181FB6:  MOV             R8, R1
181FB8:  MOV             R4, R2
181FBA:  LDR             R1, [R0,#0x2C]
181FBC:  MOV             R0, R6
181FBE:  BLX             R1
181FC0:  MOV             R5, R0
181FC2:  CBNZ            R0, loc_181FFA
181FC4:  LDR             R0, [R6]
181FC6:  MOV             R1, R4
181FC8:  LDR.W           R2, [R0,#0xE0]
181FCC:  MOV             R0, R6
181FCE:  BLX             R2
181FD0:  MOVW            R0, #0x804; unsigned int
181FD4:  BLX             j__Znwj; operator new(uint)
181FD8:  MOV             R9, R0
181FDA:  CBZ             R4, loc_181FE8
181FDC:  MOV             R0, R9
181FDE:  BL              sub_17DAD8
181FE2:  STR.W           R9, [R6,#0x7A4]
181FE6:  B               loc_181FF2
181FE8:  MOV             R0, R9
181FEA:  BL              sub_17DAD8
181FEE:  STR.W           R9, [R6,#0x7A8]
181FF2:  MOV             R0, R9
181FF4:  MOV             R1, R8
181FF6:  BL              sub_17DC88
181FFA:  EOR.W           R0, R5, #1
181FFE:  POP.W           {R8,R9,R11}
182002:  POP             {R4-R7,PC}
