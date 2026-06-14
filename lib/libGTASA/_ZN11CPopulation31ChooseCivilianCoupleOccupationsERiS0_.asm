; =========================================================
; Game Engine Function: _ZN11CPopulation31ChooseCivilianCoupleOccupationsERiS0_
; Address            : 0x4CEC58 - 0x4CED30
; =========================================================

4CEC58:  PUSH            {R4-R7,LR}
4CEC5A:  ADD             R7, SP, #0xC
4CEC5C:  PUSH.W          {R8-R10}
4CEC60:  SUB             SP, SP, #0x18; int
4CEC62:  MOV             R9, R0
4CEC64:  LDR             R0, =(_ZN8CWeather13WeatherRegionE_ptr - 0x4CEC70)
4CEC66:  MOV             R8, R1
4CEC68:  MOV.W           R10, #1
4CEC6C:  ADD             R0, PC; _ZN8CWeather13WeatherRegionE_ptr
4CEC6E:  MOVS            R4, #0
4CEC70:  LDR             R0, [R0]; CWeather::WeatherRegion ...
4CEC72:  LDRH            R0, [R0]; CWeather::WeatherRegion
4CEC74:  CMP             R0, #2
4CEC76:  BNE             loc_4CEC88
4CEC78:  BLX             rand
4CEC7C:  TST.W           R0, #0x10
4CEC80:  BNE             loc_4CEC8E
4CEC82:  MOVS            R5, #(stderr+1)
4CEC84:  MOVS            R6, #0
4CEC86:  B               loc_4CEC98
4CEC88:  MOVS            R6, #0
4CEC8A:  MOVS            R5, #1
4CEC8C:  B               loc_4CEC98
4CEC8E:  BLX             rand
4CEC92:  UBFX.W          R6, R0, #5, #1
4CEC96:  MOV             R5, R6
4CEC98:  MOV.W           R0, #0xFFFFFFFF
4CEC9C:  MOV             R1, R6; bool
4CEC9E:  STMEA.W         SP, {R0,R4,R10}
4CECA2:  MOV             R0, R5; this
4CECA4:  MOV.W           R2, #0xFFFFFFFF; bool
4CECA8:  MOV.W           R3, #0xFFFFFFFF; int
4CECAC:  STRD.W          R4, R4, [SP,#0x30+var_24]; bool
4CECB0:  BLX             j__ZN11CPopulation24ChooseCivilianOccupationEbbiiibbbPc; CPopulation::ChooseCivilianOccupation(bool,bool,int,int,int,bool,bool,bool,char *)
4CECB4:  MOV             R3, R0; int
4CECB6:  CMP             R3, #0
4CECB8:  STR.W           R3, [R9]
4CECBC:  BLT             loc_4CECEE
4CECBE:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CECC8)
4CECC0:  MOVS            R1, #0
4CECC2:  MOVS            R2, #1
4CECC4:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CECC6:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4CECC8:  LDR.W           R0, [R0,R3,LSL#2]
4CECCC:  LDR             R0, [R0,#0x44]
4CECCE:  STMEA.W         SP, {R0-R2}
4CECD2:  MOV             R0, R6; this
4CECD4:  MOV.W           R2, #0xFFFFFFFF; bool
4CECD8:  STRD.W          R1, R1, [SP,#0x30+var_24]; bool
4CECDC:  MOV             R1, R5; bool
4CECDE:  BLX             j__ZN11CPopulation24ChooseCivilianOccupationEbbiiibbbPc; CPopulation::ChooseCivilianOccupation(bool,bool,int,int,int,bool,bool,bool,char *)
4CECE2:  STR.W           R0, [R8]
4CECE6:  CMP.W           R0, #0xFFFFFFFF
4CECEA:  BGT             loc_4CECF8
4CECEC:  B               loc_4CED1C
4CECEE:  LDR.W           R0, [R8]
4CECF2:  CMP.W           R0, #0xFFFFFFFF
4CECF6:  BLE             loc_4CED1C
4CECF8:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CED02)
4CECFA:  LDR.W           R2, [R9]
4CECFE:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CED00:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
4CED02:  LDR.W           R0, [R1,R0,LSL#2]
4CED06:  LDR.W           R1, [R1,R2,LSL#2]
4CED0A:  LDR             R0, [R0,#0x44]
4CED0C:  LDR             R1, [R1,#0x44]
4CED0E:  CMP             R1, #0x28 ; '('
4CED10:  BNE             loc_4CED18
4CED12:  CMP             R0, #0x28 ; '('
4CED14:  BNE             loc_4CED1C
4CED16:  B               loc_4CED28
4CED18:  CMP             R0, #0x28 ; '('
4CED1A:  BNE             loc_4CED28
4CED1C:  MOV.W           R0, #0xFFFFFFFF
4CED20:  STR.W           R0, [R8]
4CED24:  STR.W           R0, [R9]
4CED28:  ADD             SP, SP, #0x18
4CED2A:  POP.W           {R8-R10}
4CED2E:  POP             {R4-R7,PC}
