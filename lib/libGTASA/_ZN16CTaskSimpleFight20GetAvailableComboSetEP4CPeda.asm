; =========================================================
; Game Engine Function: _ZN16CTaskSimpleFight20GetAvailableComboSetEP4CPeda
; Address            : 0x4D90F8 - 0x4D928C
; =========================================================

4D90F8:  PUSH            {R4-R7,LR}
4D90FA:  ADD             R7, SP, #0xC
4D90FC:  PUSH.W          {R8,R9,R11}
4D9100:  MOV             R5, R2
4D9102:  MOV             R6, R1
4D9104:  MOV             R8, R0
4D9106:  CMP.W           R5, #0xFFFFFFFF
4D910A:  BLE             loc_4D9134
4D910C:  ORR.W           R4, R5, #2
4D9110:  CMP             R4, #2
4D9112:  BNE             loc_4D91AE
4D9114:  LDRSB.W         R0, [R6,#0x71C]
4D9118:  MOVS            R1, #1
4D911A:  RSB.W           R0, R0, R0,LSL#3
4D911E:  ADD.W           R0, R6, R0,LSL#2
4D9122:  LDR.W           R0, [R0,#0x5A4]
4D9126:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4D912A:  CMP             R5, #0xC
4D912C:  BNE             loc_4D917C
4D912E:  LDRB.W          R9, [R6,#0x735]
4D9132:  B               loc_4D91C2
4D9134:  LDR.W           R0, [R8,#0xC]
4D9138:  CMP             R0, #0x21 ; '!'
4D913A:  BEQ             loc_4D91B8
4D913C:  LDRB.W          R1, [R8,#0xA]
4D9140:  CBNZ            R1, loc_4D91B8
4D9142:  LDR             R1, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x4D914C)
4D9144:  ADD.W           R2, R0, R0,LSL#2
4D9148:  ADD             R1, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
4D914A:  LDR             R1, [R1]; CAnimManager::ms_aAnimAssocGroups ...
4D914C:  LDR             R1, [R1]; CAnimManager::ms_aAnimAssocGroups
4D914E:  LDR.W           R1, [R1,R2,LSL#2]
4D9152:  CBNZ            R1, loc_4D915E
4D9154:  BLX             j__ZN12CAnimManager16GetAnimBlockNameE12AssocGroupId; CAnimManager::GetAnimBlockName(AssocGroupId)
4D9158:  BLX             j__ZN12CAnimManager17GetAnimationBlockEPKc; CAnimManager::GetAnimationBlock(char const*)
4D915C:  MOV             R1, R0; int
4D915E:  LDRB            R0, [R1,#0x10]
4D9160:  CBZ             R0, loc_4D91B8
4D9162:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x4D9168)
4D9164:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
4D9166:  LDR             R0, [R0]; CAnimManager::ms_aAnimBlocks ...
4D9168:  SUBS            R0, R1, R0
4D916A:  ASRS            R0, R0, #5; this
4D916C:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
4D9170:  MOVS            R0, #1
4D9172:  MOV.W           R9, #0
4D9176:  STRB.W          R0, [R8,#0xA]
4D917A:  B               loc_4D9282
4D917C:  LDRB.W          R9, [R0,#0x6E]
4D9180:  CMP.W           R9, #4
4D9184:  BNE             loc_4D918E
4D9186:  CMP             R4, #2
4D9188:  BNE             loc_4D91BE
4D918A:  LDRB.W          R9, [R6,#0x735]
4D918E:  CBNZ            R5, loc_4D91C2
4D9190:  LDR             R0, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x4D919E)
4D9192:  SXTB.W          R1, R9
4D9196:  ADD.W           R1, R1, R1,LSL#4
4D919A:  ADD             R0, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
4D919C:  LDR             R0, [R0]; CTaskSimpleFight::m_aComboData ...
4D919E:  ADD.W           R0, R0, R1,LSL#3
4D91A2:  MOV             R1, #0xFFFFFE65
4D91A6:  LDRB            R0, [R0,R1]
4D91A8:  LSLS            R0, R0, #0x1D
4D91AA:  BMI             loc_4D91C2
4D91AC:  B               loc_4D927E
4D91AE:  SUB.W           R0, R5, #0xB
4D91B2:  UXTB            R0, R0
4D91B4:  CMP             R0, #3
4D91B6:  BLS             loc_4D9114
4D91B8:  MOV.W           R9, #0
4D91BC:  B               loc_4D9282
4D91BE:  MOV.W           R9, #4
4D91C2:  LDR             R0, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x4D91D0)
4D91C4:  SXTB.W          R1, R9
4D91C8:  ADD.W           R1, R1, R1,LSL#4
4D91CC:  ADD             R0, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
4D91CE:  LDR             R0, [R0]; CTaskSimpleFight::m_aComboData ...
4D91D0:  ADD.W           R2, R0, R1,LSL#3
4D91D4:  MOV             R0, #0xFFFFFDE0
4D91DC:  LDR             R0, [R2,R0]
4D91DE:  CMP             R0, #0x21 ; '!'
4D91E0:  BEQ             loc_4D9282
4D91E2:  LDR.W           R1, [R8,#0xC]
4D91E6:  LDRB.W          R3, [R8,#0xA]
4D91EA:  CMP             R0, R1
4D91EC:  BNE             loc_4D91F4
4D91EE:  CMP             R3, #0
4D91F0:  BNE             loc_4D9282
4D91F2:  B               loc_4D9224
4D91F4:  CBZ             R3, loc_4D9220
4D91F6:  LDR             R0, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x4D9206)
4D91F8:  SUB.W           R4, R2, #0x220
4D91FC:  LDR             R2, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x4D9208)
4D91FE:  ADD.W           R1, R1, R1,LSL#2; int
4D9202:  ADD             R0, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
4D9204:  ADD             R2, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
4D9206:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups ...
4D9208:  LDR             R2, [R2]; CAnimManager::ms_aAnimBlocks ...
4D920A:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups
4D920C:  LDR.W           R0, [R0,R1,LSL#2]
4D9210:  SUBS            R0, R0, R2
4D9212:  ASRS            R0, R0, #5; this
4D9214:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
4D9218:  MOVS            R0, #0
4D921A:  STRB.W          R0, [R8,#0xA]
4D921E:  LDR             R0, [R4]
4D9220:  STR.W           R0, [R8,#0xC]
4D9224:  LDR             R1, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x4D922E)
4D9226:  ADD.W           R2, R0, R0,LSL#2
4D922A:  ADD             R1, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
4D922C:  LDR             R1, [R1]; CAnimManager::ms_aAnimAssocGroups ...
4D922E:  LDR             R1, [R1]; CAnimManager::ms_aAnimAssocGroups
4D9230:  LDR.W           R1, [R1,R2,LSL#2]
4D9234:  CBNZ            R1, loc_4D9240
4D9236:  BLX             j__ZN12CAnimManager16GetAnimBlockNameE12AssocGroupId; CAnimManager::GetAnimBlockName(AssocGroupId)
4D923A:  BLX             j__ZN12CAnimManager17GetAnimationBlockEPKc; CAnimManager::GetAnimationBlock(char const*)
4D923E:  MOV             R1, R0; int
4D9240:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x4D9248)
4D9242:  LDRB            R2, [R1,#0x10]; int
4D9244:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
4D9246:  CMP             R2, #0
4D9248:  LDR             R0, [R0]; CAnimManager::ms_aAnimBlocks ...
4D924A:  SUB.W           R0, R1, R0
4D924E:  MOV.W           R0, R0,ASR#5; this
4D9252:  BEQ             loc_4D9260
4D9254:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
4D9258:  MOVS            R0, #1
4D925A:  STRB.W          R0, [R8,#0xA]
4D925E:  B               loc_4D9282
4D9260:  MOVW            R1, #0x63E7
4D9264:  ADD             R0, R1; this
4D9266:  MOVS            R1, #8; int
4D9268:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
4D926C:  LDRB.W          R0, [R8,#0x26]
4D9270:  SUBS            R0, #0xB
4D9272:  UXTB            R0, R0
4D9274:  CMP             R0, #3
4D9276:  ITT LS
4D9278:  MOVLS           R0, #0xB
4D927A:  STRBLS.W        R0, [R8,#0x26]
4D927E:  MOV.W           R9, #4
4D9282:  SXTB.W          R0, R9
4D9286:  POP.W           {R8,R9,R11}
4D928A:  POP             {R4-R7,PC}
