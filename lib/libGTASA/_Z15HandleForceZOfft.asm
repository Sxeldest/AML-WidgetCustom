; =========================================================
; Game Engine Function: _Z15HandleForceZOfft
; Address            : 0x1B014C - 0x1B02C2
; =========================================================

1B014C:  PUSH            {R4,R6,R7,LR}
1B014E:  ADD             R7, SP, #8
1B0150:  LDR             R1, =(textureForceZOff_ptr - 0x1B0158)
1B0152:  LSLS            R0, R0, #0x1B
1B0154:  ADD             R1, PC; textureForceZOff_ptr
1B0156:  LDR             R1, [R1]; textureForceZOff
1B0158:  LDR             R1, [R1]
1B015A:  BMI             loc_1B0210
1B015C:  CMP             R1, #0
1B015E:  IT EQ
1B0160:  POPEQ           {R4,R6,R7,PC}
1B0162:  LDR             R0, =(dword_6B3208 - 0x1B0168)
1B0164:  ADD             R0, PC; dword_6B3208
1B0166:  LDR             R0, [R0,#(dword_6B3228 - 0x6B3208)]
1B0168:  CMP             R0, #0
1B016A:  BEQ             loc_1B0204
1B016C:  LDR             R0, =(renderQueue_ptr - 0x1B0174)
1B016E:  MOVS            R3, #0x21 ; '!'
1B0170:  ADD             R0, PC; renderQueue_ptr
1B0172:  LDR             R0, [R0]; renderQueue
1B0174:  LDR             R1, [R0]
1B0176:  LDR.W           R2, [R1,#0x274]
1B017A:  STR.W           R3, [R1,#0x278]
1B017E:  STR             R3, [R2]
1B0180:  MOVS            R3, #1
1B0182:  LDR.W           R2, [R1,#0x274]
1B0186:  ADDS            R2, #4
1B0188:  STR.W           R2, [R1,#0x274]
1B018C:  LDR             R1, [R0]
1B018E:  LDR.W           R2, [R1,#0x274]
1B0192:  STR             R3, [R2]
1B0194:  LDR.W           R2, [R1,#0x274]
1B0198:  ADDS            R2, #4
1B019A:  STR.W           R2, [R1,#0x274]
1B019E:  LDR             R4, [R0]
1B01A0:  LDRB.W          R0, [R4,#0x259]
1B01A4:  CMP             R0, #0
1B01A6:  ITT NE
1B01A8:  LDRNE.W         R0, [R4,#0x25C]; mutex
1B01AC:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1B01B0:  LDRD.W          R1, R2, [R4,#0x270]
1B01B4:  ADD.W           R0, R4, #0x270
1B01B8:  DMB.W           ISH
1B01BC:  SUBS            R1, R2, R1
1B01BE:  LDREX.W         R2, [R0]
1B01C2:  ADD             R2, R1
1B01C4:  STREX.W         R3, R2, [R0]
1B01C8:  CMP             R3, #0
1B01CA:  BNE             loc_1B01BE
1B01CC:  DMB.W           ISH
1B01D0:  LDRB.W          R0, [R4,#0x259]
1B01D4:  CMP             R0, #0
1B01D6:  ITT NE
1B01D8:  LDRNE.W         R0, [R4,#0x25C]; mutex
1B01DC:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1B01E0:  LDRB.W          R0, [R4,#0x258]
1B01E4:  CMP             R0, #0
1B01E6:  ITT EQ
1B01E8:  MOVEQ           R0, R4; this
1B01EA:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1B01EE:  LDR.W           R1, [R4,#0x270]
1B01F2:  LDR.W           R0, [R4,#0x264]
1B01F6:  ADD.W           R1, R1, #0x400
1B01FA:  CMP             R1, R0
1B01FC:  ITT HI
1B01FE:  MOVHI           R0, R4; this
1B0200:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1B0204:  LDR             R0, =(textureForceZOff_ptr - 0x1B020C)
1B0206:  MOVS            R1, #0
1B0208:  ADD             R0, PC; textureForceZOff_ptr
1B020A:  LDR             R0, [R0]; textureForceZOff
1B020C:  STR             R1, [R0]
1B020E:  POP             {R4,R6,R7,PC}
1B0210:  CBZ             R1, loc_1B0214
1B0212:  POP             {R4,R6,R7,PC}
1B0214:  LDR             R0, =(dword_6B3208 - 0x1B021A)
1B0216:  ADD             R0, PC; dword_6B3208
1B0218:  LDR             R0, [R0,#(dword_6B3228 - 0x6B3208)]
1B021A:  CMP             R0, #0
1B021C:  BEQ             loc_1B02B6
1B021E:  LDR             R0, =(renderQueue_ptr - 0x1B0226)
1B0220:  MOVS            R3, #0x21 ; '!'
1B0222:  ADD             R0, PC; renderQueue_ptr
1B0224:  LDR             R0, [R0]; renderQueue
1B0226:  LDR             R1, [R0]
1B0228:  LDR.W           R2, [R1,#0x274]
1B022C:  STR.W           R3, [R1,#0x278]
1B0230:  STR             R3, [R2]
1B0232:  MOVS            R3, #0
1B0234:  LDR.W           R2, [R1,#0x274]
1B0238:  ADDS            R2, #4
1B023A:  STR.W           R2, [R1,#0x274]
1B023E:  LDR             R1, [R0]
1B0240:  LDR.W           R2, [R1,#0x274]
1B0244:  STR             R3, [R2]
1B0246:  LDR.W           R2, [R1,#0x274]
1B024A:  ADDS            R2, #4
1B024C:  STR.W           R2, [R1,#0x274]
1B0250:  LDR             R4, [R0]
1B0252:  LDRB.W          R0, [R4,#0x259]
1B0256:  CMP             R0, #0
1B0258:  ITT NE
1B025A:  LDRNE.W         R0, [R4,#0x25C]; mutex
1B025E:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1B0262:  LDRD.W          R1, R2, [R4,#0x270]
1B0266:  ADD.W           R0, R4, #0x270
1B026A:  DMB.W           ISH
1B026E:  SUBS            R1, R2, R1
1B0270:  LDREX.W         R2, [R0]
1B0274:  ADD             R2, R1
1B0276:  STREX.W         R3, R2, [R0]
1B027A:  CMP             R3, #0
1B027C:  BNE             loc_1B0270
1B027E:  DMB.W           ISH
1B0282:  LDRB.W          R0, [R4,#0x259]
1B0286:  CMP             R0, #0
1B0288:  ITT NE
1B028A:  LDRNE.W         R0, [R4,#0x25C]; mutex
1B028E:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1B0292:  LDRB.W          R0, [R4,#0x258]
1B0296:  CMP             R0, #0
1B0298:  ITT EQ
1B029A:  MOVEQ           R0, R4; this
1B029C:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1B02A0:  LDR.W           R1, [R4,#0x270]
1B02A4:  LDR.W           R0, [R4,#0x264]
1B02A8:  ADD.W           R1, R1, #0x400
1B02AC:  CMP             R1, R0
1B02AE:  ITT HI
1B02B0:  MOVHI           R0, R4; this
1B02B2:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1B02B6:  LDR             R0, =(textureForceZOff_ptr - 0x1B02BE)
1B02B8:  MOVS            R1, #1
1B02BA:  ADD             R0, PC; textureForceZOff_ptr
1B02BC:  LDR             R0, [R0]; textureForceZOff
1B02BE:  STR             R1, [R0]
1B02C0:  POP             {R4,R6,R7,PC}
