; =========================================================
; Game Engine Function: _ZNK8CVehicle11IsPassengerEPK4CPed
; Address            : 0x584978 - 0x5849CA
; =========================================================

584978:  CMP             R1, #0
58497A:  ITT EQ
58497C:  MOVEQ           R0, #0
58497E:  BXEQ            LR
584980:  LDR.W           R2, [R0,#0x468]
584984:  CMP             R2, R1
584986:  BEQ             loc_5849C6
584988:  LDR.W           R2, [R0,#0x46C]
58498C:  CMP             R2, R1
58498E:  ITT NE
584990:  LDRNE.W         R2, [R0,#0x470]
584994:  CMPNE           R2, R1
584996:  BEQ             loc_5849C6
584998:  LDR.W           R2, [R0,#0x474]
58499C:  CMP             R2, R1
58499E:  ITT NE
5849A0:  LDRNE.W         R2, [R0,#0x478]
5849A4:  CMPNE           R2, R1
5849A6:  BEQ             loc_5849C6
5849A8:  LDR.W           R2, [R0,#0x47C]
5849AC:  CMP             R2, R1
5849AE:  ITT NE
5849B0:  LDRNE.W         R2, [R0,#0x480]
5849B4:  CMPNE           R2, R1
5849B6:  BEQ             loc_5849C6
5849B8:  LDR.W           R2, [R0,#0x484]
5849BC:  MOVS            R0, #0
5849BE:  CMP             R2, R1
5849C0:  IT EQ
5849C2:  MOVEQ           R0, #1
5849C4:  BX              LR
5849C6:  MOVS            R0, #1
5849C8:  BX              LR
