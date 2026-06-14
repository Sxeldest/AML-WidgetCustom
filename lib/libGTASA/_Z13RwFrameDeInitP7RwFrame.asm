; =========================================================
; Game Engine Function: _Z13RwFrameDeInitP7RwFrame
; Address            : 0x1D849C - 0x1D84A8
; =========================================================

1D849C:  PUSH            {R7,LR}
1D849E:  MOV             R7, SP
1D84A0:  BLX             j__Z14_rwFrameDeInitP7RwFrame; _rwFrameDeInit(RwFrame *)
1D84A4:  MOVS            R0, #1
1D84A6:  POP             {R7,PC}
