; =========================================================
; Game Engine Function: _ZN15CRealTimeShadow7DestroyEv
; Address            : 0x5B7BFC - 0x5B7C44
; =========================================================

5B7BFC:  PUSH            {R4-R7,LR}
5B7BFE:  ADD             R7, SP, #0xC
5B7C00:  PUSH.W          {R11}
5B7C04:  MOV             R4, R0
5B7C06:  LDR             R5, [R4,#8]
5B7C08:  CBZ             R5, loc_5B7C1A
5B7C0A:  MOV             R0, R5; this
5B7C0C:  BLX.W           j__ZN13CShadowCamera7DestroyEv; CShadowCamera::Destroy(void)
5B7C10:  MOV             R0, R5; void *
5B7C12:  BLX.W           _ZdlPv; operator delete(void *)
5B7C16:  MOVS            R0, #0
5B7C18:  STR             R0, [R4,#8]
5B7C1A:  MOV.W           R0, #0xFFFFFFFF
5B7C1E:  MOVS            R6, #0
5B7C20:  STR             R0, [R4,#0x18]
5B7C22:  LDR             R0, [R4,#0x1C]
5B7C24:  STR             R6, [R4]
5B7C26:  CBZ             R0, loc_5B7C3E
5B7C28:  MOVS            R1, #0
5B7C2A:  LDR             R5, [R0,#4]
5B7C2C:  BLX.W           j__Z25_rwObjectHasFrameSetFramePvP7RwFrame; _rwObjectHasFrameSetFrame(void *,RwFrame *)
5B7C30:  MOV             R0, R5
5B7C32:  BLX.W           j__Z14RwFrameDestroyP7RwFrame; RwFrameDestroy(RwFrame *)
5B7C36:  LDR             R0, [R4,#0x1C]
5B7C38:  BLX.W           j__Z14RpLightDestroyP7RpLight; RpLightDestroy(RpLight *)
5B7C3C:  STR             R6, [R4,#0x1C]
5B7C3E:  POP.W           {R11}
5B7C42:  POP             {R4-R7,PC}
