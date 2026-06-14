; =========================================================
; Game Engine Function: _ZN22CRealTimeShadowManager4InitEv
; Address            : 0x5B8220 - 0x5B82AC
; =========================================================

5B8220:  PUSH            {R4-R7,LR}
5B8222:  ADD             R7, SP, #0xC
5B8224:  PUSH.W          {R8-R10}
5B8228:  SUB             SP, SP, #8
5B822A:  MOV             R8, R0
5B822C:  LDRB.W          R0, [R8]
5B8230:  CBNZ            R0, loc_5B82A4
5B8232:  ADD.W           R5, R8, #4
5B8236:  MOVS            R6, #0
5B8238:  MOV.W           R9, #0xFFFFFFFF
5B823C:  MOV.W           R10, #1
5B8240:  MOVS            R4, #0
5B8242:  MOVS            R0, #0x40 ; '@'; unsigned int
5B8244:  BLX.W           _Znwj; operator new(uint)
5B8248:  CMP             R4, #0xC
5B824A:  MOV.W           R1, #2
5B824E:  STR             R6, [R0]
5B8250:  MOV.W           R2, #0; bool
5B8254:  STRD.W          R9, R6, [R0,#0x18]
5B8258:  MOV.W           R3, #4; int
5B825C:  STR             R6, [R0,#0x10]
5B825E:  STRB            R6, [R0,#0xC]
5B8260:  STRB            R6, [R0,#0x14]
5B8262:  STRH            R6, [R0,#4]
5B8264:  STR             R6, [R0,#8]
5B8266:  STR.W           R0, [R5,R4,LSL#2]
5B826A:  STR.W           R10, [SP,#0x20+var_20]; bool
5B826E:  IT LT
5B8270:  MOVLT           R1, #1
5B8272:  CMP             R4, #4
5B8274:  IT LT
5B8276:  MOVLT           R1, #0; int
5B8278:  BLX.W           j__ZN15CRealTimeShadow6CreateEibib; CRealTimeShadow::Create(int,bool,int,bool)
5B827C:  ADDS            R4, #1
5B827E:  CMP             R4, #0x28 ; '('
5B8280:  BNE             loc_5B8242
5B8282:  ADD.W           R0, R8, #0xA8; this
5B8286:  MOVS            R1, #7; int
5B8288:  BLX.W           j__ZN13CShadowCamera6CreateEi; CShadowCamera::Create(int)
5B828C:  ADD.W           R5, R8, #0xB0
5B8290:  MOVS            R1, #7; int
5B8292:  MOV             R0, R5; this
5B8294:  BLX.W           j__ZN13CShadowCamera6CreateEi; CShadowCamera::Create(int)
5B8298:  MOV             R0, R5; this
5B829A:  BLX.W           j__ZN13CShadowCamera18MakeGradientRasterEv; CShadowCamera::MakeGradientRaster(void)
5B829E:  MOVS            R0, #1
5B82A0:  STRB.W          R0, [R8]
5B82A4:  ADD             SP, SP, #8
5B82A6:  POP.W           {R8-R10}
5B82AA:  POP             {R4-R7,PC}
