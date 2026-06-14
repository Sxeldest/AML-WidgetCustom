; =========================================================
; Game Engine Function: sub_FF374
; Address            : 0xFF374 - 0xFF3FC
; =========================================================

FF374:  PUSH            {R4-R7,LR}
FF376:  ADD             R7, SP, #0xC
FF378:  PUSH.W          {R8,R9,R11}
FF37C:  MOV             R4, R0
FF37E:  CBZ             R0, loc_FF3F4
FF380:  MOV             R5, R1
FF382:  CBZ             R1, loc_FF3F4
FF384:  LDR.W           R0, [R5,#0x5A0]
FF388:  MOV             R6, R2
FF38A:  CMP             R0, #9
FF38C:  BEQ             loc_FF3C4
FF38E:  LDR.W           R0, [R5,#0x388]
FF392:  LDRB.W          R0, [R0,#0xCD]
FF396:  LSLS            R0, R0, #0x1E
FF398:  BMI             loc_FF3C4
FF39A:  BL              sub_163768
FF39E:  LDRH            R1, [R5,#0x26]
FF3A0:  LDR.W           R9, [R0,R1,LSL#2]
FF3A4:  MOV             R0, R9
FF3A6:  BL              sub_163884
FF3AA:  CBZ             R0, loc_FF3DA
FF3AC:  MOV             R8, R0
FF3AE:  MOV             R0, R9
FF3B0:  BL              sub_163836
FF3B4:  CMP             R0, #5
FF3B6:  IT NE
FF3B8:  ADDNE.W         R8, R8, #0x30 ; '0'
FF3BC:  MOV             R0, R8
FF3BE:  BL              sub_109420
FF3C2:  CBZ             R0, loc_FF3DA
FF3C4:  LDR             R0, =(off_25B170 - 0xFF3CE)
FF3C6:  MOV             R1, R5
FF3C8:  MOV             R2, R6
FF3CA:  ADD             R0, PC; off_25B170
FF3CC:  LDR             R3, [R0]
FF3CE:  MOV             R0, R4
FF3D0:  POP.W           {R8,R9,R11}
FF3D4:  POP.W           {R4-R7,LR}
FF3D8:  BX              R3
FF3DA:  VMOV.F32        S0, #2.0
FF3DE:  LDR             R0, [R5,#0x14]
FF3E0:  VLDR            S2, [R0,#0x38]
FF3E4:  LDR             R1, [R0,#0x30]
FF3E6:  STR             R1, [R4]
FF3E8:  LDR             R0, [R0,#0x34]
FF3EA:  VADD.F32        S0, S2, S0
FF3EE:  STR             R0, [R4,#4]
FF3F0:  VSTR            S0, [R4,#8]
FF3F4:  MOV             R0, R4
FF3F6:  POP.W           {R8,R9,R11}
FF3FA:  POP             {R4-R7,PC}
