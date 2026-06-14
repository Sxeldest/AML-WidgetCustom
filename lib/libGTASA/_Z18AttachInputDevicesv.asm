; =========================================================
; Game Engine Function: _Z18AttachInputDevicesv
; Address            : 0x5E43D0 - 0x5E43E2
; =========================================================

5E43D0:  PUSH            {R7,LR}
5E43D2:  MOV             R7, SP
5E43D4:  LDR             R1, =(sub_5E43E8+1 - 0x5E43DC)
5E43D6:  MOVS            R0, #2
5E43D8:  ADD             R1, PC; sub_5E43E8
5E43DA:  BLX.W           j__Z19RsInputDeviceAttach17RsInputDeviceTypePF13RsEventStatus7RsEventPvE; RsInputDeviceAttach(RsInputDeviceType,RsEventStatus (*)(RsEvent,void *))
5E43DE:  MOVS            R0, #1
5E43E0:  POP             {R7,PC}
