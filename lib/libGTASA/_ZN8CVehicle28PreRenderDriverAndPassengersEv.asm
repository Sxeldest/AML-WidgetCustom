; =========================================================
; Game Engine Function: _ZN8CVehicle28PreRenderDriverAndPassengersEv
; Address            : 0x582210 - 0x5822C2
; =========================================================

582210:  PUSH            {R4,R6,R7,LR}
582212:  ADD             R7, SP, #8
582214:  MOV             R4, R0
582216:  LDR.W           R0, [R4,#0x464]; this
58221A:  CBZ             R0, loc_582228
58221C:  LDR.W           R1, [R0,#0x44C]
582220:  CMP             R1, #0x32 ; '2'
582222:  BNE             loc_582228
582224:  BLX             j__ZN4CPed18PreRenderAfterTestEv; CPed::PreRenderAfterTest(void)
582228:  LDR.W           R0, [R4,#0x468]; this
58222C:  CBZ             R0, loc_58223A
58222E:  LDR.W           R1, [R0,#0x44C]
582232:  CMP             R1, #0x32 ; '2'
582234:  IT EQ
582236:  BLXEQ           j__ZN4CPed18PreRenderAfterTestEv; CPed::PreRenderAfterTest(void)
58223A:  LDR.W           R0, [R4,#0x46C]; this
58223E:  CBZ             R0, loc_58224C
582240:  LDR.W           R1, [R0,#0x44C]
582244:  CMP             R1, #0x32 ; '2'
582246:  IT EQ
582248:  BLXEQ           j__ZN4CPed18PreRenderAfterTestEv; CPed::PreRenderAfterTest(void)
58224C:  LDR.W           R0, [R4,#0x470]; this
582250:  CBZ             R0, loc_58225E
582252:  LDR.W           R1, [R0,#0x44C]
582256:  CMP             R1, #0x32 ; '2'
582258:  IT EQ
58225A:  BLXEQ           j__ZN4CPed18PreRenderAfterTestEv; CPed::PreRenderAfterTest(void)
58225E:  LDR.W           R0, [R4,#0x474]; this
582262:  CBZ             R0, loc_582270
582264:  LDR.W           R1, [R0,#0x44C]
582268:  CMP             R1, #0x32 ; '2'
58226A:  IT EQ
58226C:  BLXEQ           j__ZN4CPed18PreRenderAfterTestEv; CPed::PreRenderAfterTest(void)
582270:  LDR.W           R0, [R4,#0x478]; this
582274:  CBZ             R0, loc_582282
582276:  LDR.W           R1, [R0,#0x44C]
58227A:  CMP             R1, #0x32 ; '2'
58227C:  IT EQ
58227E:  BLXEQ           j__ZN4CPed18PreRenderAfterTestEv; CPed::PreRenderAfterTest(void)
582282:  LDR.W           R0, [R4,#0x47C]; this
582286:  CBZ             R0, loc_582294
582288:  LDR.W           R1, [R0,#0x44C]
58228C:  CMP             R1, #0x32 ; '2'
58228E:  IT EQ
582290:  BLXEQ           j__ZN4CPed18PreRenderAfterTestEv; CPed::PreRenderAfterTest(void)
582294:  LDR.W           R0, [R4,#0x480]; this
582298:  CBZ             R0, loc_5822A6
58229A:  LDR.W           R1, [R0,#0x44C]
58229E:  CMP             R1, #0x32 ; '2'
5822A0:  IT EQ
5822A2:  BLXEQ           j__ZN4CPed18PreRenderAfterTestEv; CPed::PreRenderAfterTest(void)
5822A6:  LDR.W           R0, [R4,#0x484]; this
5822AA:  CMP             R0, #0
5822AC:  IT EQ
5822AE:  POPEQ           {R4,R6,R7,PC}
5822B0:  LDR.W           R1, [R0,#0x44C]
5822B4:  CMP             R1, #0x32 ; '2'
5822B6:  BNE             locret_5822C0
5822B8:  POP.W           {R4,R6,R7,LR}
5822BC:  B.W             sub_195400
5822C0:  POP             {R4,R6,R7,PC}
