; =========================================================
; Game Engine Function: _ZN31CTaskComplexEnterCarAsPassenger9SerializeEv
; Address            : 0x4FD634 - 0x4FD74A
; =========================================================

4FD634:  PUSH            {R4-R7,LR}
4FD636:  ADD             R7, SP, #0xC
4FD638:  PUSH.W          {R11}
4FD63C:  SUB             SP, SP, #8
4FD63E:  MOV             R4, R0
4FD640:  LDR             R0, [R4]
4FD642:  LDR             R1, [R0,#0x14]
4FD644:  MOV             R0, R4
4FD646:  BLX             R1
4FD648:  MOV             R5, R0
4FD64A:  LDR             R0, =(UseDataFence_ptr - 0x4FD650)
4FD64C:  ADD             R0, PC; UseDataFence_ptr
4FD64E:  LDR             R0, [R0]; UseDataFence
4FD650:  LDRB            R0, [R0]
4FD652:  CMP             R0, #0
4FD654:  IT NE
4FD656:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FD65A:  MOVS            R0, #4; byte_count
4FD65C:  BLX             malloc
4FD660:  MOV             R6, R0
4FD662:  MOVS            R1, #byte_4; void *
4FD664:  STR             R5, [R6]
4FD666:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FD66A:  MOV             R0, R6; p
4FD66C:  BLX             free
4FD670:  LDR             R0, [R4]
4FD672:  LDR             R1, [R0,#0x14]
4FD674:  MOV             R0, R4
4FD676:  BLX             R1
4FD678:  CMP.W           R0, #0x2BC
4FD67C:  BNE             loc_4FD6AC
4FD67E:  LDR             R0, [R4,#0xC]; CVehicle *
4FD680:  CBZ             R0, loc_4FD6C8
4FD682:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4FD686:  MOV             R5, R0
4FD688:  LDR             R0, =(UseDataFence_ptr - 0x4FD68E)
4FD68A:  ADD             R0, PC; UseDataFence_ptr
4FD68C:  LDR             R0, [R0]; UseDataFence
4FD68E:  LDRB            R0, [R0]
4FD690:  CMP             R0, #0
4FD692:  IT NE
4FD694:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FD698:  MOVS            R0, #4; byte_count
4FD69A:  BLX             malloc
4FD69E:  MOV             R6, R0
4FD6A0:  MOVS            R1, #byte_4; void *
4FD6A2:  STR             R5, [R6]
4FD6A4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FD6A8:  MOV             R0, R6
4FD6AA:  B               loc_4FD6F0
4FD6AC:  LDR             R0, [R4]
4FD6AE:  LDR             R1, [R0,#0x14]
4FD6B0:  MOV             R0, R4
4FD6B2:  BLX             R1
4FD6B4:  MOV             R1, R0; int
4FD6B6:  MOV.W           R0, #0x2BC; int
4FD6BA:  ADD             SP, SP, #8
4FD6BC:  POP.W           {R11}
4FD6C0:  POP.W           {R4-R7,LR}
4FD6C4:  B.W             sub_1941D4
4FD6C8:  LDR             R0, =(UseDataFence_ptr - 0x4FD6CE)
4FD6CA:  ADD             R0, PC; UseDataFence_ptr
4FD6CC:  LDR             R0, [R0]; UseDataFence
4FD6CE:  LDRB            R0, [R0]
4FD6D0:  CMP             R0, #0
4FD6D2:  IT NE
4FD6D4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FD6D8:  MOVS            R0, #4; byte_count
4FD6DA:  BLX             malloc
4FD6DE:  MOV             R5, R0
4FD6E0:  MOV.W           R0, #0xFFFFFFFF
4FD6E4:  STR             R0, [R5]
4FD6E6:  MOV             R0, R5; this
4FD6E8:  MOVS            R1, #byte_4; void *
4FD6EA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FD6EE:  MOV             R0, R5; p
4FD6F0:  BLX             free
4FD6F4:  LDR             R0, =(UseDataFence_ptr - 0x4FD6FA)
4FD6F6:  ADD             R0, PC; UseDataFence_ptr
4FD6F8:  LDR             R0, [R0]; UseDataFence
4FD6FA:  LDRB            R0, [R0]
4FD6FC:  CMP             R0, #0
4FD6FE:  IT NE
4FD700:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FD704:  MOVS            R0, #4; byte_count
4FD706:  BLX             malloc
4FD70A:  MOV             R5, R0
4FD70C:  LDR             R0, [R4,#0x1C]
4FD70E:  STR             R0, [R5]
4FD710:  MOV             R0, R5; this
4FD712:  MOVS            R1, #byte_4; void *
4FD714:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FD718:  MOV             R0, R5; p
4FD71A:  BLX             free
4FD71E:  LDR             R0, =(UseDataFence_ptr - 0x4FD726)
4FD720:  LDRB            R1, [R4,#0x10]
4FD722:  ADD             R0, PC; UseDataFence_ptr
4FD724:  LDR             R0, [R0]; UseDataFence
4FD726:  LDRB            R0, [R0]
4FD728:  UBFX.W          R1, R1, #3, #1
4FD72C:  STRB.W          R1, [R7,#var_11]
4FD730:  CMP             R0, #0
4FD732:  IT NE
4FD734:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FD738:  SUB.W           R0, R7, #-var_11; this
4FD73C:  MOVS            R1, #(stderr+1); void *
4FD73E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FD742:  ADD             SP, SP, #8
4FD744:  POP.W           {R11}
4FD748:  POP             {R4-R7,PC}
