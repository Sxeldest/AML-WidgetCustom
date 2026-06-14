; =========================================================
; Game Engine Function: _ZN7CCamera27SetZoomValueCamStringScriptEs
; Address            : 0x3E1618 - 0x3E167E
; =========================================================

3E1618:  PUSH            {R4,R5,R7,LR}
3E161A:  ADD             R7, SP, #8
3E161C:  MOV             R4, R0
3E161E:  MOV             R5, R1
3E1620:  LDR.W           R0, [R4,#0x364]; this
3E1624:  LDRB.W          R1, [R0,#0x3A]
3E1628:  AND.W           R1, R1, #7
3E162C:  CMP             R1, #2
3E162E:  BNE             loc_3E1644
3E1630:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
3E1634:  SUBS            R0, #1
3E1636:  CMP             R0, #4
3E1638:  BHI             loc_3E165E
3E163A:  LDR             R1, =(unk_616AE0 - 0x3E1640)
3E163C:  ADD             R1, PC; unk_616AE0
3E163E:  LDR.W           R0, [R1,R0,LSL#2]
3E1642:  B               loc_3E1660
3E1644:  UXTH            R0, R5
3E1646:  CMP             R0, #2
3E1648:  BHI             loc_3E1656
3E164A:  LDR             R0, =(unk_616AD0 - 0x3E1650)
3E164C:  ADD             R0, PC; unk_616AD0
3E164E:  LDR.W           R0, [R0,R5,LSL#2]
3E1652:  STR.W           R0, [R4,#0xD4]
3E1656:  MOVS            R0, #1
3E1658:  STRB.W          R0, [R4,#0x36]
3E165C:  POP             {R4,R5,R7,PC}
3E165E:  MOVS            R0, #0
3E1660:  UXTH            R1, R5
3E1662:  CMP             R1, #2
3E1664:  BHI             loc_3E1676
3E1666:  LDR             R1, =(off_6679C0 - 0x3E166C)
3E1668:  ADD             R1, PC; off_6679C0
3E166A:  LDR.W           R1, [R1,R5,LSL#2]
3E166E:  LDR.W           R0, [R1,R0,LSL#2]
3E1672:  STR.W           R0, [R4,#0xC0]
3E1676:  MOVS            R0, #1
3E1678:  STRB.W          R0, [R4,#0x37]
3E167C:  POP             {R4,R5,R7,PC}
