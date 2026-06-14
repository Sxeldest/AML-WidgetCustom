; =========================================================
; Game Engine Function: ChannelsFromDevFmt
; Address            : 0x1BB0B0 - 0x1BB12C
; =========================================================

1BB0B0:  SUB             R1, R0, #0x1500; switch 7 cases
1BB0B4:  CMP             R1, #6
1BB0B8:  BHI             def_1BB0CC; jumptable 001BB0CC default case
1BB0BC:  ADR             R2, jpt_1BB0CC
1BB0C0:  MOV             R1, R1,LSL#2
1BB0C4:  MOV             R0, #1
1BB0C8:  LDR             R1, [R1,R2]
1BB0CC:  ADD             PC, R1, R2; switch jump
1BB0D0:  DCD locret_1BB110 - 0x1BB0D0; jump table for switch statement
1BB0D4:  DCD loc_1BB0EC - 0x1BB0D0; jumptable 001BB0CC case 5377
1BB0D8:  DCD loc_1BB10C - 0x1BB0D0; jumptable 001BB0CC case 5378
1BB0DC:  DCD loc_1BB114 - 0x1BB0D0; jumptable 001BB0CC case 5379
1BB0E0:  DCD loc_1BB104 - 0x1BB0D0; jumptable 001BB0CC case 5380
1BB0E4:  DCD loc_1BB11C - 0x1BB0D0; jumptable 001BB0CC case 5381
1BB0E8:  DCD loc_1BB124 - 0x1BB0D0; jumptable 001BB0CC case 5382
1BB0EC:  MOV             R0, #2; jumptable 001BB0CC case 5377
1BB0F0:  BX              LR
1BB0F4:  MOV             R1, #0x80001504; jumptable 001BB0CC default case
1BB0FC:  CMP             R0, R1
1BB100:  BNE             loc_1BB10C; jumptable 001BB0CC case 5378
1BB104:  MOV             R0, #6; jumptable 001BB0CC case 5380
1BB108:  BX              LR
1BB10C:  MOV             R0, #0; jumptable 001BB0CC case 5378
1BB110:  BX              LR; jumptable 001BB0CC case 5376
1BB114:  MOV             R0, #4; jumptable 001BB0CC case 5379
1BB118:  BX              LR
1BB11C:  MOV             R0, #7; jumptable 001BB0CC case 5381
1BB120:  BX              LR
1BB124:  MOV             R0, #8; jumptable 001BB0CC case 5382
1BB128:  BX              LR
