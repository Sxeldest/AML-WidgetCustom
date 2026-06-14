; =========================================================
; Game Engine Function: sub_150670
; Address            : 0x150670 - 0x15077E
; =========================================================

150670:  PUSH            {R4-R7,LR}
150672:  ADD             R7, SP, #0xC
150674:  PUSH.W          {R8-R10}
150678:  SUB             SP, SP, #0x20
15067A:  MOV             R4, R0
15067C:  LDR             R0, [R0]
15067E:  MOV             R5, R1
150680:  MOV             R9, R3
150682:  MOV             R8, R2
150684:  LDR             R1, [R0,#8]
150686:  MOV             R0, R4
150688:  BLX             R1
15068A:  ADD.W           R10, SP, #0x38+var_2C
15068E:  MOV             R6, R0
150690:  MOV             R1, R5
150692:  MOV             R0, R10
150694:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
150698:  MOV             R2, R9
15069A:  CMP.W           R9, #0
15069E:  IT NE
1506A0:  MOVNE           R2, #4
1506A2:  BFI.W           R2, R6, #1, #1
1506A6:  BFI.W           R2, R6, #3, #1
1506AA:  ADD             R0, SP, #0x38+var_20
1506AC:  MOV             R1, R10
1506AE:  BL              sub_157FD4
1506B2:  LDRB.W          R0, [SP,#0x38+var_2C]
1506B6:  LSLS            R0, R0, #0x1F
1506B8:  ITT NE
1506BA:  LDRNE           R0, [SP,#0x38+var_24]; void *
1506BC:  BLXNE           j__ZdlPv; operator delete(void *)
1506C0:  MOVS            R0, #0x38 ; '8'; unsigned int
1506C2:  BLX             j__Znwj; operator new(uint)
1506C6:  MOV             R10, R0
1506C8:  LDRD.W          R1, R0, [R7,#arg_0]
1506CC:  LDR             R2, [SP,#0x38+var_20]
1506CE:  STR             R2, [SP,#0x38+var_1C]
1506D0:  MOVS            R2, #0
1506D2:  STR             R2, [SP,#0x38+var_20]
1506D4:  STRD.W          R1, R0, [SP,#0x38+var_38]
1506D8:  ADD             R1, SP, #0x38+var_1C
1506DA:  MOV             R0, R10
1506DC:  MOV             R2, R8
1506DE:  MOV             R3, R9
1506E0:  BL              sub_151890
1506E4:  LDR             R0, [SP,#0x38+var_1C]
1506E6:  CBZ             R0, loc_150708
1506E8:  ADDS            R1, R0, #4
1506EA:  DMB.W           ISH
1506EE:  LDREX.W         R2, [R1]
1506F2:  SUBS            R3, R2, #1
1506F4:  STREX.W         R6, R3, [R1]
1506F8:  CMP             R6, #0
1506FA:  BNE             loc_1506EE
1506FC:  DMB.W           ISH
150700:  CBNZ            R2, loc_150708
150702:  LDR             R1, [R0]
150704:  LDR             R1, [R1,#8]
150706:  BLX             R1
150708:  MOVS            R0, #0xC; unsigned int
15070A:  BLX             j__Znwj; operator new(uint)
15070E:  LDR             R1, =(_ZTI12AudioChannel - 0x15071C); `typeinfo for'AudioChannel ...
150710:  MOV             R6, R0
150712:  LDR             R2, =(_ZTI19AudioChannelVehicle - 0x150720); `typeinfo for'AudioChannelVehicle ...
150714:  ADDS            R0, R4, #4
150716:  LDR             R5, [R4,#0xC]
150718:  ADD             R1, PC; lpstype
15071A:  LDR             R3, [R4,#4]
15071C:  ADD             R2, PC; lpdtype
15071E:  STRD.W          R3, R0, [R6]
150722:  ADDS            R0, R5, #1
150724:  STR             R0, [R4,#0xC]
150726:  MOV.W           R0, #0
15072A:  ADC.W           R5, R0, #0
15072E:  STR             R6, [R4,#4]
150730:  STR.W           R10, [R6,#8]
150734:  MOV             R0, R4; lpsrc
150736:  STR             R6, [R3,#4]
150738:  MOVS            R3, #0; s2d
15073A:  BLX             j___dynamic_cast
15073E:  CBZ             R0, loc_150752
150740:  CBNZ            R5, loc_150752
150742:  LDR             R0, =(off_234A54 - 0x150748)
150744:  ADD             R0, PC; off_234A54
150746:  LDR             R0, [R0]; dword_381A0C
150748:  LDR             R1, [R0]
15074A:  LDR             R0, [R6,#8]
15074C:  LDR             R1, [R1,#0x74]
15074E:  BL              sub_151D54
150752:  LDR             R0, [SP,#0x38+var_20]
150754:  CBZ             R0, loc_150776
150756:  ADDS            R1, R0, #4
150758:  DMB.W           ISH
15075C:  LDREX.W         R2, [R1]
150760:  SUBS            R3, R2, #1
150762:  STREX.W         R6, R3, [R1]
150766:  CMP             R6, #0
150768:  BNE             loc_15075C
15076A:  DMB.W           ISH
15076E:  CBNZ            R2, loc_150776
150770:  LDR             R1, [R0]
150772:  LDR             R1, [R1,#8]
150774:  BLX             R1
150776:  ADD             SP, SP, #0x20 ; ' '
150778:  POP.W           {R8-R10}
15077C:  POP             {R4-R7,PC}
