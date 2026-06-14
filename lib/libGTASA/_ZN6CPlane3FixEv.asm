; =========================================================
; Game Engine Function: _ZN6CPlane3FixEv
; Address            : 0x5787E0 - 0x578832
; =========================================================

5787E0:  PUSH            {R4,R5,R7,LR}
5787E2:  ADD             R7, SP, #8
5787E4:  MOV             R4, R0
5787E6:  ADDW            R5, R4, #0x5B4
5787EA:  MOV             R0, R5; this
5787EC:  BLX             j__ZN14CDamageManager17ResetDamageStatusEv; CDamageManager::ResetDamageStatus(void)
5787F0:  LDR.W           R0, [R4,#0x388]
5787F4:  LDRB.W          R0, [R0,#0xCD]
5787F8:  LSLS            R0, R0, #0x1F
5787FA:  BEQ             loc_578824
5787FC:  MOV             R0, R5
5787FE:  MOVS            R1, #2
578800:  MOVS            R2, #4
578802:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
578806:  MOV             R0, R5
578808:  MOVS            R1, #3
57880A:  MOVS            R2, #4
57880C:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
578810:  MOV             R0, R5
578812:  MOVS            R1, #4
578814:  MOVS            R2, #4
578816:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
57881A:  MOV             R0, R5
57881C:  MOVS            R1, #5
57881E:  MOVS            R2, #4
578820:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
578824:  LDR.W           R0, [R4,#0x42C]
578828:  BIC.W           R0, R0, #0x10000
57882C:  STR.W           R0, [R4,#0x42C]
578830:  POP             {R4,R5,R7,PC}
