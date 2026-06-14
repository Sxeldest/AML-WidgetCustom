; =========================================================
; Game Engine Function: DevFmtChannelsString
; Address            : 0x1BAFBC - 0x1BB05C
; =========================================================

1BAFBC:  SUB             R1, R0, #0x1500; switch 7 cases
1BAFC0:  CMP             R1, #6
1BAFC4:  BHI             def_1BAFDC; jumptable 001BAFDC default case
1BAFC8:  ADR             R2, jpt_1BAFDC
1BAFCC:  MOV             R1, R1,LSL#2
1BAFD0:  LDR             R0, =(aMono - 0x1BAFE0); "Mono" ...
1BAFD4:  LDR             R1, [R1,R2]
1BAFD8:  ADD             R0, PC, R0; "Mono"
1BAFDC:  ADD             PC, R1, R2; switch jump
1BAFE0:  DCD locret_1BB028 - 0x1BAFE0; jump table for switch statement
1BAFE4:  DCD loc_1BAFFC - 0x1BAFE0; jumptable 001BAFDC case 5377
1BAFE8:  DCD loc_1BB020 - 0x1BAFE0; jumptable 001BAFDC case 5378
1BAFEC:  DCD loc_1BB02C - 0x1BAFE0; jumptable 001BAFDC case 5379
1BAFF0:  DCD loc_1BB038 - 0x1BAFE0; jumptable 001BAFDC case 5380
1BAFF4:  DCD loc_1BB044 - 0x1BAFE0; jumptable 001BAFDC case 5381
1BAFF8:  DCD loc_1BB050 - 0x1BAFE0; jumptable 001BAFDC case 5382
1BAFFC:  LDR             R0, =(aStereo - 0x1BB008); jumptable 001BAFDC case 5377
1BB000:  ADD             R0, PC, R0; "Stereo"
1BB004:  BX              LR
1BB008:  MOV             R1, #0x80001504; jumptable 001BAFDC default case
1BB010:  CMP             R0, R1
1BB014:  LDREQ           R0, =(a51Side - 0x1BB020); "5.1 Side" ...
1BB018:  ADDEQ           R0, PC, R0; "5.1 Side"
1BB01C:  BXEQ            LR
1BB020:  LDR             R0, =(aUnknownChannel - 0x1BB02C); jumptable 001BAFDC case 5378
1BB024:  ADD             R0, PC, R0; "(unknown channels)"
1BB028:  BX              LR; jumptable 001BAFDC case 5376
1BB02C:  LDR             R0, =(aQuadraphonic - 0x1BB038); jumptable 001BAFDC case 5379
1BB030:  ADD             R0, PC, R0; "Quadraphonic"
1BB034:  BX              LR
1BB038:  LDR             R0, =(a51Surround - 0x1BB044); jumptable 001BAFDC case 5380
1BB03C:  ADD             R0, PC, R0; "5.1 Surround"
1BB040:  BX              LR
1BB044:  LDR             R0, =(a61Surround - 0x1BB050); jumptable 001BAFDC case 5381
1BB048:  ADD             R0, PC, R0; "6.1 Surround"
1BB04C:  BX              LR
1BB050:  LDR             R0, =(a71Surround - 0x1BB05C); jumptable 001BAFDC case 5382
1BB054:  ADD             R0, PC, R0; "7.1 Surround"
1BB058:  BX              LR
