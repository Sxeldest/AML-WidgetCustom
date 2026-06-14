; =========================================================
; Game Engine Function: _ZN6CRadar15DisplayThisBlipEia
; Address            : 0x43F9A8 - 0x43FA12
; =========================================================

43F9A8:  PUSH            {R4,R6,R7,LR}
43F9AA:  ADD             R7, SP, #8
43F9AC:  MOV             R4, R0
43F9AE:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x43F9B4)
43F9B0:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
43F9B2:  LDR             R0, [R0]; CGame::currArea ...
43F9B4:  LDR             R0, [R0]; CGame::currArea
43F9B6:  CBNZ            R0, loc_43F9C8
43F9B8:  MOV.W           R0, #0xFFFFFFFF; int
43F9BC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
43F9C0:  LDRB.W          R0, [R0,#0x33]
43F9C4:  CMP             R0, #0
43F9C6:  BEQ             loc_43FA0A
43F9C8:  CMP             R4, #0x34 ; '4'; switch 53 cases
43F9CA:  BHI             def_43F9CE; jumptable 0043F9CE default case, cases 5-24,26-35,37-40,42,43,45-51
43F9CC:  MOVS            R0, #1
43F9CE:  TBB.W           [PC,R4]; switch jump
43F9D2:  DCB 0x1B; jump table for switch statement
43F9D3:  DCB 0x1B
43F9D4:  DCB 0x1B
43F9D5:  DCB 0x1B
43F9D6:  DCB 0x1B
43F9D7:  DCB 0x1E
43F9D8:  DCB 0x1E
43F9D9:  DCB 0x1E
43F9DA:  DCB 0x1E
43F9DB:  DCB 0x1E
43F9DC:  DCB 0x1E
43F9DD:  DCB 0x1E
43F9DE:  DCB 0x1E
43F9DF:  DCB 0x1E
43F9E0:  DCB 0x1E
43F9E1:  DCB 0x1E
43F9E2:  DCB 0x1E
43F9E3:  DCB 0x1E
43F9E4:  DCB 0x1E
43F9E5:  DCB 0x1E
43F9E6:  DCB 0x1E
43F9E7:  DCB 0x1E
43F9E8:  DCB 0x1E
43F9E9:  DCB 0x1E
43F9EA:  DCB 0x1E
43F9EB:  DCB 0x1B
43F9EC:  DCB 0x1E
43F9ED:  DCB 0x1E
43F9EE:  DCB 0x1E
43F9EF:  DCB 0x1E
43F9F0:  DCB 0x1E
43F9F1:  DCB 0x1E
43F9F2:  DCB 0x1E
43F9F3:  DCB 0x1E
43F9F4:  DCB 0x1E
43F9F5:  DCB 0x1E
43F9F6:  DCB 0x1B
43F9F7:  DCB 0x1E
43F9F8:  DCB 0x1E
43F9F9:  DCB 0x1E
43F9FA:  DCB 0x1E
43F9FB:  DCB 0x1B
43F9FC:  DCB 0x1E
43F9FD:  DCB 0x1E
43F9FE:  DCB 0x1B
43F9FF:  DCB 0x1E
43FA00:  DCB 0x1E
43FA01:  DCB 0x1E
43FA02:  DCB 0x1E
43FA03:  DCB 0x1E
43FA04:  DCB 0x1E
43FA05:  DCB 0x1E
43FA06:  DCB 0x1B
43FA07:  ALIGN 2
43FA08:  POP             {R4,R6,R7,PC}; jumptable 0043F9CE cases 0-4,25,36,41,44,52
43FA0A:  MOVS            R0, #1
43FA0C:  POP             {R4,R6,R7,PC}
43FA0E:  MOVS            R0, #0; jumptable 0043F9CE default case, cases 5-24,26-35,37-40,42,43,45-51
43FA10:  POP             {R4,R6,R7,PC}
