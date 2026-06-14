; =========================================================
; Game Engine Function: _ZN9CPathFind18RemoveBadStartNodeE7CVectorP12CNodeAddressPs
; Address            : 0x316230 - 0x3162F8
; =========================================================

316230:  PUSH            {R4-R7,LR}
316232:  ADD             R7, SP, #0xC
316234:  PUSH.W          {R8}
316238:  LDR.W           R12, [R7,#arg_4]
31623C:  LDRSH.W         LR, [R12]
316240:  CMP.W           LR, #2
316244:  BLT             loc_3162F2
316246:  LDR             R3, [R7,#arg_0]
316248:  LDR             R5, [R3]
31624A:  UXTH            R4, R5
31624C:  ADD.W           R4, R0, R4,LSL#2
316250:  LDR.W           R8, [R4,#0x804]
316254:  CMP.W           R8, #0
316258:  BEQ             loc_3162F2
31625A:  LDR             R6, [R3,#4]
31625C:  UXTH            R4, R6
31625E:  ADD.W           R0, R0, R4,LSL#2
316262:  LDR.W           R0, [R0,#0x804]
316266:  CMP             R0, #0
316268:  BEQ             loc_3162F2
31626A:  LSRS            R4, R5, #0x10
31626C:  LSLS            R4, R4, #3
31626E:  SUB.W           R4, R4, R5,LSR#16
316272:  LSRS            R5, R6, #0x10
316274:  LSLS            R5, R5, #3
316276:  SUB.W           R5, R5, R6,LSR#16
31627A:  ADD.W           R0, R0, R5,LSL#2
31627E:  ADDS            R0, #8
316280:  VLD1.32         {D16[0]}, [R0@32]
316284:  ADD.W           R0, R8, R4,LSL#2
316288:  ADDS            R0, #8
31628A:  VLD1.32         {D17[0]}, [R0@32]
31628E:  VMOVL.S16       Q9, D16
316292:  VMOVL.S16       Q8, D17
316296:  VCVT.F32.S32    D18, D18
31629A:  VMOV.I32        D19, #0x3E000000
31629E:  VCVT.F32.S32    D16, D16
3162A2:  VMOV.32         D17[0], R1
3162A6:  VMUL.F32        D18, D18, D19
3162AA:  VMUL.F32        D16, D16, D19
3162AE:  VMOV.32         D17[1], R2
3162B2:  VSUB.F32        D18, D18, D17
3162B6:  VSUB.F32        D16, D16, D17
3162BA:  VMUL.F32        D0, D16, D18
3162BE:  VADD.F32        S0, S0, S1
3162C2:  VCMPE.F32       S0, #0.0
3162C6:  VMRS            APSR_nzcv, FPSCR
3162CA:  BGE             loc_3162F2
3162CC:  SUB.W           R0, LR, #1
3162D0:  STRH.W          R0, [R12]
3162D4:  SXTH            R0, R0
3162D6:  CMP             R0, #1
3162D8:  BLT             loc_3162F2
3162DA:  MOVS            R0, #0
3162DC:  ADD.W           R1, R3, R0,LSL#2
3162E0:  LDR             R1, [R1,#4]
3162E2:  STR.W           R1, [R3,R0,LSL#2]
3162E6:  ADDS            R0, #1
3162E8:  LDRSH.W         R1, [R12]
3162EC:  SXTH            R0, R0
3162EE:  CMP             R0, R1
3162F0:  BLT             loc_3162DC
3162F2:  POP.W           {R8}
3162F6:  POP             {R4-R7,PC}
