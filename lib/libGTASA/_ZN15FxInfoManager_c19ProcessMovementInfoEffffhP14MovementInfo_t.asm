; =========================================================
; Game Engine Function: _ZN15FxInfoManager_c19ProcessMovementInfoEffffhP14MovementInfo_t
; Address            : 0x36A210 - 0x36A288
; =========================================================

36A210:  PUSH            {R4-R7,LR}
36A212:  ADD             R7, SP, #0xC
36A214:  PUSH.W          {R8-R11}
36A218:  SUB             SP, SP, #4
36A21A:  VPUSH           {D8}
36A21E:  SUB             SP, SP, #0x10
36A220:  LDR.W           R9, [R7,#arg_8]
36A224:  MOV             R4, R0
36A226:  MOVS            R0, #0
36A228:  VMOV.I32        Q8, #0
36A22C:  MOV             R11, R1
36A22E:  MOV             R8, R3
36A230:  STRH.W          R0, [R9,#0x28]
36A234:  ADD.W           R0, R9, #0x18
36A238:  MOV             R10, R2
36A23A:  VST1.32         {D16-D17}, [R0]
36A23E:  LDRSB.W         R1, [R4,#9]
36A242:  LDRSB.W         R5, [R4,#8]
36A246:  CMP             R5, R1
36A248:  BGE             loc_36A27A
36A24A:  VLDR            S16, [R7,#arg_0]
36A24E:  LDR             R0, [R4,#4]
36A250:  LDR.W           R0, [R0,R5,LSL#2]
36A254:  LDRB            R2, [R0,#5]
36A256:  LSLS            R2, R2, #0x1A
36A258:  BPL             loc_36A272
36A25A:  LDR             R1, [R0]
36A25C:  MOV             R2, R10
36A25E:  MOV             R3, R8
36A260:  LDR             R6, [R1,#0xC]
36A262:  LDR             R1, [R7,#arg_4]
36A264:  STRD.W          R1, R9, [SP,#0x38+var_34]
36A268:  MOV             R1, R11
36A26A:  VSTR            S16, [SP,#0x38+var_38]
36A26E:  BLX             R6
36A270:  LDRB            R1, [R4,#9]
36A272:  ADDS            R5, #1
36A274:  SXTB            R0, R1
36A276:  CMP             R5, R0
36A278:  BLT             loc_36A24E
36A27A:  ADD             SP, SP, #0x10
36A27C:  VPOP            {D8}
36A280:  ADD             SP, SP, #4
36A282:  POP.W           {R8-R11}
36A286:  POP             {R4-R7,PC}
