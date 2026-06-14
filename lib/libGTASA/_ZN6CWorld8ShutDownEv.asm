; =========================================================
; Game Engine Function: _ZN6CWorld8ShutDownEv
; Address            : 0x422E74 - 0x4231F4
; =========================================================

422E74:  PUSH            {R4-R7,LR}
422E76:  ADD             R7, SP, #0xC
422E78:  PUSH.W          {R8-R11}
422E7C:  SUB             SP, SP, #0x14
422E7E:  BLX             j__ZN9CIplStore8ShutdownEv; CIplStore::Shutdown(void)
422E82:  LDR             R0, =(_ZN6CWorld15ms_aLodPtrListsE_ptr - 0x422E8C)
422E84:  MOV.W           R9, #0
422E88:  ADD             R0, PC; _ZN6CWorld15ms_aLodPtrListsE_ptr
422E8A:  LDR.W           R8, [R0]; CWorld::ms_aLodPtrLists ...
422E8E:  LDR.W           R6, [R8,R9,LSL#2]
422E92:  CBZ             R6, loc_422EC8
422E94:  LDRD.W          R4, R5, [R6]
422E98:  LDR             R0, [R4]
422E9A:  LDR             R1, [R0,#0x10]
422E9C:  MOV             R0, R4
422E9E:  BLX             R1
422EA0:  LDRB.W          R0, [R4,#0x3A]
422EA4:  AND.W           R0, R0, #7
422EA8:  SUBS            R0, #2
422EAA:  UXTB            R0, R0
422EAC:  CMP             R0, #2
422EAE:  ITT LS
422EB0:  MOVLS           R0, R4; this
422EB2:  BLXLS           j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
422EB6:  LDR             R0, [R6]
422EB8:  CMP             R0, #0
422EBA:  ITTT NE
422EBC:  LDRNE           R1, [R0]
422EBE:  LDRNE           R1, [R1,#4]
422EC0:  BLXNE           R1
422EC2:  CMP             R5, #0
422EC4:  MOV             R6, R5
422EC6:  BNE             loc_422E94
422EC8:  ADD.W           R9, R9, #1
422ECC:  CMP.W           R9, #0x384
422ED0:  BNE             loc_422E8E
422ED2:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x422EDC)
422ED4:  MOV.W           R9, #0
422ED8:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
422EDA:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
422EDC:  STR             R0, [SP,#0x30+var_20]
422EDE:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x422EE4)
422EE0:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
422EE2:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
422EE4:  STR             R0, [SP,#0x30+var_24]
422EE6:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x422EEC)
422EE8:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
422EEA:  LDR.W           R10, [R0]; CWorld::ms_aRepeatSectors ...
422EEE:  LDR             R0, [SP,#0x30+var_20]
422EF0:  ADD.W           R11, R9, R9,LSL#1
422EF4:  LDR.W           R6, [R0,R11,LSL#2]
422EF8:  CBZ             R6, loc_422F30
422EFA:  LDRD.W          R4, R8, [R6]
422EFE:  LDR             R0, [R4]
422F00:  LDR             R1, [R0,#0x10]
422F02:  MOV             R0, R4
422F04:  BLX             R1
422F06:  LDRB.W          R0, [R4,#0x3A]
422F0A:  AND.W           R0, R0, #7
422F0E:  SUBS            R0, #2
422F10:  UXTB            R0, R0
422F12:  CMP             R0, #2
422F14:  ITT LS
422F16:  MOVLS           R0, R4; this
422F18:  BLXLS           j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
422F1C:  LDR             R0, [R6]
422F1E:  CMP             R0, #0
422F20:  ITTT NE
422F22:  LDRNE           R1, [R0]
422F24:  LDRNE           R1, [R1,#4]
422F26:  BLXNE           R1
422F28:  CMP.W           R8, #0
422F2C:  MOV             R6, R8
422F2E:  BNE             loc_422EFA
422F30:  LDR             R0, [SP,#0x30+var_24]
422F32:  ADD.W           R0, R0, R11,LSL#2
422F36:  LDR             R6, [R0,#4]
422F38:  CBZ             R6, loc_422F6E
422F3A:  LDRD.W          R4, R5, [R6]
422F3E:  LDR             R0, [R4]
422F40:  LDR             R1, [R0,#0x10]
422F42:  MOV             R0, R4
422F44:  BLX             R1
422F46:  LDRB.W          R0, [R4,#0x3A]
422F4A:  AND.W           R0, R0, #7
422F4E:  SUBS            R0, #2
422F50:  UXTB            R0, R0
422F52:  CMP             R0, #2
422F54:  ITT LS
422F56:  MOVLS           R0, R4; this
422F58:  BLXLS           j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
422F5C:  LDR             R0, [R6]
422F5E:  CMP             R0, #0
422F60:  ITTT NE
422F62:  LDRNE           R1, [R0]
422F64:  LDRNE           R1, [R1,#4]
422F66:  BLXNE           R1
422F68:  CMP             R5, #0
422F6A:  MOV             R6, R5
422F6C:  BNE             loc_422F3A
422F6E:  ADD.W           R0, R10, R11,LSL#2
422F72:  LDR             R5, [R0,#8]
422F74:  CBZ             R5, loc_422FAA
422F76:  LDRD.W          R4, R6, [R5]
422F7A:  LDR             R0, [R4]
422F7C:  LDR             R1, [R0,#0x10]
422F7E:  MOV             R0, R4
422F80:  BLX             R1
422F82:  LDRB.W          R0, [R4,#0x3A]
422F86:  AND.W           R0, R0, #7
422F8A:  SUBS            R0, #2
422F8C:  UXTB            R0, R0
422F8E:  CMP             R0, #2
422F90:  ITT LS
422F92:  MOVLS           R0, R4; this
422F94:  BLXLS           j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
422F98:  LDR             R0, [R5]
422F9A:  CMP             R0, #0
422F9C:  ITTT NE
422F9E:  LDRNE           R1, [R0]
422FA0:  LDRNE           R1, [R1,#4]
422FA2:  BLXNE           R1
422FA4:  CMP             R6, #0
422FA6:  MOV             R5, R6
422FA8:  BNE             loc_422F76
422FAA:  ADD.W           R9, R9, #1
422FAE:  CMP.W           R9, #0x100
422FB2:  BNE             loc_422EEE
422FB4:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x422FBE)
422FB6:  MOV.W           R11, #0
422FBA:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
422FBC:  LDR.W           R9, [R0]; CWorld::ms_aSectors ...
422FC0:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x422FC6)
422FC2:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
422FC4:  LDR             R0, [R0]; CWorld::ms_aSectors ...
422FC6:  STR             R0, [SP,#0x30+var_20]
422FC8:  LDR.W           R6, [R9,R11,LSL#3]
422FCC:  ADD.W           R8, R9, R11,LSL#3
422FD0:  CBZ             R6, loc_423006
422FD2:  LDRD.W          R5, R4, [R6]
422FD6:  LDR             R0, [R5]
422FD8:  LDR             R1, [R0,#0x10]
422FDA:  MOV             R0, R5
422FDC:  BLX             R1
422FDE:  LDRB.W          R0, [R5,#0x3A]
422FE2:  AND.W           R0, R0, #7
422FE6:  SUBS            R0, #2
422FE8:  UXTB            R0, R0
422FEA:  CMP             R0, #2
422FEC:  ITT LS
422FEE:  MOVLS           R0, R5; this
422FF0:  BLXLS           j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
422FF4:  LDR             R0, [R6]
422FF6:  CMP             R0, #0
422FF8:  ITTT NE
422FFA:  LDRNE           R1, [R0]
422FFC:  LDRNE           R1, [R1,#4]
422FFE:  BLXNE           R1
423000:  CMP             R4, #0
423002:  MOV             R6, R4
423004:  BNE             loc_422FD2
423006:  LDR             R0, [SP,#0x30+var_20]
423008:  ADD.W           R5, R0, R11,LSL#3
42300C:  LDR.W           R4, [R5,#4]!
423010:  CBZ             R4, loc_423048
423012:  LDRD.W          R6, R10, [R4]
423016:  LDR             R0, [R6]
423018:  LDR             R1, [R0,#0x10]
42301A:  MOV             R0, R6
42301C:  BLX             R1
42301E:  LDRB.W          R0, [R6,#0x3A]
423022:  AND.W           R0, R0, #7
423026:  SUBS            R0, #2
423028:  UXTB            R0, R0
42302A:  CMP             R0, #2
42302C:  ITT LS
42302E:  MOVLS           R0, R6; this
423030:  BLXLS           j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
423034:  LDR             R0, [R4]
423036:  CMP             R0, #0
423038:  ITTT NE
42303A:  LDRNE           R1, [R0]
42303C:  LDRNE           R1, [R1,#4]
42303E:  BLXNE           R1
423040:  CMP.W           R10, #0
423044:  MOV             R4, R10
423046:  BNE             loc_423012
423048:  MOV             R0, R8; this
42304A:  BLX             j__ZN18CPtrListSingleLink5FlushEv; CPtrListSingleLink::Flush(void)
42304E:  MOV             R0, R5; this
423050:  BLX             j__ZN18CPtrListDoubleLink5FlushEv; CPtrListDoubleLink::Flush(void)
423054:  ADD.W           R11, R11, #1
423058:  CMP.W           R11, #0x3840
42305C:  BNE             loc_422FC8
42305E:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x423070)
423060:  MOVW            R5, #0xC7C0
423064:  MOVW            R10, #0x8889
423068:  ADR.W           R9, aBuildingOverla; "Building overlap list %d,%d not empty\n"
42306C:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
42306E:  MOVT            R5, #0xFFFF
423072:  MOVT            R10, #0x8888
423076:  LDR             R0, [R0]; CWorld::ms_aSectors ...
423078:  ADDS            R4, R0, #4
42307A:  LDR             R0, =(gString_ptr - 0x423080)
42307C:  ADD             R0, PC; gString_ptr
42307E:  LDR.W           R11, [R0]; gString
423082:  LDR             R0, =(gString_ptr - 0x423088)
423084:  ADD             R0, PC; gString_ptr
423086:  LDR             R6, [R0]; gString
423088:  LDR.W           R0, [R4,#-4]; CWorld::ms_aSectors
42308C:  ADD.W           R8, R5, #0x3840
423090:  CBZ             R0, loc_4230B8
423092:  SMMLA.W         R0, R10, R8, R8
423096:  UMULL.W         R1, R3, R8, R10
42309A:  ASRS            R1, R0, #6
42309C:  ADD.W           R0, R1, R0,LSR#31
4230A0:  MOV             R1, R9
4230A2:  RSB.W           R0, R0, R0,LSL#4
4230A6:  LSRS            R3, R3, #6
4230A8:  SUB.W           R2, R8, R0,LSL#3
4230AC:  MOV             R0, R6
4230AE:  BL              sub_5E6BC0
4230B2:  SUBS            R0, R4, #4; this
4230B4:  BLX             j__ZN18CPtrListSingleLink5FlushEv; CPtrListSingleLink::Flush(void)
4230B8:  LDR             R0, [R4]
4230BA:  CBZ             R0, loc_4230E2
4230BC:  SMMLA.W         R0, R10, R8, R8
4230C0:  UMULL.W         R1, R3, R8, R10
4230C4:  ASRS            R1, R0, #6
4230C6:  ADD.W           R0, R1, R0,LSR#31
4230CA:  ADR             R1, aDummyOverlapLi; "Dummy overlap list %d,%d not empty\n"
4230CC:  RSB.W           R0, R0, R0,LSL#4
4230D0:  LSRS            R3, R3, #6
4230D2:  SUB.W           R2, R8, R0,LSL#3
4230D6:  MOV             R0, R11
4230D8:  BL              sub_5E6BC0
4230DC:  MOV             R0, R4; this
4230DE:  BLX             j__ZN18CPtrListDoubleLink5FlushEv; CPtrListDoubleLink::Flush(void)
4230E2:  ADDS            R4, #8
4230E4:  ADDS            R5, #1
4230E6:  BNE             loc_423088
4230E8:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4230F4)
4230EA:  MOV.W           R9, #0
4230EE:  MOVS            R6, #0
4230F0:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4230F2:  LDR.W           R8, [R0]; CWorld::ms_aRepeatSectors ...
4230F6:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4230FC)
4230F8:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4230FA:  LDR.W           R11, [R0]; CWorld::ms_aRepeatSectors ...
4230FE:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423104)
423100:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423102:  LDR             R4, [R0]; CWorld::ms_aRepeatSectors ...
423104:  LDR             R0, =(gString_ptr - 0x42310A)
423106:  ADD             R0, PC; gString_ptr
423108:  LDR             R0, [R0]; gString
42310A:  STR             R0, [SP,#0x30+var_20]
42310C:  LDR             R0, =(gString_ptr - 0x423112)
42310E:  ADD             R0, PC; gString_ptr
423110:  LDR             R0, [R0]; gString
423112:  STR             R0, [SP,#0x30+var_24]
423114:  LDR             R0, =(gString_ptr - 0x42311A)
423116:  ADD             R0, PC; gString_ptr
423118:  LDR             R0, [R0]; gString
42311A:  STR             R0, [SP,#0x30+var_28]
42311C:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x423122)
42311E:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
423120:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
423122:  STR             R0, [SP,#0x30+var_2C]
423124:  LDR.W           R0, [R8,R9]
423128:  CBZ             R0, loc_423152
42312A:  SMMLA.W         R0, R10, R6, R6
42312E:  UMULL.W         R1, R3, R6, R10
423132:  ASRS            R1, R0, #6
423134:  ADD.W           R0, R1, R0,LSR#31
423138:  ADR             R1, aVehicleOverlap; "Vehicle overlap list %d,%d not empty\n"
42313A:  RSB.W           R0, R0, R0,LSL#4
42313E:  LSRS            R3, R3, #6
423140:  SUB.W           R2, R6, R0,LSL#3
423144:  LDR             R0, [SP,#0x30+var_28]
423146:  BL              sub_5E6BC0
42314A:  LDR             R0, [SP,#0x30+var_2C]
42314C:  ADD             R0, R9; this
42314E:  BLX             j__ZN18CPtrListDoubleLink5FlushEv; CPtrListDoubleLink::Flush(void)
423152:  ADD.W           R5, R11, R9
423156:  LDR.W           R0, [R5,#4]!
42315A:  CBZ             R0, loc_423184
42315C:  SMMLA.W         R0, R10, R6, R6
423160:  UMULL.W         R1, R3, R6, R10
423164:  ASRS            R1, R0, #6
423166:  ADD.W           R0, R1, R0,LSR#31
42316A:  LDR             R1, =(aPedOverlapList - 0x423176); "Ped overlap list %d,%d not empty\n"
42316C:  RSB.W           R0, R0, R0,LSL#4
423170:  LSRS            R3, R3, #6
423172:  ADD             R1, PC; "Ped overlap list %d,%d not empty\n"
423174:  SUB.W           R2, R6, R0,LSL#3
423178:  LDR             R0, [SP,#0x30+var_24]
42317A:  BL              sub_5E6BC0
42317E:  MOV             R0, R5; this
423180:  BLX             j__ZN18CPtrListDoubleLink5FlushEv; CPtrListDoubleLink::Flush(void)
423184:  ADD.W           R5, R4, R9
423188:  LDR.W           R0, [R5,#8]!
42318C:  CBZ             R0, loc_4231B6
42318E:  SMMLA.W         R0, R10, R6, R6
423192:  UMULL.W         R1, R3, R6, R10
423196:  ASRS            R1, R0, #6
423198:  ADD.W           R0, R1, R0,LSR#31
42319C:  LDR             R1, =(aObjectOverlapL - 0x4231A8); "Object overlap list %d,%d not empty\n"
42319E:  RSB.W           R0, R0, R0,LSL#4
4231A2:  LSRS            R3, R3, #6
4231A4:  ADD             R1, PC; "Object overlap list %d,%d not empty\n"
4231A6:  SUB.W           R2, R6, R0,LSL#3
4231AA:  LDR             R0, [SP,#0x30+var_20]
4231AC:  BL              sub_5E6BC0
4231B0:  MOV             R0, R5; this
4231B2:  BLX             j__ZN18CPtrListDoubleLink5FlushEv; CPtrListDoubleLink::Flush(void)
4231B6:  ADD.W           R9, R9, #0xC
4231BA:  ADDS            R6, #1
4231BC:  CMP.W           R9, #0xC00
4231C0:  BNE             loc_423124
4231C2:  LDR             R0, =(_ZN6CWorld23ms_listMovingEntityPtrsE_ptr - 0x4231C8)
4231C4:  ADD             R0, PC; _ZN6CWorld23ms_listMovingEntityPtrsE_ptr
4231C6:  LDR             R0, [R0]; this
4231C8:  BLX             j__ZN18CPtrListDoubleLink5FlushEv; CPtrListDoubleLink::Flush(void)
4231CC:  LDR             R0, =(_ZN6CWorld29ms_listObjectsWithControlCodeE_ptr - 0x4231D2)
4231CE:  ADD             R0, PC; _ZN6CWorld29ms_listObjectsWithControlCodeE_ptr
4231D0:  LDR             R0, [R0]; this
4231D2:  BLX             j__ZN18CPtrListDoubleLink5FlushEv; CPtrListDoubleLink::Flush(void)
4231D6:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x4231DC)
4231D8:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
4231DA:  LDR             R4, [R0]; CWorld::Players ...
4231DC:  ADDS            R0, R4, #4; this
4231DE:  BLX             j__ZN14CPlayerPedData14DeAllocateDataEv; CPlayerPedData::DeAllocateData(void)
4231E2:  ADD.W           R0, R4, #0x198; this
4231E6:  ADD             SP, SP, #0x14
4231E8:  POP.W           {R8-R11}
4231EC:  POP.W           {R4-R7,LR}
4231F0:  B.W             sub_1972A0
