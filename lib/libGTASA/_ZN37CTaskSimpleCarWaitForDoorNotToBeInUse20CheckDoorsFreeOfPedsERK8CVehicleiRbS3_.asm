; =========================================================
; Game Engine Function: _ZN37CTaskSimpleCarWaitForDoorNotToBeInUse20CheckDoorsFreeOfPedsERK8CVehicleiRbS3_
; Address            : 0x50239C - 0x50240C
; =========================================================

50239C:  SUB.W           R12, R1, #8; switch 4 cases
5023A0:  CMP.W           R12, #3
5023A4:  BHI             def_5023A6; jumptable 005023A6 default case
5023A6:  TBB.W           [PC,R12]; switch jump
5023AA:  DCB 2; jump table for switch statement
5023AB:  DCB 0xD
5023AC:  DCB 0x19
5023AD:  DCB 0x24
5023AE:  LDRB.W          R1, [R0,#0x48A]; jumptable 005023A6 case 8
5023B2:  LSLS            R1, R1, #0x1D
5023B4:  ITT MI
5023B6:  MOVMI           R1, #1
5023B8:  STRBMI          R1, [R2]
5023BA:  LDRB.W          R0, [R0,#0x48B]
5023BE:  LSLS            R0, R0, #0x1D
5023C0:  BMI             loc_502406
5023C2:  BX              LR; jumptable 005023A6 default case
5023C4:  LDRB.W          R1, [R0,#0x48A]; jumptable 005023A6 case 9
5023C8:  LSLS            R1, R1, #0x1C
5023CA:  ITT MI
5023CC:  MOVMI           R1, #1
5023CE:  STRBMI          R1, [R2]
5023D0:  LDRB.W          R0, [R0,#0x48B]
5023D4:  LSLS            R0, R0, #0x1C
5023D6:  IT PL
5023D8:  BXPL            LR
5023DA:  B               loc_502406
5023DC:  LDRB.W          R1, [R0,#0x48A]; jumptable 005023A6 case 10
5023E0:  LSLS            R1, R1, #0x1F
5023E2:  ITT NE
5023E4:  MOVNE           R1, #1
5023E6:  STRBNE          R1, [R2]
5023E8:  LDRB.W          R0, [R0,#0x48B]
5023EC:  LSLS            R0, R0, #0x1F
5023EE:  BEQ             def_5023A6; jumptable 005023A6 default case
5023F0:  B               loc_502406
5023F2:  LDRB.W          R1, [R0,#0x48A]; jumptable 005023A6 case 11
5023F6:  LSLS            R1, R1, #0x1E
5023F8:  ITT MI
5023FA:  MOVMI           R1, #1
5023FC:  STRBMI          R1, [R2]
5023FE:  LDRB.W          R0, [R0,#0x48B]
502402:  LSLS            R0, R0, #0x1E
502404:  BPL             def_5023A6; jumptable 005023A6 default case
502406:  MOVS            R0, #1
502408:  STRB            R0, [R3]
50240A:  BX              LR
