; =========================================================
; Game Engine Function: sub_150800
; Address            : 0x150800 - 0x1508D0
; =========================================================

150800:  PUSH            {R4-R7,LR}
150802:  ADD             R7, SP, #0xC
150804:  PUSH.W          {R8-R10}
150808:  SUB             SP, SP, #0x18
15080A:  MOV             R5, R0
15080C:  LDR             R0, [R0]
15080E:  MOV             R6, R1
150810:  MOV             R10, R3
150812:  MOV             R9, R2
150814:  LDR             R1, [R0,#8]
150816:  MOV             R0, R5
150818:  BLX             R1
15081A:  MOV             R4, R0
15081C:  MOVS            R0, #0x40 ; '@'; unsigned int
15081E:  BLX             j__Znwj; operator new(uint)
150822:  LDRD.W          R2, R3, [R6]
150826:  MOV             R8, R0
150828:  MOVS            R0, #0
15082A:  LDRD.W          R12, R1, [R7,#arg_0]
15082E:  STRD.W          R0, R0, [R6]
150832:  STRD.W          R2, R3, [SP,#0x30+var_20]
150836:  STR             R1, [SP,#0x30+var_28]
150838:  ADD             R1, SP, #0x30+var_20
15083A:  MOV             R0, R8
15083C:  MOV             R2, R4
15083E:  MOV             R3, R9
150840:  STRD.W          R10, R12, [SP,#0x30+var_30]
150844:  BL              sub_1518C8
150848:  LDR             R4, [SP,#0x30+var_1C]
15084A:  CBZ             R4, loc_150874
15084C:  ADDS            R0, R4, #4
15084E:  DMB.W           ISH
150852:  LDREX.W         R1, [R0]
150856:  SUBS            R2, R1, #1
150858:  STREX.W         R3, R2, [R0]
15085C:  CMP             R3, #0
15085E:  BNE             loc_150852
150860:  DMB.W           ISH
150864:  CBNZ            R1, loc_150874
150866:  LDR             R0, [R4]
150868:  LDR             R1, [R0,#8]
15086A:  MOV             R0, R4
15086C:  BLX             R1
15086E:  MOV             R0, R4; this
150870:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
150874:  MOV             R0, R5
150876:  MOV             R1, R8
150878:  BL              sub_1504C0
15087C:  CBZ             R0, loc_1508BE
15087E:  LDR             R1, =(_ZTI12AudioChannel - 0x15088A); `typeinfo for'AudioChannel ...
150880:  MOV             R0, R5; lpsrc
150882:  LDR             R2, =(_ZTI19AudioChannelVehicle - 0x15088C); `typeinfo for'AudioChannelVehicle ...
150884:  MOVS            R3, #0; s2d
150886:  ADD             R1, PC; lpstype
150888:  ADD             R2, PC; lpdtype
15088A:  BLX             j___dynamic_cast
15088E:  CBZ             R0, loc_1508A0
150890:  LDR             R0, =(off_234A54 - 0x150896)
150892:  ADD             R0, PC; off_234A54
150894:  LDR             R0, [R0]; dword_381A0C
150896:  LDR             R0, [R0]
150898:  LDR             R1, [R0,#0x74]
15089A:  MOV             R0, R8
15089C:  BL              sub_151D54
1508A0:  MOVS            R0, #0xC; unsigned int
1508A2:  BLX             j__Znwj; operator new(uint)
1508A6:  LDR             R2, [R5,#4]
1508A8:  ADDS            R1, R5, #4
1508AA:  LDR             R3, [R5,#0xC]
1508AC:  STRD.W          R2, R1, [R0]
1508B0:  ADDS            R1, R3, #1
1508B2:  STR             R0, [R5,#4]
1508B4:  STR.W           R8, [R0,#8]
1508B8:  STR             R1, [R5,#0xC]
1508BA:  STR             R0, [R2,#4]
1508BC:  B               loc_1508C8
1508BE:  LDR.W           R0, [R8]
1508C2:  LDR             R1, [R0,#4]
1508C4:  MOV             R0, R8
1508C6:  BLX             R1
1508C8:  ADD             SP, SP, #0x18
1508CA:  POP.W           {R8-R10}
1508CE:  POP             {R4-R7,PC}
