; =========================================================
; Game Engine Function: _ZN23CAEPedWeaponAudioEntity13AddAudioEventEi
; Address            : 0x39DE60 - 0x39DED8
; =========================================================

39DE60:  PUSH            {R7,LR}
39DE62:  MOV             R7, SP
39DE64:  MOV             LR, R1
39DE66:  LDRB.W          R1, [R0,#0xA0]
39DE6A:  CMP             R1, #0
39DE6C:  ITT NE
39DE6E:  LDRNE.W         R2, [R0,#0xA4]
39DE72:  CMPNE           R2, #0
39DE74:  BEQ             locret_39DEAE; jumptable 0039DE90 cases 148,149,152
39DE76:  SUB.W           R1, LR, #0x91; switch 12 cases
39DE7A:  CMP             R1, #0xB
39DE7C:  IT HI
39DE7E:  POPHI           {R7,PC}
39DE80:  LDRSB.W         R3, [R2,#0x71C]
39DE84:  RSB.W           R3, R3, R3,LSL#3
39DE88:  ADD.W           R3, R2, R3,LSL#2
39DE8C:  ADDW            R12, R3, #0x5A4
39DE90:  TBB.W           [PC,R1]; switch jump
39DE94:  DCB 6; jump table for switch statement
39DE95:  DCB 0x14
39DE96:  DCB 0x14
39DE97:  DCB 0xD
39DE98:  DCB 0xD
39DE99:  DCB 6
39DE9A:  DCB 6
39DE9B:  DCB 0xD
39DE9C:  DCB 0xE
39DE9D:  DCB 0xE
39DE9E:  DCB 0xE
39DE9F:  DCB 0x1B
39DEA0:  LDR.W           R1, [R12]; jumptable 0039DE90 cases 145,150,151
39DEA4:  MOV             R3, LR
39DEA6:  POP.W           {R7,LR}
39DEAA:  B.W             sub_18B954
39DEAE:  POP             {R7,PC}; jumptable 0039DE90 cases 148,149,152
39DEB0:  MOV             R1, R2; jumptable 0039DE90 cases 153-155
39DEB2:  MOV             R2, LR; int
39DEB4:  POP.W           {R7,LR}
39DEB8:  B.W             j_j__ZN20CAEWeaponAudioEntity19ReportChainsawEventEP9CPhysicali; j_CAEWeaponAudioEntity::ReportChainsawEvent(CPhysical *,int)
39DEBC:  LDR.W           R1, [R12]; jumptable 0039DE90 cases 146,147
39DEC0:  MOV             R3, LR
39DEC2:  POP.W           {R7,LR}
39DEC6:  B.W             sub_19B8F4
39DECA:  LDR.W           R1, [R12]; jumptable 0039DE90 case 156
39DECE:  MOVS            R3, #0x9C
39DED0:  POP.W           {R7,LR}
39DED4:  B.W             sub_1A04B0
