; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity22GetVehicleTypeForAudioEv
; Address            : 0x3ACD64 - 0x3ACDB2
; =========================================================

3ACD64:  LDRB.W          R1, [R0,#0xA4]
3ACD68:  CMP             R1, #0
3ACD6A:  ITT NE
3ACD6C:  LDRNE           R1, [R0,#4]
3ACD6E:  CMPNE           R1, #0
3ACD70:  BEQ             def_3ACD7C; jumptable 003ACD7C default case, cases 3,6-8,11-13,15-21,24,26-28,32-37
3ACD72:  LDRSB.W         R1, [R0,#0x9C]
3ACD76:  CMP             R1, #0x26 ; '&'; switch 39 cases
3ACD78:  BHI             def_3ACD7C; jumptable 003ACD7C default case, cases 3,6-8,11-13,15-21,24,26-28,32-37
3ACD7A:  MOVS            R0, #0
3ACD7C:  TBB.W           [PC,R1]; switch jump
3ACD80:  DCB 0x14; jump table for switch statement
3ACD81:  DCB 0x14
3ACD82:  DCB 0x14
3ACD83:  DCB 0x15
3ACD84:  DCB 0x14
3ACD85:  DCB 0x14
3ACD86:  DCB 0x15
3ACD87:  DCB 0x15
3ACD88:  DCB 0x15
3ACD89:  DCB 0x14
3ACD8A:  DCB 0x14
3ACD8B:  DCB 0x15
3ACD8C:  DCB 0x15
3ACD8D:  DCB 0x15
3ACD8E:  DCB 0x14
3ACD8F:  DCB 0x15
3ACD90:  DCB 0x15
3ACD91:  DCB 0x15
3ACD92:  DCB 0x15
3ACD93:  DCB 0x15
3ACD94:  DCB 0x15
3ACD95:  DCB 0x15
3ACD96:  DCB 0x14
3ACD97:  DCB 0x14
3ACD98:  DCB 0x15
3ACD99:  DCB 0x17
3ACD9A:  DCB 0x15
3ACD9B:  DCB 0x15
3ACD9C:  DCB 0x15
3ACD9D:  DCB 0x17
3ACD9E:  DCB 0x17
3ACD9F:  DCB 0x14
3ACDA0:  DCB 0x15
3ACDA1:  DCB 0x15
3ACDA2:  DCB 0x15
3ACDA3:  DCB 0x15
3ACDA4:  DCB 0x15
3ACDA5:  DCB 0x15
3ACDA6:  DCB 0x14
3ACDA7:  ALIGN 2
3ACDA8:  BX              LR; jumptable 003ACD7C cases 0-2,4,5,9,10,14,22,23,31,38
3ACDAA:  MOVS            R0, #2; jumptable 003ACD7C default case, cases 3,6-8,11-13,15-21,24,26-28,32-37
3ACDAC:  BX              LR
3ACDAE:  MOVS            R0, #1; jumptable 003ACD7C cases 25,29,30
3ACDB0:  BX              LR
