; =========================================================
; Game Engine Function: _ZN5CBoat8TeleportE7CVectorh
; Address            : 0x56C650 - 0x56C6F4
; =========================================================

56C650:  PUSH            {R4-R7,LR}
56C652:  ADD             R7, SP, #0xC
56C654:  PUSH.W          {R8}
56C658:  VPUSH           {D8-D10}
56C65C:  MOV             R8, R3
56C65E:  MOV             R6, R2
56C660:  MOV             R5, R1
56C662:  MOV             R4, R0
56C664:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
56C668:  LDR             R1, [R4,#0x14]
56C66A:  LDR             R0, [R7,#arg_0]
56C66C:  CBZ             R1, loc_56C67A
56C66E:  STR             R5, [R1,#0x30]
56C670:  LDR             R1, [R4,#0x14]
56C672:  STR             R6, [R1,#0x34]
56C674:  LDR             R1, [R4,#0x14]
56C676:  ADDS            R1, #0x38 ; '8'
56C678:  B               loc_56C682
56C67A:  ADD.W           R1, R4, #0xC; CEntity *
56C67E:  STRD.W          R5, R6, [R4,#4]
56C682:  CMP             R0, #0
56C684:  STR.W           R8, [R1]
56C688:  BEQ             loc_56C6D0
56C68A:  LDR             R0, [R4,#0x14]; this
56C68C:  CBZ             R0, loc_56C6CC
56C68E:  MOVS            R1, #0; x
56C690:  MOVS            R2, #0; float
56C692:  MOVS            R3, #0; float
56C694:  VLDR            S16, [R0,#0x30]
56C698:  VLDR            S18, [R0,#0x34]
56C69C:  VLDR            S20, [R0,#0x38]
56C6A0:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
56C6A4:  LDR             R0, [R4,#0x14]
56C6A6:  VLDR            S0, [R0,#0x30]
56C6AA:  VLDR            S2, [R0,#0x34]
56C6AE:  VLDR            S4, [R0,#0x38]
56C6B2:  VADD.F32        S0, S16, S0
56C6B6:  VADD.F32        S2, S18, S2
56C6BA:  VADD.F32        S4, S20, S4
56C6BE:  VSTR            S0, [R0,#0x30]
56C6C2:  VSTR            S2, [R0,#0x34]
56C6C6:  VSTR            S4, [R0,#0x38]
56C6CA:  B               loc_56C6D0
56C6CC:  MOVS            R0, #0
56C6CE:  STR             R0, [R4,#0x10]
56C6D0:  MOVS            R0, #0
56C6D2:  VMOV.I32        Q8, #0
56C6D6:  STRD.W          R0, R0, [R4,#0x58]
56C6DA:  ADD.W           R0, R4, #0x48 ; 'H'
56C6DE:  VST1.32         {D16-D17}, [R0]
56C6E2:  MOV             R0, R4; this
56C6E4:  VPOP            {D8-D10}
56C6E8:  POP.W           {R8}
56C6EC:  POP.W           {R4-R7,LR}
56C6F0:  B.W             sub_19B3B8
