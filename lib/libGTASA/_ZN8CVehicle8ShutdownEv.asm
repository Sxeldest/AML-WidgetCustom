; =========================================================
; Game Engine Function: _ZN8CVehicle8ShutdownEv
; Address            : 0x581CB0 - 0x581D16
; =========================================================

581CB0:  PUSH            {R7,LR}
581CB2:  MOV             R7, SP
581CB4:  LDR             R0, =(_ZN8CVehicle18m_aSpecialColModelE_ptr - 0x581CBA)
581CB6:  ADD             R0, PC; _ZN8CVehicle18m_aSpecialColModelE_ptr
581CB8:  LDR             R0, [R0]; CVehicle::m_aSpecialColModel ...
581CBA:  LDR             R0, [R0,#(dword_A12F14 - 0xA12EE8)]
581CBC:  CBZ             R0, loc_581CC8
581CBE:  LDR             R0, =(_ZN8CVehicle18m_aSpecialColModelE_ptr - 0x581CC4)
581CC0:  ADD             R0, PC; _ZN8CVehicle18m_aSpecialColModelE_ptr
581CC2:  LDR             R0, [R0]; this
581CC4:  BLX             j__ZN9CColModel22RemoveCollisionVolumesEv; CColModel::RemoveCollisionVolumes(void)
581CC8:  LDR             R0, =(_ZN8CVehicle18m_aSpecialColModelE_ptr - 0x581CCE)
581CCA:  ADD             R0, PC; _ZN8CVehicle18m_aSpecialColModelE_ptr
581CCC:  LDR             R0, [R0]; CVehicle::m_aSpecialColModel ...
581CCE:  LDR             R0, [R0,#(dword_A12F44 - 0xA12EE8)]
581CD0:  CBZ             R0, loc_581CDE
581CD2:  LDR             R0, =(_ZN8CVehicle18m_aSpecialColModelE_ptr - 0x581CD8)
581CD4:  ADD             R0, PC; _ZN8CVehicle18m_aSpecialColModelE_ptr
581CD6:  LDR             R0, [R0]; CVehicle::m_aSpecialColModel ...
581CD8:  ADDS            R0, #0x30 ; '0'; this
581CDA:  BLX             j__ZN9CColModel22RemoveCollisionVolumesEv; CColModel::RemoveCollisionVolumes(void)
581CDE:  LDR             R0, =(_ZN8CVehicle18m_aSpecialColModelE_ptr - 0x581CE4)
581CE0:  ADD             R0, PC; _ZN8CVehicle18m_aSpecialColModelE_ptr
581CE2:  LDR             R0, [R0]; CVehicle::m_aSpecialColModel ...
581CE4:  LDR.W           R0, [R0,#(dword_A12F74 - 0xA12EE8)]
581CE8:  CBZ             R0, loc_581CF6
581CEA:  LDR             R0, =(_ZN8CVehicle18m_aSpecialColModelE_ptr - 0x581CF0)
581CEC:  ADD             R0, PC; _ZN8CVehicle18m_aSpecialColModelE_ptr
581CEE:  LDR             R0, [R0]; CVehicle::m_aSpecialColModel ...
581CF0:  ADDS            R0, #0x60 ; '`'; this
581CF2:  BLX             j__ZN9CColModel22RemoveCollisionVolumesEv; CColModel::RemoveCollisionVolumes(void)
581CF6:  LDR             R0, =(_ZN8CVehicle18m_aSpecialColModelE_ptr - 0x581CFC)
581CF8:  ADD             R0, PC; _ZN8CVehicle18m_aSpecialColModelE_ptr
581CFA:  LDR             R0, [R0]; CVehicle::m_aSpecialColModel ...
581CFC:  LDR.W           R0, [R0,#(dword_A12FA4 - 0xA12EE8)]
581D00:  CMP             R0, #0
581D02:  IT EQ
581D04:  POPEQ           {R7,PC}
581D06:  LDR             R0, =(_ZN8CVehicle18m_aSpecialColModelE_ptr - 0x581D0C)
581D08:  ADD             R0, PC; _ZN8CVehicle18m_aSpecialColModelE_ptr
581D0A:  LDR             R0, [R0]; CVehicle::m_aSpecialColModel ...
581D0C:  ADDS            R0, #0x90; this
581D0E:  POP.W           {R7,LR}
581D12:  B.W             j_j__ZN9CColModel22RemoveCollisionVolumesEv; j_CColModel::RemoveCollisionVolumes(void)
