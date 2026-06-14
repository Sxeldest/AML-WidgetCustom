; =========================================================
; Game Engine Function: _ZN7CObject12TryToExplodeEv
; Address            : 0x455710 - 0x45573A
; =========================================================

455710:  LDR.W           R1, [R0,#0x164]
455714:  LDRB            R1, [R1,#0x1F]
455716:  CBZ             R1, loc_455736
455718:  LDR.W           R1, [R0,#0x144]
45571C:  TST.W           R1, #0x40
455720:  BNE             loc_455736
455722:  PUSH            {R7,LR}
455724:  MOV             R7, SP
455726:  ORR.W           R1, R1, #0x40 ; '@'
45572A:  STR.W           R1, [R0,#0x144]
45572E:  BLX             j__ZN7CObject7ExplodeEv; CObject::Explode(void)
455732:  MOVS            R0, #1
455734:  POP             {R7,PC}
455736:  MOVS            R0, #0
455738:  BX              LR
