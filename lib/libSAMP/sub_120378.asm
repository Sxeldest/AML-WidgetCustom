; =========================================================
; Game Engine Function: sub_120378
; Address            : 0x120378 - 0x120410
; =========================================================

120378:  PUSH            {R4,R5,R7,LR}
12037A:  ADD             R7, SP, #8
12037C:  SUB             SP, SP, #8
12037E:  LDR             R0, =(off_23494C - 0x12038C)
120380:  MOV             R1, #0x27045E
120388:  ADD             R0, PC; off_23494C
12038A:  LDR             R5, [R0]; dword_23DF24
12038C:  LDR             R0, [R5]
12038E:  LDRB            R3, [R0,R1]
120390:  CMP             R3, #0x30 ; '0'
120392:  BNE             loc_1203DC
120394:  LDR             R1, =(sub_120444+1 - 0x1203A6)
120396:  MOVW            R2, #0x1A8C
12039A:  ADD             R4, SP, #0x10+var_C
12039C:  MOVT            R2, #0x67 ; 'g'
1203A0:  ADD             R0, R2
1203A2:  ADD             R1, PC; sub_120444
1203A4:  MOV             R2, R4
1203A6:  BL              sub_164196
1203AA:  LDR             R0, [R5]
1203AC:  MOVW            R2, #0x4B58
1203B0:  LDR             R1, =(sub_120480+1 - 0x1203BE)
1203B2:  MOVT            R2, #0x67 ; 'g'
1203B6:  ADD             R0, R2
1203B8:  MOV             R2, R4
1203BA:  ADD             R1, PC; sub_120480
1203BC:  BL              sub_164196
1203C0:  LDR             R0, [R5]
1203C2:  MOVW            R3, #0x3244
1203C6:  LDR             R1, =(sub_1204BC+1 - 0x1203D4)
1203C8:  MOVT            R3, #0x67 ; 'g'
1203CC:  LDR             R2, =(off_2638EC - 0x1203D6)
1203CE:  ADD             R0, R3
1203D0:  ADD             R1, PC; sub_1204BC
1203D2:  ADD             R2, PC; off_2638EC
1203D4:  BL              sub_164196
1203D8:  ADD             SP, SP, #8
1203DA:  POP             {R4,R5,R7,PC}
1203DC:  LDR             R1, =(aAxl - 0x1203E6); "AXL" ...
1203DE:  MOVS            R0, #0x30 ; '0'
1203E0:  LDR             R2, =(aTouchsensefixI - 0x1203EA); "TouchSenseFix: Invalid class size - %d "... ...
1203E2:  ADD             R1, PC; "AXL"
1203E4:  STR             R0, [SP,#0x10+var_10]
1203E6:  ADD             R2, PC; "TouchSenseFix: Invalid class size - %d "...
1203E8:  MOVS            R0, #6; prio
1203EA:  BLX             __android_log_print
1203EE:  MOVS            R0, #8; thrown_size
1203F0:  BLX             j___cxa_allocate_exception
1203F4:  LDR             R1, =(aInvalidTouchse - 0x1203FC); "Invalid TouchSense class size" ...
1203F6:  MOV             R4, R0
1203F8:  ADD             R1, PC; "Invalid TouchSense class size"
1203FA:  BLX             j__ZNSt13runtime_errorC2EPKc; std::runtime_error::runtime_error(char const*)
1203FE:  LDR             R0, =(_ZTISt13runtime_error_ptr - 0x120406)
120400:  LDR             R2, =(_ZNSt15underflow_errorD2Ev_ptr - 0x120408)
120402:  ADD             R0, PC; _ZTISt13runtime_error_ptr
120404:  ADD             R2, PC; _ZNSt15underflow_errorD2Ev_ptr
120406:  LDR             R1, [R0]; lptinfo
120408:  MOV             R0, R4; void *
12040A:  LDR             R2, [R2]; std::underflow_error::~underflow_error() ; void (*)(void *)
12040C:  BLX             j___cxa_throw
