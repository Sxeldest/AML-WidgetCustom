; =========================================================
; Game Engine Function: sub_9824C
; Address            : 0x9824C - 0x98322
; =========================================================

9824C:  PUSH            {R4,R6,R7,LR}
9824E:  ADD             R7, SP, #8
98250:  SUB             SP, SP, #0x18
98252:  LDR             R0, =(dword_1ACF68 - 0x98258)
98254:  ADD             R0, PC; dword_1ACF68
98256:  LDR             R0, [R0]
98258:  LDR             R1, =(__stack_chk_guard_ptr - 0x9825E)
9825A:  ADD             R1, PC; __stack_chk_guard_ptr
9825C:  LDR             R1, [R1]; __stack_chk_guard
9825E:  LDR             R1, [R1]
98260:  STR             R1, [SP,#0x20+var_C]
98262:  MOVW            R1, #0x1D19
98266:  LDRB            R1, [R0,R1]
98268:  CBZ             R1, loc_982E6
9826A:  VMOV.F32        S0, #8.0
9826E:  MOVW            R1, #0x15B8
98272:  VMOV.F32        S2, #16.0
98276:  ADD             R1, R0
98278:  VLDR            S4, =0.6
9827C:  MOVW            R2, #0x1A28
98280:  VLDR            S8, [R1,#0x58]
98284:  ADD             R2, R0
98286:  VLDR            S6, [R1]
9828A:  ADD.W           R3, R0, #0x1A20
9828E:  VLDR            S10, [R0,#0xE0]
98292:  VMUL.F32        S4, S8, S4
98296:  VLDR            S12, [R0,#0xE4]
9829A:  MOVS            R0, #0
9829C:  VMLA.F32        S12, S6, S0
982A0:  STRD.W          R0, R0, [R2]
982A4:  VMLA.F32        S10, S6, S2
982A8:  LDR.W           R0, [R1,#0x458]
982AC:  MOVS            R4, #1
982AE:  ORR.W           R0, R0, #0x41 ; 'A'
982B2:  STR.W           R0, [R1,#0x458]
982B6:  STR.W           R4, [R1,#0x45C]
982BA:  VSTR            S4, [R2,#0x34]
982BE:  VSTR            S12, [R3,#4]
982C2:  VSTR            S10, [R3]
982C6:  LDR             R0, [SP,#0x20+var_C]
982C8:  LDR             R1, =(__stack_chk_guard_ptr - 0x982CE)
982CA:  ADD             R1, PC; __stack_chk_guard_ptr
982CC:  LDR             R1, [R1]; __stack_chk_guard
982CE:  LDR             R1, [R1]
982D0:  CMP             R1, R0
982D2:  ITTTT EQ
982D4:  MOVEQ           R0, #0
982D6:  MOVEQ           R1, #1
982D8:  ADDEQ           SP, SP, #0x18
982DA:  POPEQ.W         {R4,R6,R7,LR}
982DE:  IT EQ
982E0:  BEQ.W           sub_9833C
982E4:  B               loc_9831E
982E6:  MOVW            R1, #0x2CD0
982EA:  ADD             R0, R1
982EC:  ADD             R4, SP, #0x20+s
982EE:  MOVS            R1, #0x10
982F0:  LDR             R3, [R0]
982F2:  LDR             R2, =(aTooltip02d - 0x982FA); "##Tooltip_%02d" ...
982F4:  MOV             R0, R4; s
982F6:  ADD             R2, PC; "##Tooltip_%02d"
982F8:  BL              sub_886C0
982FC:  MOVW            R2, #0x347
98300:  MOV             R0, R4
98302:  MOVT            R2, #0x20C
98306:  MOVS            R1, #0
98308:  BL              sub_8FD20
9830C:  LDR             R0, [SP,#0x20+var_C]
9830E:  LDR             R1, =(__stack_chk_guard_ptr - 0x98314)
98310:  ADD             R1, PC; __stack_chk_guard_ptr
98312:  LDR             R1, [R1]; __stack_chk_guard
98314:  LDR             R1, [R1]
98316:  CMP             R1, R0
98318:  ITT EQ
9831A:  ADDEQ           SP, SP, #0x18
9831C:  POPEQ           {R4,R6,R7,PC}
9831E:  BLX             __stack_chk_fail
