; =========================================================
; Game Engine Function: _ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag
; Address            : 0x44EDEE - 0x44EE24
; =========================================================

44EDEE:  LDR             R2, [R0]
44EDF0:  STR             R2, [R1]
44EDF2:  LDR             R2, [R0,#4]
44EDF4:  STR             R2, [R1,#4]
44EDF6:  LDR             R2, [R0,#8]
44EDF8:  STR             R2, [R1,#8]
44EDFA:  LDR             R2, [R0,#0x10]
44EDFC:  STR             R2, [R1,#0x10]
44EDFE:  LDR             R2, [R0,#0x14]
44EE00:  STR             R2, [R1,#0x14]
44EE02:  LDR             R2, [R0,#0x18]
44EE04:  STR             R2, [R1,#0x18]
44EE06:  LDR             R2, [R0,#0x20]
44EE08:  STR             R2, [R1,#0x20]
44EE0A:  LDR             R2, [R0,#0x24]
44EE0C:  STR             R2, [R1,#0x24]
44EE0E:  LDR             R2, [R0,#0x28]
44EE10:  STR             R2, [R1,#0x28]
44EE12:  LDR             R2, [R0,#0x30]
44EE14:  STR             R2, [R1,#0x30]
44EE16:  LDR             R2, [R0,#0x34]
44EE18:  STR             R2, [R1,#0x34]
44EE1A:  LDR             R0, [R0,#0x38]
44EE1C:  STR             R0, [R1,#0x38]
44EE1E:  MOV             R0, R1
44EE20:  B.W             j_j__Z14RwMatrixUpdateP11RwMatrixTag; j_RwMatrixUpdate(RwMatrixTag *)
