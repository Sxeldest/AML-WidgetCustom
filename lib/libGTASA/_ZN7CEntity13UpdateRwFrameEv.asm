; =========================================================
; Game Engine Function: _ZN7CEntity13UpdateRwFrameEv
; Address            : 0x3EBFE8 - 0x3EBFF6
; =========================================================

3EBFE8:  LDR             R0, [R0,#0x18]
3EBFEA:  CMP             R0, #0
3EBFEC:  ITT NE
3EBFEE:  LDRNE           R0, [R0,#4]
3EBFF0:  BNE.W           j_j__Z20RwFrameUpdateObjectsP7RwFrame; j_RwFrameUpdateObjects(RwFrame *)
3EBFF4:  BX              LR
