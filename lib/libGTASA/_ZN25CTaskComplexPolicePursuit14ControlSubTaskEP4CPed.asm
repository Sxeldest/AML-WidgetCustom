; =========================================================
; Game Engine Function: _ZN25CTaskComplexPolicePursuit14ControlSubTaskEP4CPed
; Address            : 0x53DB4C - 0x53DCEC
; =========================================================

53DB4C:  PUSH            {R4-R7,LR}
53DB4E:  ADD             R7, SP, #0xC
53DB50:  PUSH.W          {R8,R9,R11}
53DB54:  SUB             SP, SP, #0x20
53DB56:  MOV             R9, R0
53DB58:  MOV.W           R0, #0xFFFFFFFF; int
53DB5C:  MOV             R8, R1
53DB5E:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
53DB62:  MOV             R4, R0
53DB64:  MOV             R0, R9; this
53DB66:  MOV             R1, R8; CPed *
53DB68:  BLX             j__ZN25CTaskComplexPolicePursuit14PersistPursuitEP4CPed; CTaskComplexPolicePursuit::PersistPursuit(CPed *)
53DB6C:  CMP             R0, #0
53DB6E:  BNE             loc_53DC16
53DB70:  LDRB.W          R0, [R9,#0xC]
53DB74:  LSLS            R0, R0, #0x1F
53DB76:  BEQ             loc_53DB94
53DB78:  LDRB.W          R0, [R8,#0x486]
53DB7C:  LSLS            R0, R0, #0x1A
53DB7E:  BPL             loc_53DC1A
53DB80:  LDRSB.W         R0, [R8,#0x71C]
53DB84:  RSB.W           R0, R0, R0,LSL#3
53DB88:  ADD.W           R0, R8, R0,LSL#2
53DB8C:  LDR.W           R0, [R0,#0x5A4]
53DB90:  CMP             R0, #0x16
53DB92:  BNE             loc_53DC1A
53DB94:  LDR.W           R0, [R9,#8]
53DB98:  LDR             R1, [R0]
53DB9A:  LDR             R1, [R1,#0x14]
53DB9C:  BLX             R1
53DB9E:  MOVW            R1, #0x44D
53DBA2:  CMP             R0, R1
53DBA4:  BNE             loc_53DC16
53DBA6:  LDRB.W          R0, [R8,#0x485]
53DBAA:  LSLS            R0, R0, #0x1F
53DBAC:  BNE             loc_53DC34
53DBAE:  LDR.W           R0, [R8,#0x590]
53DBB2:  CMP             R0, #0
53DBB4:  BEQ             loc_53DC3A
53DBB6:  LDR             R1, [R4,#0x2C]
53DBB8:  CMP             R1, #0
53DBBA:  BEQ             loc_53DC3E
53DBBC:  LDR.W           R1, [R8,#0x14]
53DBC0:  VMOV.F32        S4, #25.0
53DBC4:  LDR             R2, [R0,#0x14]
53DBC6:  MOVS            R6, #0xCB
53DBC8:  ADD.W           R3, R1, #0x30 ; '0'
53DBCC:  CMP             R1, #0
53DBCE:  IT EQ
53DBD0:  ADDEQ.W         R3, R8, #4
53DBD4:  ADD.W           R1, R2, #0x30 ; '0'
53DBD8:  CMP             R2, #0
53DBDA:  VLDR            S0, [R3]
53DBDE:  IT EQ
53DBE0:  ADDEQ           R1, R0, #4
53DBE2:  VLDR            D16, [R3,#4]
53DBE6:  VLDR            S2, [R1]
53DBEA:  VLDR            D17, [R1,#4]
53DBEE:  VSUB.F32        S0, S2, S0
53DBF2:  VSUB.F32        D16, D17, D16
53DBF6:  VMUL.F32        D1, D16, D16
53DBFA:  VMUL.F32        S0, S0, S0
53DBFE:  VADD.F32        S0, S0, S2
53DC02:  VADD.F32        S0, S0, S3
53DC06:  VCMPE.F32       S0, S4
53DC0A:  VMRS            APSR_nzcv, FPSCR
53DC0E:  IT LT
53DC10:  MOVWLT          R6, #0x38B
53DC14:  B               loc_53DC42
53DC16:  MOVS            R6, #0xC8
53DC18:  B               loc_53DC42
53DC1A:  MOV             R0, R8
53DC1C:  MOVS            R1, #0x16
53DC1E:  ADDW            R4, R8, #0x484
53DC22:  BLX             j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
53DC26:  LDR             R0, [R4]
53DC28:  MOVW            R6, #0x44D
53DC2C:  ORR.W           R0, R0, #0x200000
53DC30:  STR             R0, [R4]
53DC32:  B               loc_53DC42
53DC34:  MOVW            R6, #0x516
53DC38:  B               loc_53DC42
53DC3A:  MOVS            R6, #0xCB
53DC3C:  B               loc_53DC42
53DC3E:  MOVW            R6, #0x2BD
53DC42:  LDR.W           R0, [R9,#8]
53DC46:  LDR             R1, [R0]
53DC48:  LDR             R1, [R1,#0x14]
53DC4A:  BLX             R1
53DC4C:  MOVW            R1, #0x44D
53DC50:  CMP             R6, R1
53DC52:  IT NE
53DC54:  CMPNE           R0, R1
53DC56:  BNE             loc_53DC5E
53DC58:  MOV             R1, R8; CPed *
53DC5A:  BLX             j__ZN25CTaskComplexPolicePursuit9SetWeaponEP4CPed; CTaskComplexPolicePursuit::SetWeapon(CPed *)
53DC5E:  LDR.W           R4, [R9,#8]
53DC62:  CMP             R6, #0xC8
53DC64:  BEQ             loc_53DCD0
53DC66:  LDR             R0, [R4]
53DC68:  MOV             R1, R8
53DC6A:  MOVS            R2, #1
53DC6C:  MOVS            R3, #0
53DC6E:  LDR             R5, [R0,#0x1C]
53DC70:  MOV             R0, R4
53DC72:  BLX             R5
53DC74:  CMP             R0, #1
53DC76:  BNE             loc_53DCD0
53DC78:  MOVW            R0, #0x2BD
53DC7C:  CMP             R6, R0
53DC7E:  BNE             loc_53DCDA
53DC80:  ADD             R5, SP, #0x38+var_28
53DC82:  LDR.W           R1, [R8,#0x590]; CVehicle *
53DC86:  MOV             R0, R5; this
53DC88:  BLX             j__ZN20CEventVehicleToStealC2EP8CVehicle; CEventVehicleToSteal::CEventVehicleToSteal(CVehicle *)
53DC8C:  LDR.W           R0, [R8,#0x440]
53DC90:  MOV             R1, R5; CEvent *
53DC92:  MOVS            R2, #0; bool
53DC94:  MOVS            R6, #0
53DC96:  ADDS            R0, #0x68 ; 'h'; this
53DC98:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
53DC9C:  MOVS            R0, #dword_20; this
53DC9E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53DCA2:  MOV             R4, R0
53DCA4:  LDR             R0, =(aScratchhead - 0x53DCB0); "ScratchHead"
53DCA6:  MOVW            R1, #0x1A5
53DCAA:  MOVS            R2, #0x87
53DCAC:  ADD             R0, PC; "ScratchHead"
53DCAE:  MOV.W           R3, #0x40800000
53DCB2:  STRD.W          R1, R0, [SP,#0x38+var_38]
53DCB6:  MOV             R0, R4
53DCB8:  MOVS            R1, #0
53DCBA:  STR             R6, [SP,#0x38+var_30]
53DCBC:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
53DCC0:  LDR             R0, =(_ZTV22CTaskSimpleScratchHead_ptr - 0x53DCC6)
53DCC2:  ADD             R0, PC; _ZTV22CTaskSimpleScratchHead_ptr
53DCC4:  LDR             R0, [R0]; `vtable for'CTaskSimpleScratchHead ...
53DCC6:  ADDS            R0, #8
53DCC8:  STR             R0, [R4]
53DCCA:  MOV             R0, R5; this
53DCCC:  BLX             j__ZN20CEventVehicleToStealD2Ev; CEventVehicleToSteal::~CEventVehicleToSteal()
53DCD0:  MOV             R0, R4
53DCD2:  ADD             SP, SP, #0x20 ; ' '
53DCD4:  POP.W           {R8,R9,R11}
53DCD8:  POP             {R4-R7,PC}
53DCDA:  MOV             R0, R9; this
53DCDC:  MOV             R1, R6; int
53DCDE:  MOV             R2, R8; CPed *
53DCE0:  ADD             SP, SP, #0x20 ; ' '
53DCE2:  POP.W           {R8,R9,R11}
53DCE6:  POP.W           {R4-R7,LR}
53DCEA:  B               _ZNK25CTaskComplexPolicePursuit13CreateSubTaskEiP4CPed; CTaskComplexPolicePursuit::CreateSubTask(int,CPed *)
