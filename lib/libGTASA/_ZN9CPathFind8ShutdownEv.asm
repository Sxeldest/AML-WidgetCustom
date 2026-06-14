; =========================================================
; Game Engine Function: _ZN9CPathFind8ShutdownEv
; Address            : 0x3191E0 - 0x319296
; =========================================================

3191E0:  PUSH            {R4-R7,LR}
3191E2:  ADD             R7, SP, #0xC
3191E4:  PUSH.W          {R8-R11}
3191E8:  SUB             SP, SP, #4
3191EA:  ADDW            R4, R0, #0x8E4
3191EE:  MOVS            R5, #0
3191F0:  MOVW            R11, #0x63C7
3191F4:  MOVW            R6, #0x63BF
3191F8:  MOVW            R8, #0x63B7
3191FC:  MOVW            R9, #0x63AF
319200:  MOVW            R10, #0x63A7
319204:  LDR.W           R0, [R4,#-0xE0]
319208:  CMP             R0, #0
31920A:  ITT NE
31920C:  ADDNE.W         R0, R5, R10; this
319210:  BLXNE           j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
319214:  LDR.W           R0, [R4,#-0xC0]
319218:  CMP             R0, #0
31921A:  ITT NE
31921C:  ADDNE.W         R0, R5, R9; this
319220:  BLXNE           j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
319224:  LDR.W           R0, [R4,#-0xA0]
319228:  CMP             R0, #0
31922A:  ITT NE
31922C:  ADDNE.W         R0, R5, R8; this
319230:  BLXNE           j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
319234:  LDR.W           R0, [R4,#-0x80]
319238:  CMP             R0, #0
31923A:  ITT NE
31923C:  ADDNE           R0, R5, R6; this
31923E:  BLXNE           j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
319242:  LDR.W           R0, [R4,#-0x60]
319246:  CMP             R0, #0
319248:  ITT NE
31924A:  ADDNE.W         R0, R5, R11; this
31924E:  BLXNE           j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
319252:  LDR.W           R0, [R4,#-0x40]
319256:  CMP             R0, #0
319258:  ITTT NE
31925A:  MOVWNE          R0, #0x63CF
31925E:  ADDNE           R0, R5; this
319260:  BLXNE           j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
319264:  LDR.W           R0, [R4,#-0x20]
319268:  CMP             R0, #0
31926A:  ITTT NE
31926C:  MOVWNE          R0, #0x63D7
319270:  ADDNE           R0, R5; this
319272:  BLXNE           j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
319276:  LDR             R0, [R4]
319278:  CMP             R0, #0
31927A:  ITTT NE
31927C:  MOVWNE          R0, #0x63DF
319280:  ADDNE           R0, R5; this
319282:  BLXNE           j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
319286:  ADDS            R5, #1
319288:  ADDS            R4, #4
31928A:  CMP             R5, #8
31928C:  BNE             loc_319204
31928E:  ADD             SP, SP, #4
319290:  POP.W           {R8-R11}
319294:  POP             {R4-R7,PC}
