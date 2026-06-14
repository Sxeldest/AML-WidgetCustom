; =========================================================
; Game Engine Function: _ZN10CPlayerPed27PickWeaponAllowedFor2PlayerEv
; Address            : 0x4C67D4 - 0x4C6802
; =========================================================

4C67D4:  PUSH            {R4,R6,R7,LR}
4C67D6:  ADD             R7, SP, #8
4C67D8:  MOV             R4, R0
4C67DA:  LDR.W           R0, [R4,#0x444]
4C67DE:  LDRSB.W         R0, [R0,#0x20]
4C67E2:  RSB.W           R0, R0, R0,LSL#3
4C67E6:  ADD.W           R0, R4, R0,LSL#2
4C67EA:  ADDW            R0, R0, #0x5A4; this
4C67EE:  BLX             j__ZN7CWeapon19CanBeUsedFor2PlayerEv; CWeapon::CanBeUsedFor2Player(void)
4C67F2:  CMP             R0, #0
4C67F4:  ITTT EQ
4C67F6:  LDREQ.W         R0, [R4,#0x444]
4C67FA:  MOVEQ           R1, #0
4C67FC:  STRBEQ.W        R1, [R0,#0x20]
4C6800:  POP             {R4,R6,R7,PC}
