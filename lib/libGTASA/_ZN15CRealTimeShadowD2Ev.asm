; =========================================================
; Game Engine Function: _ZN15CRealTimeShadowD2Ev
; Address            : 0x5B7BB2 - 0x5B7BFC
; =========================================================

5B7BB2:  PUSH            {R4-R7,LR}
5B7BB4:  ADD             R7, SP, #0xC
5B7BB6:  PUSH.W          {R11}
5B7BBA:  MOV             R4, R0
5B7BBC:  LDR             R5, [R4,#8]
5B7BBE:  CBZ             R5, loc_5B7BD0
5B7BC0:  MOV             R0, R5; this
5B7BC2:  BLX.W           j__ZN13CShadowCamera7DestroyEv; CShadowCamera::Destroy(void)
5B7BC6:  MOV             R0, R5; void *
5B7BC8:  BLX.W           _ZdlPv; operator delete(void *)
5B7BCC:  MOVS            R0, #0
5B7BCE:  STR             R0, [R4,#8]
5B7BD0:  MOV.W           R0, #0xFFFFFFFF
5B7BD4:  MOVS            R6, #0
5B7BD6:  STR             R0, [R4,#0x18]
5B7BD8:  LDR             R0, [R4,#0x1C]
5B7BDA:  STR             R6, [R4]
5B7BDC:  CBZ             R0, loc_5B7BF4
5B7BDE:  MOVS            R1, #0
5B7BE0:  LDR             R5, [R0,#4]
5B7BE2:  BLX.W           j__Z25_rwObjectHasFrameSetFramePvP7RwFrame; _rwObjectHasFrameSetFrame(void *,RwFrame *)
5B7BE6:  MOV             R0, R5
5B7BE8:  BLX.W           j__Z14RwFrameDestroyP7RwFrame; RwFrameDestroy(RwFrame *)
5B7BEC:  LDR             R0, [R4,#0x1C]
5B7BEE:  BLX.W           j__Z14RpLightDestroyP7RpLight; RpLightDestroy(RpLight *)
5B7BF2:  STR             R6, [R4,#0x1C]
5B7BF4:  MOV             R0, R4
5B7BF6:  POP.W           {R11}
5B7BFA:  POP             {R4-R7,PC}
