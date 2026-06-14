; =========================================================
; Game Engine Function: _ZNK12CEventDamage15IsCriminalEventEv
; Address            : 0x372634 - 0x372676
; =========================================================

372634:  PUSH            {R4,R6,R7,LR}
372636:  ADD             R7, SP, #8
372638:  MOV             R4, R0
37263A:  LDR             R0, [R4,#0x10]; this
37263C:  CBZ             R0, loc_37266E
37263E:  LDRB.W          R1, [R0,#0x3A]
372642:  AND.W           R2, R1, #7
372646:  CMP             R2, #3
372648:  BNE             loc_372656
37264A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
37264E:  CBNZ            R0, loc_372672
372650:  LDR             R0, [R4,#0x10]
372652:  LDRB.W          R1, [R0,#0x3A]
372656:  AND.W           R1, R1, #7
37265A:  CMP             R1, #2
37265C:  BNE             loc_37266E
37265E:  LDR.W           R4, [R0,#0x464]
372662:  MOV.W           R0, #0xFFFFFFFF; int
372666:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
37266A:  CMP             R4, R0
37266C:  BEQ             loc_372672
37266E:  MOVS            R0, #0
372670:  POP             {R4,R6,R7,PC}
372672:  MOVS            R0, #1
372674:  POP             {R4,R6,R7,PC}
