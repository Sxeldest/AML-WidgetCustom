; =========================================================
; Game Engine Function: sub_1021F0
; Address            : 0x1021F0 - 0x102270
; =========================================================

1021F0:  PUSH            {R4-R7,LR}
1021F2:  ADD             R7, SP, #0xC
1021F4:  PUSH.W          {R11}
1021F8:  SUB             SP, SP, #8
1021FA:  LDR             R0, [R0,#4]
1021FC:  CBZ             R0, loc_102268
1021FE:  LDR             R0, [R0,#0x14]
102200:  MOV             R4, R3
102202:  MOV             R5, R2
102204:  MOV             R6, R1
102206:  CBZ             R0, loc_102228
102208:  LDR             R1, =(off_23494C - 0x102216)
10220A:  MOVS            R2, #0x15
10220C:  STR             R2, [SP,#0x18+var_18]
10220E:  MOVW            R2, #0xE65D
102212:  ADD             R1, PC; off_23494C
102214:  MOVT            R2, #0x44 ; 'D'
102218:  MOV             R3, R4
10221A:  LDR             R1, [R1]; dword_23DF24
10221C:  LDR             R1, [R1]
10221E:  ADD.W           R12, R1, R2
102222:  MOV             R1, R6
102224:  MOV             R2, R5
102226:  BLX             R12
102228:  VLDR            S0, [R6]
10222C:  VLDR            D17, =-57.295776
102230:  VCVT.F64.F32    D16, S0
102234:  VMUL.F64        D16, D16, D17
102238:  VCVT.F32.F64    S0, D16
10223C:  VSTR            S0, [R6]
102240:  VLDR            S0, [R5]
102244:  VCVT.F64.F32    D16, S0
102248:  VMUL.F64        D16, D16, D17
10224C:  VCVT.F32.F64    S0, D16
102250:  VSTR            S0, [R5]
102254:  VLDR            S0, [R4]
102258:  VCVT.F64.F32    D16, S0
10225C:  VMUL.F64        D16, D16, D17
102260:  VCVT.F32.F64    S0, D16
102264:  VSTR            S0, [R4]
102268:  ADD             SP, SP, #8
10226A:  POP.W           {R11}
10226E:  POP             {R4-R7,PC}
