; =========================================================
; Game Engine Function: _ZN13RQIndexBuffer6DeleteEPS_
; Address            : 0x1D3054 - 0x1D31A2
; =========================================================

1D3054:  PUSH            {R4,R5,R7,LR}
1D3056:  ADD             R7, SP, #8
1D3058:  MOV             R4, R0
1D305A:  LDR             R0, =(_ZN13RQIndexBuffer9curBufferE_ptr - 0x1D3060)
1D305C:  ADD             R0, PC; _ZN13RQIndexBuffer9curBufferE_ptr
1D305E:  LDR             R0, [R0]; RQIndexBuffer::curBuffer ...
1D3060:  LDR             R0, [R0]; RQIndexBuffer::curBuffer
1D3062:  CMP             R0, R4
1D3064:  BNE             loc_1D3106
1D3066:  LDR             R0, =(renderQueue_ptr - 0x1D3072)
1D3068:  MOVS            R3, #0
1D306A:  LDR             R1, =(_ZN13RQIndexBuffer9curBufferE_ptr - 0x1D3074)
1D306C:  MOVS            R5, #5
1D306E:  ADD             R0, PC; renderQueue_ptr
1D3070:  ADD             R1, PC; _ZN13RQIndexBuffer9curBufferE_ptr
1D3072:  LDR             R0, [R0]; renderQueue
1D3074:  LDR             R1, [R1]; RQIndexBuffer::curBuffer ...
1D3076:  LDR             R2, [R0]
1D3078:  STR             R3, [R1]; RQIndexBuffer::curBuffer
1D307A:  LDR.W           R1, [R2,#0x274]
1D307E:  STR.W           R5, [R2,#0x278]
1D3082:  STR             R5, [R1]
1D3084:  LDR.W           R1, [R2,#0x274]
1D3088:  ADDS            R1, #4
1D308A:  STR.W           R1, [R2,#0x274]
1D308E:  LDR             R1, [R0]
1D3090:  LDR.W           R2, [R1,#0x274]
1D3094:  STR             R3, [R2]
1D3096:  LDR.W           R2, [R1,#0x274]
1D309A:  ADDS            R2, #4
1D309C:  STR.W           R2, [R1,#0x274]
1D30A0:  LDR             R5, [R0]
1D30A2:  LDRB.W          R0, [R5,#0x259]
1D30A6:  CMP             R0, #0
1D30A8:  ITT NE
1D30AA:  LDRNE.W         R0, [R5,#0x25C]; mutex
1D30AE:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1D30B2:  LDRD.W          R1, R2, [R5,#0x270]
1D30B6:  ADD.W           R0, R5, #0x270
1D30BA:  DMB.W           ISH
1D30BE:  SUBS            R1, R2, R1
1D30C0:  LDREX.W         R2, [R0]
1D30C4:  ADD             R2, R1
1D30C6:  STREX.W         R3, R2, [R0]
1D30CA:  CMP             R3, #0
1D30CC:  BNE             loc_1D30C0
1D30CE:  DMB.W           ISH
1D30D2:  LDRB.W          R0, [R5,#0x259]
1D30D6:  CMP             R0, #0
1D30D8:  ITT NE
1D30DA:  LDRNE.W         R0, [R5,#0x25C]; mutex
1D30DE:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1D30E2:  LDRB.W          R0, [R5,#0x258]
1D30E6:  CMP             R0, #0
1D30E8:  ITT EQ
1D30EA:  MOVEQ           R0, R5; this
1D30EC:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1D30F0:  LDR.W           R1, [R5,#0x270]
1D30F4:  LDR.W           R0, [R5,#0x264]
1D30F8:  ADD.W           R1, R1, #0x400
1D30FC:  CMP             R1, R0
1D30FE:  ITT HI
1D3100:  MOVHI           R0, R5; this
1D3102:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1D3106:  LDR             R0, =(renderQueue_ptr - 0x1D310E)
1D3108:  MOVS            R3, #9
1D310A:  ADD             R0, PC; renderQueue_ptr
1D310C:  LDR             R0, [R0]; renderQueue
1D310E:  LDR             R1, [R0]
1D3110:  LDR.W           R2, [R1,#0x274]
1D3114:  STR.W           R3, [R1,#0x278]
1D3118:  STR             R3, [R2]
1D311A:  LDR.W           R2, [R1,#0x274]
1D311E:  ADDS            R2, #4
1D3120:  STR.W           R2, [R1,#0x274]
1D3124:  LDR             R1, [R0]
1D3126:  LDR.W           R2, [R1,#0x274]
1D312A:  STR             R4, [R2]
1D312C:  LDR.W           R2, [R1,#0x274]
1D3130:  ADDS            R2, #4
1D3132:  STR.W           R2, [R1,#0x274]
1D3136:  LDR             R4, [R0]
1D3138:  LDRB.W          R0, [R4,#0x259]
1D313C:  CMP             R0, #0
1D313E:  ITT NE
1D3140:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D3144:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1D3148:  LDRD.W          R1, R2, [R4,#0x270]
1D314C:  ADD.W           R0, R4, #0x270
1D3150:  DMB.W           ISH
1D3154:  SUBS            R1, R2, R1
1D3156:  LDREX.W         R2, [R0]
1D315A:  ADD             R2, R1
1D315C:  STREX.W         R3, R2, [R0]
1D3160:  CMP             R3, #0
1D3162:  BNE             loc_1D3156
1D3164:  DMB.W           ISH
1D3168:  LDRB.W          R0, [R4,#0x259]
1D316C:  CMP             R0, #0
1D316E:  ITT NE
1D3170:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D3174:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1D3178:  LDRB.W          R0, [R4,#0x258]
1D317C:  CMP             R0, #0
1D317E:  ITT EQ
1D3180:  MOVEQ           R0, R4; this
1D3182:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1D3186:  LDR.W           R1, [R4,#0x270]
1D318A:  LDR.W           R0, [R4,#0x264]
1D318E:  ADD.W           R1, R1, #0x400
1D3192:  CMP             R1, R0
1D3194:  IT LS
1D3196:  POPLS           {R4,R5,R7,PC}
1D3198:  MOV             R0, R4; this
1D319A:  POP.W           {R4,R5,R7,LR}
1D319E:  B.W             j_j__ZN11RenderQueue5FlushEv; j_RenderQueue::Flush(void)
