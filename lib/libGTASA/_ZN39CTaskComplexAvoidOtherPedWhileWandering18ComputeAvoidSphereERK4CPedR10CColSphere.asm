; =========================================================
; Game Engine Function: _ZN39CTaskComplexAvoidOtherPedWhileWandering18ComputeAvoidSphereERK4CPedR10CColSphere
; Address            : 0x5221C0 - 0x52226C
; =========================================================

5221C0:  PUSH            {R4-R7,LR}
5221C2:  ADD             R7, SP, #0xC
5221C4:  PUSH.W          {R8-R11}
5221C8:  SUB             SP, SP, #0x8C
5221CA:  MOV             R6, R0
5221CC:  MOV             R8, R1
5221CE:  LDR             R0, [R6,#0xC]
5221D0:  MOV             R10, R2
5221D2:  MOVS            R2, #0xFF
5221D4:  MOVS            R3, #0
5221D6:  LDR.W           R4, [R8,#0x440]
5221DA:  LDR             R1, [R0,#0x14]
5221DC:  STRD.W          R3, R2, [SP,#0xA8+var_A8]; unsigned __int8
5221E0:  MOVS            R3, #0; unsigned __int8
5221E2:  ADD.W           R2, R1, #0x30 ; '0'
5221E6:  CMP             R1, #0
5221E8:  MOVW            R1, #0x6666
5221EC:  IT EQ
5221EE:  ADDEQ           R2, R0, #4; CVector *
5221F0:  MOVT            R1, #0x3F86; float
5221F4:  MOV             R0, R10; this
5221F6:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
5221FA:  ADD.W           R4, R4, #0x130
5221FE:  ADD.W           R11, SP, #0xA8+var_5C
522202:  ADD             R5, SP, #0xA8+var_9C
522204:  MOV.W           R9, #0
522208:  LDR.W           R1, [R4,R9,LSL#2]; CPed *
52220C:  LDR             R0, [R6,#0xC]
52220E:  CMP             R1, R0
522210:  BEQ             loc_522224
522212:  MOV             R0, R8; this
522214:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
522218:  CMP             R0, #0
52221A:  ITE EQ
52221C:  LDREQ.W         R0, [R4,R9,LSL#2]
522220:  MOVNE           R0, #0
522222:  B               loc_522226
522224:  MOVS            R0, #0
522226:  STR.W           R0, [R11,R9,LSL#2]
52222A:  MOVS            R0, #0
52222C:  STR.W           R0, [R5,R9,LSL#2]
522230:  ADD.W           R9, R9, #1
522234:  CMP.W           R9, #0x10
522238:  BNE             loc_522208
52223A:  LDR             R0, [R6,#0xC]; this
52223C:  ADD             R3, SP, #0xA8+var_5C; CPed **
52223E:  MOV             R2, R10; CColSphere *
522240:  STR             R0, [SP,#0xA8+var_9C]
522242:  STR             R5, [SP,#0xA8+var_A8]; CPed **
522244:  BLX             j__ZN39CTaskComplexAvoidOtherPedWhileWandering18NearbyPedsInSphereERK4CPedRK10CColSpherePPS0_S7_; CTaskComplexAvoidOtherPedWhileWandering::NearbyPedsInSphere(CPed const&,CColSphere const&,CPed**,CPed**)
522248:  CMP             R0, #1
52224A:  BNE             loc_522264
52224C:  ADD             R6, SP, #0xA8+var_5C
52224E:  MOV             R1, R10; CColSphere *
522250:  MOV             R2, R5; CPed **
522252:  BLX             j__ZN39CTaskComplexAvoidOtherPedWhileWandering13ComputeSphereER10CColSpherePP4CPed; CTaskComplexAvoidOtherPedWhileWandering::ComputeSphere(CColSphere &,CPed **)
522256:  MOV             R2, R10; CColSphere *
522258:  MOV             R3, R6; CPed **
52225A:  STR             R5, [SP,#0xA8+var_A8]; CPed **
52225C:  BLX             j__ZN39CTaskComplexAvoidOtherPedWhileWandering18NearbyPedsInSphereERK4CPedRK10CColSpherePPS0_S7_; CTaskComplexAvoidOtherPedWhileWandering::NearbyPedsInSphere(CPed const&,CColSphere const&,CPed**,CPed**)
522260:  CMP             R0, #0
522262:  BNE             loc_52224E
522264:  ADD             SP, SP, #0x8C
522266:  POP.W           {R8-R11}
52226A:  POP             {R4-R7,PC}
