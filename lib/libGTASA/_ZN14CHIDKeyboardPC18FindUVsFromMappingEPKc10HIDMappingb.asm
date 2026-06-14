; =========================================================
; Game Engine Function: _ZN14CHIDKeyboardPC18FindUVsFromMappingEPKc10HIDMappingb
; Address            : 0x2961E0 - 0x296258
; =========================================================

2961E0:  PUSH            {R4-R7,LR}
2961E2:  ADD             R7, SP, #0xC
2961E4:  PUSH.W          {R8}
2961E8:  LDR.W           LR, [R1,#8]
2961EC:  CMP.W           LR, #0
2961F0:  BEQ             loc_296224
2961F2:  LDR             R1, [R1,#0xC]
2961F4:  ADR.W           R8, dword_296270
2961F8:  ADR             R6, dword_296284
2961FA:  MOVS            R2, #0
2961FC:  ADDS            R1, #0xC
2961FE:  MOV.W           R12, #0
296202:  MOVS            R4, #0
296204:  LDR.W           R5, [R1,#-8]
296208:  CMP             R5, R3
29620A:  BNE             loc_29621A
29620C:  LDR             R5, [R1]
29620E:  CMP             R5, #4
296210:  ITT LS
296212:  LDRLS.W         R12, [R8,R5,LSL#2]
296216:  LDRLS.W         R4, [R6,R5,LSL#2]
29621A:  ADDS            R2, #1
29621C:  ADDS            R1, #0x14
29621E:  CMP             R2, LR
296220:  BCC             loc_296204
296222:  B               loc_29622A
296224:  MOVS            R4, #0
296226:  MOV.W           R12, #0
29622A:  VMOV.32         D16[0], R4
29622E:  ADDS            R1, R4, #1
296230:  VMOV.32         D17[0], R1
296234:  ADD.W           R1, R12, #1
296238:  VMOV.32         D16[1], R1
29623C:  ADR             R1, dword_296260
29623E:  VMOV.32         D17[1], R12
296242:  VCVT.F32.S32    Q8, Q8
296246:  VLD1.64         {D18-D19}, [R1@128]
29624A:  VMUL.F32        Q8, Q8, Q9
29624E:  VST1.32         {D16-D17}, [R0]
296252:  POP.W           {R8}
296256:  POP             {R4-R7,PC}
