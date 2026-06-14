; =========================================================
; Game Engine Function: sub_942C0
; Address            : 0x942C0 - 0x94378
; =========================================================

942C0:  PUSH            {R4-R7,LR}
942C2:  ADD             R7, SP, #0xC
942C4:  PUSH.W          {R11}
942C8:  SUB             SP, SP, #0x10
942CA:  LDR             R1, =(aPosFF - 0x942D8); "Pos=%f,%f" ...
942CC:  MOV             R6, R0
942CE:  LDR             R0, =(__stack_chk_guard_ptr - 0x942DA)
942D0:  MOV             R5, R3
942D2:  MOV             R4, R2
942D4:  ADD             R1, PC; "Pos=%f,%f"
942D6:  ADD             R0, PC; __stack_chk_guard_ptr
942D8:  ADD             R2, SP, #0x20+var_18
942DA:  ADD             R3, SP, #0x20+var_1C
942DC:  LDR             R0, [R0]; __stack_chk_guard
942DE:  LDR             R0, [R0]
942E0:  STR             R0, [SP,#0x20+var_14]
942E2:  MOV             R0, R5; s
942E4:  BLX             sscanf
942E8:  CMP             R0, #2
942EA:  BNE             loc_942F6
942EC:  LDRD.W          R1, R0, [SP,#0x20+var_1C]
942F0:  STRD.W          R0, R1, [R4,#8]
942F4:  B               loc_9435E
942F6:  LDR             R1, =(aSizeFF - 0x94302); "Size=%f,%f" ...
942F8:  ADD             R2, SP, #0x20+var_18
942FA:  ADD             R3, SP, #0x20+var_1C
942FC:  MOV             R0, R5; s
942FE:  ADD             R1, PC; "Size=%f,%f"
94300:  BLX             sscanf
94304:  CMP             R0, #2
94306:  BNE             loc_94344
94308:  MOVW            R0, #0x152C
9430C:  VLDR            S0, [SP,#0x20+var_1C]
94310:  ADD             R0, R6
94312:  VLDR            S6, [SP,#0x20+var_18]
94316:  VLDR            S4, [R0,#4]
9431A:  VLDR            S2, [R0]
9431E:  VCMP.F32        S0, S4
94322:  VMRS            APSR_nzcv, FPSCR
94326:  VCMP.F32        S6, S2
9432A:  IT GE
9432C:  VMOVGE.F32      S4, S0
94330:  VMRS            APSR_nzcv, FPSCR
94334:  IT GE
94336:  VMOVGE.F32      S2, S6
9433A:  VSTR            S2, [R4,#0x10]
9433E:  VSTR            S4, [R4,#0x14]
94342:  B               loc_9435E
94344:  LDR             R1, =(aCollapsedD - 0x9434E); "Collapsed=%d" ...
94346:  MOV             R2, SP
94348:  MOV             R0, R5; s
9434A:  ADD             R1, PC; "Collapsed=%d"
9434C:  BLX             sscanf
94350:  CMP             R0, #1
94352:  BNE             loc_9435E
94354:  LDR             R0, [SP,#0x20+var_20]
94356:  CMP             R0, #0
94358:  IT NE
9435A:  MOVNE           R0, #1
9435C:  STRB            R0, [R4,#0x18]
9435E:  LDR             R0, [SP,#0x20+var_14]
94360:  LDR             R1, =(__stack_chk_guard_ptr - 0x94366)
94362:  ADD             R1, PC; __stack_chk_guard_ptr
94364:  LDR             R1, [R1]; __stack_chk_guard
94366:  LDR             R1, [R1]
94368:  CMP             R1, R0
9436A:  ITTT EQ
9436C:  ADDEQ           SP, SP, #0x10
9436E:  POPEQ.W         {R11}
94372:  POPEQ           {R4-R7,PC}
94374:  BLX             __stack_chk_fail
