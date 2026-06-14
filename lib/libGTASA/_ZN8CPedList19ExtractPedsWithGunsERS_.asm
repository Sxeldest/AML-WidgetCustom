; =========================================================
; Game Engine Function: _ZN8CPedList19ExtractPedsWithGunsERS_
; Address            : 0x5485F2 - 0x54868C
; =========================================================

5485F2:  PUSH            {R4-R7,LR}
5485F4:  ADD             R7, SP, #0xC
5485F6:  PUSH.W          {R8,R9,R11}
5485FA:  MOV             R4, R1
5485FC:  MOV             R9, R0
5485FE:  LDR             R0, [R4]
548600:  CMP             R0, #0
548602:  BLE             loc_548658
548604:  ADDS            R6, R4, #4
548606:  MOV.W           R8, #0
54860A:  MOVS            R5, #0
54860C:  LDR.W           R0, [R6,R5,LSL#2]
548610:  LDRSB.W         R1, [R0,#0x71C]
548614:  RSB.W           R1, R1, R1,LSL#3
548618:  ADD.W           R0, R0, R1,LSL#2
54861C:  ADDW            R0, R0, #0x5A4; this
548620:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
548624:  CMP             R0, #1
548626:  BNE             loc_54862C
548628:  LDR             R0, [R4]
54862A:  B               loc_548652
54862C:  LDR.W           R0, [R9]
548630:  CMP             R0, #0x1D
548632:  BGT             loc_548648
548634:  ADD.W           R0, R9, R0,LSL#2
548638:  LDR.W           R1, [R6,R5,LSL#2]
54863C:  STR             R1, [R0,#4]
54863E:  LDR.W           R0, [R9]
548642:  ADDS            R0, #1
548644:  STR.W           R0, [R9]
548648:  STR.W           R8, [R6,R5,LSL#2]
54864C:  LDR             R0, [R4]
54864E:  SUBS            R0, #1
548650:  STR             R0, [R4]
548652:  ADDS            R5, #1
548654:  CMP             R5, R0
548656:  BLT             loc_54860C
548658:  MOVS            R1, #0
54865A:  MOVS            R0, #1
54865C:  LDR.W           R2, [R4,R0,LSL#2]
548660:  ADDS            R0, #1
548662:  CMP             R2, #0
548664:  ITTT NE
548666:  ADDNE.W         R3, R4, R1,LSL#2
54866A:  STRNE           R2, [R3,#4]
54866C:  ADDNE           R1, #1
54866E:  CMP             R0, #0x1F
548670:  BNE             loc_54865C
548672:  CMP             R1, #0x1D
548674:  BGT             loc_548686
548676:  ADD.W           R0, R4, R1,LSL#2
54867A:  RSB.W           R1, R1, #0x1E
54867E:  ADDS            R0, #4
548680:  LSLS            R1, R1, #2
548682:  BLX             j___aeabi_memclr8_0
548686:  POP.W           {R8,R9,R11}
54868A:  POP             {R4-R7,PC}
