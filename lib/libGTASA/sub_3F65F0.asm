; =========================================================
; Game Engine Function: sub_3F65F0
; Address            : 0x3F65F0 - 0x3F660A
; =========================================================

3F65F0:  PUSH            {R0,LR}
3F65F2:  PUSH.W          {R1-R11}
3F65F6:  BLX             j__ZN4CHud15DrawVehicleNameEv; CHud::DrawVehicleName(void)
3F65FA:  POP.W           {R1-R11}
3F65FE:  SUBS            R2, #0xA2
3F6600:  CMP             R2, R0
3F6602:  POP.W           {R0,LR}
3F6606:  B.W             sub_570E7E
