; =========================================================
; Game Engine Function: _Z19psCameraBeginUpdateP8RwCamera
; Address            : 0x5E4D94 - 0x5E4DBC
; =========================================================

5E4D94:  PUSH            {R4,R6,R7,LR}
5E4D96:  ADD             R7, SP, #8
5E4D98:  LDR             R0, =(Scene_ptr - 0x5E4D9E)
5E4D9A:  ADD             R0, PC; Scene_ptr
5E4D9C:  LDR             R0, [R0]; Scene
5E4D9E:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
5E4DA0:  BLX.W           j__Z19RwCameraBeginUpdateP8RwCamera; RwCameraBeginUpdate(RwCamera *)
5E4DA4:  CMP             R0, #0
5E4DA6:  ITTT NE
5E4DA8:  MOVNE           R4, #1
5E4DAA:  MOVNE           R0, R4
5E4DAC:  POPNE           {R4,R6,R7,PC}
5E4DAE:  MOVS            R0, #0x26 ; '&'
5E4DB0:  MOVS            R1, #0
5E4DB2:  MOVS            R4, #0
5E4DB4:  BLX.W           j__Z14RsEventHandler7RsEventPv; RsEventHandler(RsEvent,void *)
5E4DB8:  MOV             R0, R4
5E4DBA:  POP             {R4,R6,R7,PC}
