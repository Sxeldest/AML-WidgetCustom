; =========================================================
; Game Engine Function: sub_AF2B0
; Address            : 0xAF2B0 - 0xAF45E
; =========================================================

AF2B0:  PUSH            {R4-R7,LR}
AF2B2:  ADD             R7, SP, #0xC
AF2B4:  PUSH.W          {R8,R9,R11}
AF2B8:  MOV             R1, R0
AF2BA:  LDR             R0, [R0,#4]
AF2BC:  CMP             R0, #1
AF2BE:  BLT             loc_AF3A8
AF2C0:  LDR             R2, =(off_114D5C - 0xAF2CE)
AF2C2:  MOVW            R3, #0x18C4
AF2C6:  VLDR            S6, =0.0
AF2CA:  ADD             R2, PC; off_114D5C
AF2CC:  LDR.W           LR, [R1,#0x14]
AF2D0:  VMOV.F32        S12, S6
AF2D4:  VLDR            S10, =-0.0
AF2D8:  LDR             R2, [R2]; dword_1ACF68
AF2DA:  ADD.W           R1, LR, R0,LSL#1
AF2DE:  LDR             R2, [R2]
AF2E0:  ADD             R3, R2
AF2E2:  LDR.W           R8, [R3]
AF2E6:  VLDR            S4, [R3,#4]
AF2EA:  MOVS            R3, #0
AF2EC:  ADD.W           R12, R8, #0xC
AF2F0:  VLDR            S2, [R8,#0x10]
AF2F4:  VADD.F32        S8, S4, S6
AF2F8:  VDIV.F32        S2, S4, S2
AF2FC:  VMOV.F32        S14, S6
AF300:  ADD.W           R9, LR, R3,LSL#1
AF304:  MOV             R5, R9
AF306:  CMP             R5, R1
AF308:  BCS             loc_AF332
AF30A:  LDRH.W          R6, [R5],#2
AF30E:  CMP             R6, #0xD
AF310:  BEQ             loc_AF306
AF312:  CMP             R6, #0xA
AF314:  BEQ             loc_AF33C
AF316:  LDR.W           R2, [R8]
AF31A:  LDR.W           R4, [R8,#8]
AF31E:  CMP             R2, R6
AF320:  MOV             R2, R12
AF322:  IT GT
AF324:  ADDGT.W         R2, R4, R6,LSL#2
AF328:  VLDR            S3, [R2]
AF32C:  VMLA.F32        S14, S2, S3
AF330:  B               loc_AF306
AF332:  VMOV.F32        S5, S6
AF336:  VMOV.F32        S3, S6
AF33A:  B               loc_AF356
AF33C:  VCMP.F32        S14, #0.0
AF340:  VMRS            APSR_nzcv, FPSCR
AF344:  IT LS
AF346:  VMOVLS.F32      S14, S6
AF34A:  VMOV.F32        S3, S14
AF34E:  VMOV.F32        S5, S8
AF352:  VMOV.F32        S14, S6
AF356:  VCMP.F32        S5, #0.0
AF35A:  SUB.W           R4, R5, R9
AF35E:  VMRS            APSR_nzcv, FPSCR
AF362:  VMOV.F32        S7, S10
AF366:  VCMP.F32        S14, #0.0
AF36A:  IT EQ
AF36C:  VMOVEQ.F32      S7, S4
AF370:  VMRS            APSR_nzcv, FPSCR
AF374:  IT GT
AF376:  VMOVGT.F32      S7, S4
AF37A:  CMP             R4, #2
AF37C:  BLT             loc_AF3A8
AF37E:  CBNZ            R3, loc_AF38E
AF380:  VADD.F32        S9, S12, S6
AF384:  VCMP.F32        S9, S1
AF388:  VMRS            APSR_nzcv, FPSCR
AF38C:  BGT             loc_AF3AE
AF38E:  VADD.F32        S5, S5, S7
AF392:  ASRS            R4, R4, #1
AF394:  VADD.F32        S12, S12, S5
AF398:  VCMP.F32        S12, S1
AF39C:  VMRS            APSR_nzcv, FPSCR
AF3A0:  BGT             loc_AF3B6
AF3A2:  ADD             R3, R4
AF3A4:  CMP             R3, R0
AF3A6:  BLT             loc_AF2FC
AF3A8:  POP.W           {R8,R9,R11}
AF3AC:  POP             {R4-R7,PC}
AF3AE:  MOVS            R0, #0
AF3B0:  POP.W           {R8,R9,R11}
AF3B4:  POP             {R4-R7,PC}
AF3B6:  VCMP.F32        S0, #0.0
AF3BA:  VMRS            APSR_nzcv, FPSCR
AF3BE:  BPL             loc_AF3C8
AF3C0:  MOV             R0, R3
AF3C2:  POP.W           {R8,R9,R11}
AF3C6:  POP             {R4-R7,PC}
AF3C8:  VCMP.F32        S3, S14
AF3CC:  VMRS            APSR_nzcv, FPSCR
AF3D0:  IT MI
AF3D2:  VMOVMI.F32      S3, S14
AF3D6:  VCMP.F32        S3, S0
AF3DA:  VMRS            APSR_nzcv, FPSCR
AF3DE:  BLE             loc_AF430
AF3E0:  MOV             R1, R4
AF3E2:  CMP             R4, #1
AF3E4:  VLDR            S4, =0.0
AF3E8:  IT LE
AF3EA:  MOVLE           R1, #1
AF3EC:  VMOV.F32        S6, #-1.0
AF3F0:  MOV             R0, R3
AF3F2:  VMOV.F32        S8, S6
AF3F6:  LDRH.W          R5, [LR,R0,LSL#1]
AF3FA:  CMP             R5, #0xA
AF3FC:  BEQ             loc_AF418
AF3FE:  LDR.W           R2, [R8]
AF402:  LDR.W           R6, [R8,#8]
AF406:  CMP             R2, R5
AF408:  MOV             R2, R12
AF40A:  IT GT
AF40C:  ADDGT.W         R2, R6, R5,LSL#2
AF410:  VLDR            S8, [R2]
AF414:  VMUL.F32        S8, S8, S2
AF418:  VADD.F32        S10, S4, S8
AF41C:  VCMP.F32        S10, S0
AF420:  VMRS            APSR_nzcv, FPSCR
AF424:  BGT             loc_AF444
AF426:  VMOV.F32        S4, S10
AF42A:  ADDS            R0, #1
AF42C:  SUBS            R1, #1
AF42E:  BNE             loc_AF3F2
AF430:  ADDS            R0, R4, R3
AF432:  SUBS            R1, R0, #1
AF434:  LDRH.W          R2, [LR,R1,LSL#1]
AF438:  CMP             R2, #0xA
AF43A:  IT EQ
AF43C:  MOVEQ           R0, R1
AF43E:  POP.W           {R8,R9,R11}
AF442:  POP             {R4-R7,PC}
AF444:  VMOV.F32        S2, #0.5
AF448:  VMLA.F32        S4, S8, S2
AF44C:  VCMP.F32        S4, S0
AF450:  VMRS            APSR_nzcv, FPSCR
AF454:  BGT             loc_AF3A8
AF456:  ADDS            R0, #1
AF458:  POP.W           {R8,R9,R11}
AF45C:  POP             {R4-R7,PC}
