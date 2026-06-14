; =========================================================
; Game Engine Function: sub_10837C
; Address            : 0x10837C - 0x1083EC
; =========================================================

10837C:  CBZ             R0, loc_1083E8
10837E:  LDR             R1, =(off_23494C - 0x10838E)
108380:  MOVW            R3, #0xD688
108384:  LDR             R0, [R0]
108386:  MOVT            R3, #0x66 ; 'f'
10838A:  ADD             R1, PC; off_23494C
10838C:  LDR             R1, [R1]; dword_23DF24
10838E:  LDR             R2, [R1]
108390:  ADDS            R1, R2, R3
108392:  CMP             R0, R1
108394:  ITT EQ
108396:  MOVEQ           R0, #1
108398:  BXEQ            LR
10839A:  ADD.W           R3, R1, #0x178
10839E:  CMP             R0, R3
1083A0:  ITT EQ
1083A2:  MOVEQ           R0, #2
1083A4:  BXEQ            LR
1083A6:  MOV             R3, #0x66DB44
1083AE:  ADD             R2, R3
1083B0:  CMP             R0, R2
1083B2:  ITT EQ
1083B4:  MOVEQ           R0, #3
1083B6:  BXEQ            LR
1083B8:  ADD.W           R3, R1, #0x3A8
1083BC:  CMP             R0, R3
1083BE:  ITT EQ
1083C0:  MOVEQ           R0, #4
1083C2:  BXEQ            LR
1083C4:  ADD.W           R3, R2, #0x250
1083C8:  CMP             R0, R3
1083CA:  ITT EQ
1083CC:  MOVEQ           R0, #5
1083CE:  BXEQ            LR
1083D0:  ADD.W           R1, R1, #0x290
1083D4:  CMP             R0, R1
1083D6:  ITT EQ
1083D8:  MOVEQ           R0, #6
1083DA:  BXEQ            LR
1083DC:  ADD.W           R1, R2, #0x5C8
1083E0:  CMP             R0, R1
1083E2:  ITT EQ
1083E4:  MOVEQ           R0, #7
1083E6:  BXEQ            LR
1083E8:  MOVS            R0, #0
1083EA:  BX              LR
