; =========================================================
; Game Engine Function: sub_214268
; Address            : 0x214268 - 0x2142B4
; =========================================================

214268:  PUSH            {R4-R7,LR}
21426A:  ADD             R7, SP, #0xC
21426C:  PUSH.W          {R11}
214270:  ORR.W           R2, R0, #1
214274:  MOVW            R3, #0x4D1
214278:  CLZ.W           R2, R2
21427C:  ADDS            R2, #0x20 ; ' '
21427E:  CMP             R1, #0
214280:  IT NE
214282:  CLZNE.W         R2, R1
214286:  RSB.W           R2, R2, #0x40 ; '@'
21428A:  LDR             R5, =(unk_D8F18 - 0x214296)
21428C:  MULS            R2, R3
21428E:  MOV.W           R3, #0xFFFFFFFF
214292:  ADD             R5, PC; unk_D8F18
214294:  LSRS            R4, R2, #0xC
214296:  ADD.W           R6, R5, R4,LSL#3
21429A:  LDR.W           R5, [R5,R4,LSL#3]
21429E:  LDR             R6, [R6,#4]
2142A0:  SUBS            R0, R0, R5
2142A2:  SBCS.W          R0, R1, R6
2142A6:  IT CC
2142A8:  ADDCC.W         R4, R3, R2,LSR#12
2142AC:  ADDS            R0, R4, #1
2142AE:  POP.W           {R11}
2142B2:  POP             {R4-R7,PC}
