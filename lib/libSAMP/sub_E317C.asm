; =========================================================
; Game Engine Function: sub_E317C
; Address            : 0xE317C - 0xE31E4
; =========================================================

E317C:  PUSH            {R4-R7,LR}
E317E:  ADD             R7, SP, #0xC
E3180:  PUSH.W          {R11}
E3184:  MOV             R4, R1
E3186:  LDR             R1, =(aAxl - 0xE3192); "AXL" ...
E3188:  LDR             R2, =(aStopS - 0xE3194); "Stop: %s" ...
E318A:  MOV             R5, R0
E318C:  LDR             R3, =(unk_23DAE0 - 0xE3198)
E318E:  ADD             R1, PC; "AXL"
E3190:  ADD             R2, PC; "Stop: %s"
E3192:  MOVS            R0, #4; prio
E3194:  ADD             R3, PC; unk_23DAE0
E3196:  BLX             __android_log_print
E319A:  LDR             R6, =(byte_23DBF6 - 0xE31A2)
E319C:  LDRB            R0, [R5]
E319E:  ADD             R6, PC; byte_23DBF6
E31A0:  CLZ.W           R0, R0
E31A4:  LDRB            R1, [R6]
E31A6:  LSRS            R0, R0, #5
E31A8:  CLZ.W           R1, R1
E31AC:  LSRS            R1, R1, #5
E31AE:  ORRS.W          R5, R0, R1
E31B2:  BNE             loc_E31DA
E31B4:  LDR             R0, =(byte_23DBF5 - 0xE31BE)
E31B6:  MOV.W           R1, #1
E31BA:  ADD             R0, PC; byte_23DBF5
E31BC:  STRB            R1, [R0]
E31BE:  CBZ             R4, loc_E31CC
E31C0:  MOVS            R0, #0xC8; useconds
E31C2:  BLX             usleep
E31C6:  LDRB            R0, [R6]
E31C8:  CMP             R0, #0
E31CA:  BNE             loc_E31C0
E31CC:  LDR             R4, =(dword_23DAD8 - 0xE31D2)
E31CE:  ADD             R4, PC; dword_23DAD8
E31D0:  LDR             R0, [R4]
E31D2:  BL              sub_164AF4
E31D6:  MOVS            R0, #0
E31D8:  STR             R0, [R4]
E31DA:  EOR.W           R0, R5, #1
E31DE:  POP.W           {R11}
E31E2:  POP             {R4-R7,PC}
