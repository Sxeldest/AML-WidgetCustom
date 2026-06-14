; =========================================================
; Game Engine Function: _ZN9CTxdStore13SetCurrentTxdEiPKc
; Address            : 0x5D40F4 - 0x5D416E
; =========================================================

5D40F4:  PUSH            {R4,R5,R7,LR}
5D40F6:  ADD             R7, SP, #8
5D40F8:  LDR             R2, =(_ZN9CTxdStore11ms_pTxdPoolE_ptr - 0x5D40FE)
5D40FA:  ADD             R2, PC; _ZN9CTxdStore11ms_pTxdPoolE_ptr
5D40FC:  LDR             R2, [R2]; CTxdStore::ms_pTxdPool ...
5D40FE:  LDR             R2, [R2]; CTxdStore::ms_pTxdPool
5D4100:  LDR             R3, [R2,#4]
5D4102:  LDRSB           R3, [R3,R0]
5D4104:  CMP             R3, #0
5D4106:  BLT             loc_5D4114
5D4108:  LDR             R2, [R2]
5D410A:  RSB.W           R0, R0, R0,LSL#3
5D410E:  ADD.W           R5, R2, R0,LSL#3
5D4112:  B               loc_5D4116
5D4114:  MOVS            R5, #0
5D4116:  CMP             R1, #0
5D4118:  IT EQ
5D411A:  ADDEQ.W         R1, R5, #0x20 ; ' '; char *
5D411E:  MOV             R0, R1; this
5D4120:  BLX.W           j__ZN22TextureDatabaseRuntime11GetDatabaseEPKc; TextureDatabaseRuntime::GetDatabase(char const*)
5D4124:  MOV             R4, R0
5D4126:  LDR             R0, =(_ZN9CTxdStore8ms_curDBE_ptr - 0x5D412C)
5D4128:  ADD             R0, PC; _ZN9CTxdStore8ms_curDBE_ptr
5D412A:  LDR             R0, [R0]; CTxdStore::ms_curDB ...
5D412C:  LDR             R0, [R0]; this
5D412E:  CMP             R0, R4
5D4130:  BEQ             loc_5D414E
5D4132:  CBZ             R0, loc_5D4140
5D4134:  LDR             R1, [R0,#4]
5D4136:  LDRB            R1, [R1]; TextureDatabaseRuntime *
5D4138:  CMP             R1, #0x74 ; 't'
5D413A:  IT NE
5D413C:  BLXNE.W         j__ZN22TextureDatabaseRuntime10UnregisterEPS_; TextureDatabaseRuntime::Unregister(TextureDatabaseRuntime*)
5D4140:  MOV             R0, R4; this
5D4142:  BLX.W           j__ZN22TextureDatabaseRuntime8RegisterEPS_; TextureDatabaseRuntime::Register(TextureDatabaseRuntime*)
5D4146:  LDR             R0, =(_ZN9CTxdStore8ms_curDBE_ptr - 0x5D414C)
5D4148:  ADD             R0, PC; _ZN9CTxdStore8ms_curDBE_ptr
5D414A:  LDR             R0, [R0]; CTxdStore::ms_curDB ...
5D414C:  STR             R4, [R0]; CTxdStore::ms_curDB
5D414E:  LDR             R0, =(_ZN22TextureDatabaseRuntime13curParentNameE_ptr - 0x5D4158)
5D4150:  ADD.W           R4, R5, #0xC
5D4154:  ADD             R0, PC; _ZN22TextureDatabaseRuntime13curParentNameE_ptr
5D4156:  MOV             R1, R4; char *
5D4158:  LDR             R0, [R0]; char *
5D415A:  BLX.W           strcpy
5D415E:  LDR             R0, =(_ZN9CTxdStore10ms_curNameE_ptr - 0x5D4166)
5D4160:  MOV             R1, R4; char *
5D4162:  ADD             R0, PC; _ZN9CTxdStore10ms_curNameE_ptr
5D4164:  LDR             R0, [R0]; char *
5D4166:  POP.W           {R4,R5,R7,LR}
5D416A:  B.W             j_strcpy
