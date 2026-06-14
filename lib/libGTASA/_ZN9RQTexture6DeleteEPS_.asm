; =========================================================
; Game Engine Function: _ZN9RQTexture6DeleteEPS_
; Address            : 0x1D0118 - 0x1D0210
; =========================================================

1D0118:  PUSH            {R4,R6,R7,LR}
1D011A:  ADD             R7, SP, #8
1D011C:  LDR             R1, =(_ZN9RQTexture8selectedE_ptr - 0x1D0122)
1D011E:  ADD             R1, PC; _ZN9RQTexture8selectedE_ptr
1D0120:  LDR             R1, [R1]; RQTexture::selected ...
1D0122:  LDR             R1, [R1]; RQTexture::selected
1D0124:  CMP             R1, R0
1D0126:  BNE             loc_1D0132
1D0128:  LDR             R1, =(_ZN9RQTexture8selectedE_ptr - 0x1D0130)
1D012A:  MOVS            R2, #0
1D012C:  ADD             R1, PC; _ZN9RQTexture8selectedE_ptr
1D012E:  LDR             R1, [R1]; RQTexture::selected ...
1D0130:  STR             R2, [R1]; RQTexture::selected
1D0132:  LDR             R1, =(_ZN9RQTexture8selectedE_ptr - 0x1D0138)
1D0134:  ADD             R1, PC; _ZN9RQTexture8selectedE_ptr
1D0136:  LDR             R1, [R1]; RQTexture::selected ...
1D0138:  LDR             R1, [R1,#(dword_6BCCF4 - 0x6BCCF0)]
1D013A:  CMP             R1, R0
1D013C:  BNE             loc_1D0148
1D013E:  LDR             R1, =(_ZN9RQTexture8selectedE_ptr - 0x1D0146)
1D0140:  MOVS            R2, #0
1D0142:  ADD             R1, PC; _ZN9RQTexture8selectedE_ptr
1D0144:  LDR             R1, [R1]; RQTexture::selected ...
1D0146:  STR             R2, [R1,#(dword_6BCCF4 - 0x6BCCF0)]
1D0148:  LDR             R1, =(_ZN9RQTexture8selectedE_ptr - 0x1D014E)
1D014A:  ADD             R1, PC; _ZN9RQTexture8selectedE_ptr
1D014C:  LDR             R1, [R1]; RQTexture::selected ...
1D014E:  LDR             R1, [R1,#(dword_6BCCF8 - 0x6BCCF0)]
1D0150:  CMP             R1, R0
1D0152:  BNE             loc_1D015E
1D0154:  LDR             R1, =(_ZN9RQTexture8selectedE_ptr - 0x1D015C)
1D0156:  MOVS            R2, #0
1D0158:  ADD             R1, PC; _ZN9RQTexture8selectedE_ptr
1D015A:  LDR             R1, [R1]; RQTexture::selected ...
1D015C:  STR             R2, [R1,#(dword_6BCCF8 - 0x6BCCF0)]
1D015E:  LDR             R1, =(_ZN9RQTexture8selectedE_ptr - 0x1D0164)
1D0160:  ADD             R1, PC; _ZN9RQTexture8selectedE_ptr
1D0162:  LDR             R1, [R1]; RQTexture::selected ...
1D0164:  LDR             R1, [R1,#(dword_6BCCFC - 0x6BCCF0)]
1D0166:  CMP             R1, R0
1D0168:  BNE             loc_1D0174
1D016A:  LDR             R1, =(_ZN9RQTexture8selectedE_ptr - 0x1D0172)
1D016C:  MOVS            R2, #0
1D016E:  ADD             R1, PC; _ZN9RQTexture8selectedE_ptr
1D0170:  LDR             R1, [R1]; RQTexture::selected ...
1D0172:  STR             R2, [R1,#(dword_6BCCFC - 0x6BCCF0)]
1D0174:  LDR             R1, =(renderQueue_ptr - 0x1D017C)
1D0176:  MOVS            R4, #0x19
1D0178:  ADD             R1, PC; renderQueue_ptr
1D017A:  LDR             R1, [R1]; renderQueue
1D017C:  LDR             R2, [R1]
1D017E:  LDR.W           R3, [R2,#0x274]
1D0182:  STR.W           R4, [R2,#0x278]
1D0186:  STR             R4, [R3]
1D0188:  LDR.W           R3, [R2,#0x274]
1D018C:  ADDS            R3, #4
1D018E:  STR.W           R3, [R2,#0x274]
1D0192:  LDR             R2, [R1]
1D0194:  LDR.W           R3, [R2,#0x274]
1D0198:  STR             R0, [R3]
1D019A:  LDR.W           R0, [R2,#0x274]
1D019E:  ADDS            R0, #4
1D01A0:  STR.W           R0, [R2,#0x274]
1D01A4:  LDR             R4, [R1]
1D01A6:  LDRB.W          R0, [R4,#0x259]
1D01AA:  CMP             R0, #0
1D01AC:  ITT NE
1D01AE:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D01B2:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1D01B6:  LDRD.W          R1, R2, [R4,#0x270]
1D01BA:  ADD.W           R0, R4, #0x270
1D01BE:  DMB.W           ISH
1D01C2:  SUBS            R1, R2, R1
1D01C4:  LDREX.W         R2, [R0]
1D01C8:  ADD             R2, R1
1D01CA:  STREX.W         R3, R2, [R0]
1D01CE:  CMP             R3, #0
1D01D0:  BNE             loc_1D01C4
1D01D2:  DMB.W           ISH
1D01D6:  LDRB.W          R0, [R4,#0x259]
1D01DA:  CMP             R0, #0
1D01DC:  ITT NE
1D01DE:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D01E2:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1D01E6:  LDRB.W          R0, [R4,#0x258]
1D01EA:  CMP             R0, #0
1D01EC:  ITT EQ
1D01EE:  MOVEQ           R0, R4; this
1D01F0:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1D01F4:  LDR.W           R1, [R4,#0x270]
1D01F8:  LDR.W           R0, [R4,#0x264]
1D01FC:  ADD.W           R1, R1, #0x400
1D0200:  CMP             R1, R0
1D0202:  IT LS
1D0204:  POPLS           {R4,R6,R7,PC}
1D0206:  MOV             R0, R4; this
1D0208:  POP.W           {R4,R6,R7,LR}
1D020C:  B.W             j_j__ZN11RenderQueue5FlushEv; j_RenderQueue::Flush(void)
