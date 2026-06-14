; =========================================================
; Game Engine Function: _ZN15CTaskSimpleDuck10CanPedDuckEP4CPed
; Address            : 0x5436C0 - 0x54376E
; =========================================================

5436C0:  PUSH            {R4,R5,R7,LR}
5436C2:  ADD             R7, SP, #8
5436C4:  MOV             R4, R0
5436C6:  LDRSB.W         R0, [R4,#0x71C]
5436CA:  RSB.W           R0, R0, R0,LSL#3
5436CE:  ADD.W           R0, R4, R0,LSL#2
5436D2:  LDR.W           R5, [R0,#0x5A4]
5436D6:  MOV             R0, R4; this
5436D8:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
5436DC:  MOV             R1, R0
5436DE:  MOV             R0, R5
5436E0:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
5436E4:  MOV             R5, R0
5436E6:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
5436EA:  CBZ             R0, loc_543718
5436EC:  LDR             R0, [R5]
5436EE:  CMP             R0, #0
5436F0:  IT NE
5436F2:  CMPNE           R0, #5
5436F4:  BEQ             loc_543714
5436F6:  LDRSB.W         R0, [R4,#0x71C]
5436FA:  RSB.W           R0, R0, R0,LSL#3
5436FE:  ADD.W           R0, R4, R0,LSL#2
543702:  LDR.W           R0, [R0,#0x5A4]
543706:  ORR.W           R0, R0, #2
54370A:  CMP             R0, #0x2B ; '+'
54370C:  BEQ             loc_543714
54370E:  LDRB            R0, [R5,#0x19]
543710:  LSLS            R0, R0, #0x1A
543712:  BPL             loc_54376A
543714:  MOVS            R0, #1
543716:  POP             {R4,R5,R7,PC}
543718:  LDRSB.W         R0, [R4,#0x71C]
54371C:  RSB.W           R0, R0, R0,LSL#3
543720:  ADD.W           R0, R4, R0,LSL#2
543724:  LDR.W           R0, [R0,#0x5A4]
543728:  CMP             R0, #0x22 ; '"'
54372A:  BEQ             loc_543750
54372C:  CMP             R0, #0x2B ; '+'
54372E:  BNE             loc_5436EC
543730:  LDR             R0, =(TheCamera_ptr - 0x543736)
543732:  ADD             R0, PC; TheCamera_ptr
543734:  LDR             R0, [R0]; TheCamera
543736:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
54373A:  ADD.W           R1, R1, R1,LSL#5
54373E:  ADD.W           R0, R0, R1,LSL#4
543742:  LDRH.W          R0, [R0,#0x17E]
543746:  CMP             R0, #0x2E ; '.'
543748:  ITT EQ
54374A:  MOVEQ           R0, #0
54374C:  POPEQ           {R4,R5,R7,PC}
54374E:  B               loc_5436EC
543750:  LDR             R0, =(TheCamera_ptr - 0x543756)
543752:  ADD             R0, PC; TheCamera_ptr
543754:  LDR             R0, [R0]; TheCamera
543756:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
54375A:  ADD.W           R1, R1, R1,LSL#5
54375E:  ADD.W           R0, R0, R1,LSL#4
543762:  LDRH.W          R0, [R0,#0x17E]
543766:  CMP             R0, #7
543768:  BNE             loc_5436EC
54376A:  MOVS            R0, #0
54376C:  POP             {R4,R5,R7,PC}
