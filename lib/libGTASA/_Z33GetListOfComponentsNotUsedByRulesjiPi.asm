; =========================================================
; Game Engine Function: _Z33GetListOfComponentsNotUsedByRulesjiPi
; Address            : 0x3885FC - 0x3886FE
; =========================================================

3885FC:  PUSH            {R7,LR}
3885FE:  MOV             R7, SP
388600:  SUB             SP, SP, #0x18
388602:  LDR             R3, =(unk_610A30 - 0x38860A)
388604:  MOV             R12, SP
388606:  ADD             R3, PC; unk_610A30
388608:  VLD1.64         {D16-D17}, [R3]!
38860C:  VLDR            D18, [R3]
388610:  MOV             R3, R12
388612:  VST1.64         {D16-D17}, [R3]!
388616:  VSTR            D18, [R3]
38861A:  UBFX.W          R3, R0, #0xC, #4
38861E:  CBZ             R3, loc_388678
388620:  CMP             R3, #4
388622:  BEQ             loc_388686
388624:  CMP             R3, #2
388626:  BNE             loc_388648
388628:  LDR             R3, =(_ZN8CWeather14OldWeatherTypeE_ptr - 0x38862E)
38862A:  ADD             R3, PC; _ZN8CWeather14OldWeatherTypeE_ptr
38862C:  LDR             R3, [R3]; CWeather::OldWeatherType ...
38862E:  LDRH            R3, [R3]; CWeather::OldWeatherType
388630:  CMP             R3, #8
388632:  IT NE
388634:  CMPNE           R3, #0x10
388636:  BEQ             loc_388648
388638:  LDR             R3, =(_ZN8CWeather14NewWeatherTypeE_ptr - 0x38863E)
38863A:  ADD             R3, PC; _ZN8CWeather14NewWeatherTypeE_ptr
38863C:  LDR             R3, [R3]; CWeather::NewWeatherType ...
38863E:  LDRH            R3, [R3]; CWeather::NewWeatherType
388640:  CMP             R3, #0x10
388642:  IT NE
388644:  CMPNE           R3, #8
388646:  BNE             loc_388678
388648:  AND.W           LR, R0, #0xF
38864C:  CMP.W           LR, #0xF
388650:  ITT NE
388652:  MOVNE           R3, #0xF
388654:  STRNE.W         R3, [R12,LR,LSL#2]
388658:  UBFX.W          LR, R0, #4, #4
38865C:  CMP.W           LR, #0xF
388660:  ITT NE
388662:  MOVNE           R3, #0xF
388664:  STRNE.W         R3, [R12,LR,LSL#2]
388668:  UBFX.W          LR, R0, #8, #4
38866C:  CMP.W           LR, #0xF
388670:  ITT NE
388672:  MOVNE           R3, #0xF
388674:  STRNE.W         R3, [R12,LR,LSL#2]
388678:  MOVS            R3, #2
38867A:  CMP.W           R3, R0,LSR#28
38867E:  BEQ             loc_38868C
388680:  LSRS            R3, R0, #0x1C
388682:  BEQ             loc_3886DA
388684:  B               loc_3886AC
388686:  MOVS            R0, #0
388688:  ADD             SP, SP, #0x18
38868A:  POP             {R7,PC}
38868C:  LDR             R3, =(_ZN8CWeather14OldWeatherTypeE_ptr - 0x388692)
38868E:  ADD             R3, PC; _ZN8CWeather14OldWeatherTypeE_ptr
388690:  LDR             R3, [R3]; CWeather::OldWeatherType ...
388692:  LDRH            R3, [R3]; CWeather::OldWeatherType
388694:  CMP             R3, #8
388696:  IT NE
388698:  CMPNE           R3, #0x10
38869A:  BEQ             loc_3886AC
38869C:  LDR             R3, =(_ZN8CWeather14NewWeatherTypeE_ptr - 0x3886A2)
38869E:  ADD             R3, PC; _ZN8CWeather14NewWeatherTypeE_ptr
3886A0:  LDR             R3, [R3]; CWeather::NewWeatherType ...
3886A2:  LDRH            R3, [R3]; CWeather::NewWeatherType
3886A4:  CMP             R3, #0x10
3886A6:  IT NE
3886A8:  CMPNE           R3, #8
3886AA:  BNE             loc_3886DA
3886AC:  UBFX.W          LR, R0, #0x10, #4
3886B0:  CMP.W           LR, #0xF
3886B4:  ITT NE
3886B6:  MOVNE           R3, #0xF
3886B8:  STRNE.W         R3, [R12,LR,LSL#2]
3886BC:  UBFX.W          LR, R0, #0x14, #4
3886C0:  CMP.W           LR, #0xF
3886C4:  ITT NE
3886C6:  MOVNE           R3, #0xF
3886C8:  STRNE.W         R3, [R12,LR,LSL#2]
3886CC:  UBFX.W          R0, R0, #0x18, #4
3886D0:  CMP             R0, #0xF
3886D2:  ITT NE
3886D4:  MOVNE           R3, #0xF
3886D6:  STRNE.W         R3, [R12,R0,LSL#2]
3886DA:  MOVS            R0, #0
3886DC:  CMP             R1, #1
3886DE:  BLT             loc_3886FA
3886E0:  MOV.W           LR, #0
3886E4:  LDR.W           R3, [R12,LR,LSL#2]
3886E8:  CMP             R3, #0xF
3886EA:  ITT NE
3886EC:  STRNE.W         LR, [R2],#4
3886F0:  ADDNE           R0, #1
3886F2:  ADD.W           LR, LR, #1
3886F6:  CMP             R1, LR
3886F8:  BNE             loc_3886E4
3886FA:  ADD             SP, SP, #0x18
3886FC:  POP             {R7,PC}
