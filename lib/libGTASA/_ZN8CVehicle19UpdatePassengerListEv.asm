; =========================================================
; Game Engine Function: _ZN8CVehicle19UpdatePassengerListEv
; Address            : 0x58A71C - 0x58A76A
; =========================================================

58A71C:  LDRB.W          R1, [R0,#0x488]
58A720:  CBZ             R1, loc_58A762
58A722:  LDR.W           R1, [R0,#0x468]
58A726:  CMP             R1, #0
58A728:  ITT EQ
58A72A:  LDREQ.W         R1, [R0,#0x46C]
58A72E:  CMPEQ           R1, #0
58A730:  BNE             locret_58A768
58A732:  LDR.W           R1, [R0,#0x470]
58A736:  CMP             R1, #0
58A738:  ITT EQ
58A73A:  LDREQ.W         R1, [R0,#0x474]
58A73E:  CMPEQ           R1, #0
58A740:  BNE             locret_58A768
58A742:  LDR.W           R1, [R0,#0x478]
58A746:  CMP             R1, #0
58A748:  ITT EQ
58A74A:  LDREQ.W         R1, [R0,#0x47C]
58A74E:  CMPEQ           R1, #0
58A750:  BNE             locret_58A768
58A752:  LDR.W           R1, [R0,#0x480]
58A756:  CMP             R1, #0
58A758:  ITT EQ
58A75A:  LDREQ.W         R1, [R0,#0x484]
58A75E:  CMPEQ           R1, #0
58A760:  BNE             locret_58A768
58A762:  MOVS            R1, #0
58A764:  STRB.W          R1, [R0,#0x488]
58A768:  BX              LR
