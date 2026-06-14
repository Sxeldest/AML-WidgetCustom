; =========================================================
; Game Engine Function: _ZN22CRealTimeShadowManagerD2Ev
; Address            : 0x5B8206 - 0x5B8220
; =========================================================

5B8206:  PUSH            {R4,R6,R7,LR}
5B8208:  ADD             R7, SP, #8
5B820A:  MOV             R4, R0
5B820C:  ADD.W           R0, R4, #0xB0; this
5B8210:  BLX.W           j__ZN13CShadowCamera7DestroyEv; CShadowCamera::Destroy(void)
5B8214:  ADD.W           R0, R4, #0xA8; this
5B8218:  BLX.W           j__ZN13CShadowCamera7DestroyEv; CShadowCamera::Destroy(void)
5B821C:  MOV             R0, R4
5B821E:  POP             {R4,R6,R7,PC}
