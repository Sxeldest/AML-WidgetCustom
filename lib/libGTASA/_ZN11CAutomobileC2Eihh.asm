; =========================================================
; Game Engine Function: _ZN11CAutomobileC2Eihh
; Address            : 0x54E260 - 0x54E9E0
; =========================================================

54E260:  PUSH            {R4-R7,LR}
54E262:  ADD             R7, SP, #0xC
54E264:  PUSH.W          {R8-R11}
54E268:  SUB             SP, SP, #4
54E26A:  VPUSH           {D8-D10}
54E26E:  SUB             SP, SP, #0xA0
54E270:  MOV             R6, R1
54E272:  MOV             R1, R2; unsigned __int8
54E274:  STR             R3, [SP,#0xD8+var_CC]
54E276:  MOV             R4, R0
54E278:  BLX             j__ZN8CVehicleC2Eh; CVehicle::CVehicle(uchar)
54E27C:  LDR.W           R0, =(_ZTV11CAutomobile_ptr - 0x54E288)
54E280:  ADDW            R10, R4, #0x5B4
54E284:  ADD             R0, PC; _ZTV11CAutomobile_ptr
54E286:  LDR             R0, [R0]; `vtable for'CAutomobile ...
54E288:  ADDS            R0, #8
54E28A:  STR             R0, [R4]
54E28C:  MOV             R0, R10; this
54E28E:  BLX             j__ZN14CDamageManager17ResetDamageStatusEv; CDamageManager::ResetDamageStatus(void)
54E292:  ADDW            R9, R4, #0x5CC
54E296:  MOV.W           R0, #0x3F000000
54E29A:  STR.W           R0, [R4,#0x5B4]
54E29E:  MOVS            R1, #0x90
54E2A0:  MOV             R0, R9
54E2A2:  BLX             j___aeabi_memclr8_0
54E2A6:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x54E2B8)
54E2AA:  VMOV.I32        Q8, #0
54E2AE:  ADD.W           R1, R4, #0x720
54E2B2:  STR             R1, [SP,#0xD8+var_D0]
54E2B4:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
54E2B6:  MOV.W           R8, #0
54E2BA:  VST1.32         {D16-D17}, [R1]
54E2BE:  MOVW            R1, #0xFFFF
54E2C2:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
54E2C4:  STR.W           R8, [R4,#0x730]
54E2C8:  STR.W           R8, [R4,#0x734]
54E2CC:  STRH.W          R1, [R4,#0x700]
54E2D0:  STRH.W          R1, [R4,#0x6E0]
54E2D4:  STRH.W          R1, [R4,#0x6C0]
54E2D8:  MOVS            R1, #0x18
54E2DA:  LDR.W           R11, [R0,R6,LSL#2]
54E2DE:  LDR.W           R0, =(_ZN11CAutomobile16m_sAllTaxiLightsE_ptr - 0x54E2E6)
54E2E2:  ADD             R0, PC; _ZN11CAutomobile16m_sAllTaxiLightsE_ptr
54E2E4:  LDRH.W          R5, [R11,#0x62]
54E2E8:  STR.W           R8, [R4,#0x8F8]
54E2EC:  LDR             R0, [R0]; CAutomobile::m_sAllTaxiLights ...
54E2EE:  STR.W           R8, [R4,#0x5A0]
54E2F2:  STR.W           R8, [R4,#0x5A4]
54E2F6:  STRH.W          R8, [R4,#0x87E]
54E2FA:  LDRB            R0, [R0]; CAutomobile::m_sAllTaxiLights
54E2FC:  CMP             R0, #0
54E2FE:  IT NE
54E300:  MOVNE           R0, #1
54E302:  BFI.W           R0, R1, #1, #0x1F
54E306:  STRB.W          R0, [R4,#0x87C]
54E30A:  LDR             R0, [R4]
54E30C:  MOV             R1, R6
54E30E:  LDR             R2, [R0,#0x18]
54E310:  MOV             R0, R4
54E312:  BLX             R2
54E314:  LDR.W           R0, =(mod_HandlingManager_ptr - 0x54E320)
54E318:  RSB.W           R1, R5, R5,LSL#3
54E31C:  ADD             R0, PC; mod_HandlingManager_ptr
54E31E:  LDR             R0, [R0]; mod_HandlingManager
54E320:  ADD.W           R0, R0, R1,LSL#5
54E324:  ADD.W           R1, R0, #0x14
54E328:  STR.W           R1, [R4,#0x388]
54E32C:  LDR.W           R0, [R0,#0xE4]
54E330:  STR.W           R0, [R4,#0x390]
54E334:  TST.W           R0, #0x10000
54E338:  BEQ             loc_54E354
54E33A:  BLX             rand
54E33E:  TST.W           R0, #3
54E342:  BNE             loc_54E354
54E344:  LDR.W           R0, =(MI_HYDRAULICS_ptr - 0x54E34C)
54E348:  ADD             R0, PC; MI_HYDRAULICS_ptr
54E34A:  LDR             R0, [R0]; MI_HYDRAULICS
54E34C:  LDRH            R1, [R0]; int
54E34E:  MOV             R0, R4; this
54E350:  BLX             j__ZN8CVehicle17AddVehicleUpgradeEi; CVehicle::AddVehicleUpgrade(int)
54E354:  LDR.W           R0, =(mod_HandlingManager_ptr - 0x54E35E)
54E358:  MOV             R1, R5; unsigned __int8
54E35A:  ADD             R0, PC; mod_HandlingManager_ptr
54E35C:  LDR             R0, [R0]; mod_HandlingManager ; this
54E35E:  BLX             j__ZN16cHandlingDataMgr16GetFlyingPointerEh; cHandlingDataMgr::GetFlyingPointer(uchar)
54E362:  STR.W           R0, [R4,#0x38C]
54E366:  MOVS            R0, #0x41A00000
54E36C:  STR.W           R8, [R4,#0x978]
54E370:  STR.W           R0, [R4,#0x818]
54E374:  MOVS            R0, #1
54E376:  ADDW            R1, R4, #0x43B
54E37A:  STR.W           R8, [R4,#0x81C]
54E37E:  STR.W           R8, [R4,#0x820]
54E382:  ADDW            R2, R4, #0x439; unsigned __int8 *
54E386:  STRD.W          R1, R0, [SP,#0xD8+var_D8]; unsigned __int8 *
54E38A:  ADD.W           R1, R4, #0x438; unsigned __int8 *
54E38E:  ADDW            R3, R4, #0x43A; unsigned __int8 *
54E392:  MOV             R0, R11; this
54E394:  BLX             j__ZN17CVehicleModelInfo19ChooseVehicleColourERhS0_S0_S0_i; CVehicleModelInfo::ChooseVehicleColour(uchar &,uchar &,uchar &,uchar &,int)
54E398:  LDR.W           R1, [R4,#0x42C]
54E39C:  ADDW            R3, R4, #0x42C
54E3A0:  LDR.W           R0, [R4,#0x388]
54E3A4:  LDR.W           R2, [R4,#0x430]
54E3A8:  BIC.W           R1, R1, #0xF00
54E3AC:  STR.W           R1, [R4,#0x42C]
54E3B0:  LDR.W           R6, [R0,#0xCC]
54E3B4:  TST.W           R6, #1
54E3B8:  ITTT NE
54E3BA:  ORRNE.W         R1, R1, #0x100
54E3BE:  STRDNE.W        R1, R2, [R3]
54E3C2:  LDRNE.W         R6, [R0,#0xCC]
54E3C6:  LSLS            R5, R6, #0x1C
54E3C8:  ITTT MI
54E3CA:  ORRMI.W         R1, R1, #0x400
54E3CE:  STRDMI.W        R1, R2, [R3]
54E3D2:  LDRMI.W         R6, [R0,#0xCC]
54E3D6:  LSLS            R5, R6, #0x1E
54E3D8:  ITTT MI
54E3DA:  ORRMI.W         R1, R1, #0x200
54E3DE:  STRDMI.W        R1, R2, [R3]
54E3E2:  LDRMI.W         R6, [R0,#0xCC]
54E3E6:  MOVS            R5, #0
54E3E8:  LSLS            R6, R6, #0x1D
54E3EA:  ITT MI
54E3EC:  ORRMI.W         R1, R1, #0x800
54E3F0:  STRDMI.W        R1, R2, [R3]
54E3F4:  MOVS            R2, #2
54E3F6:  MOVS            R3, #0x14
54E3F8:  STR.W           R5, [R4,#0x600]
54E3FC:  STRB.W          R2, [R4,#0x61E]
54E400:  ADR.W           R6, dword_54EA20
54E404:  STRH.W          R3, [R4,#0x61C]
54E408:  STR.W           R5, [R4,#0x618]
54E40C:  STRB.W          R2, [R4,#0x606]
54E410:  STRH.W          R3, [R4,#0x604]
54E414:  ANDS.W          R3, R1, #0x200
54E418:  ADR.W           R3, dword_54EA18
54E41C:  LDRH            R2, [R4,#0x26]
54E41E:  IT EQ
54E420:  ADDEQ           R3, #4
54E422:  IT EQ
54E424:  ADDEQ           R6, #4
54E426:  VLDR            S0, [R6]
54E42A:  ADDW            R6, R4, #0x5FC
54E42E:  VLDR            S2, [R3]
54E432:  ADDW            R3, R4, #0x614
54E436:  CMP.W           R2, #0x1B0
54E43A:  VSTR            S0, [R6]
54E43E:  VSTR            S2, [R3]
54E442:  BNE             loc_54E482
54E444:  LDR.W           R0, [R4,#0x674]
54E448:  MOV.W           R1, #0x3F800000
54E44C:  STR.W           R1, [R4,#0x62C]
54E450:  STR.W           R1, [R4,#0x630]
54E454:  STR.W           R1, [R4,#0x638]
54E458:  STR.W           R1, [R4,#0x63C]
54E45C:  STR.W           R1, [R4,#0x644]
54E460:  STR.W           R1, [R4,#0x648]
54E464:  STR.W           R1, [R4,#0x650]
54E468:  STR.W           R1, [R4,#0x654]
54E46C:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
54E470:  STRB            R5, [R0,#2]
54E472:  LDR.W           R0, [R4,#0x668]
54E476:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
54E47A:  STRB            R5, [R0,#2]
54E47C:  LDR.W           R0, [R4,#0x388]
54E480:  B               loc_54E4EE
54E482:  ADDW            R2, R4, #0x62C
54E486:  LSLS            R1, R1, #0x17
54E488:  BMI             loc_54E4B8
54E48A:  MOVW            R1, #0xD97C
54E48E:  MOVS            R3, #0x14
54E490:  MOVT            R1, #0xBFA0
54E494:  STR             R1, [R2]
54E496:  MOVS            R1, #2
54E498:  MOVS            R2, #0
54E49A:  STRB.W          R1, [R4,#0x636]
54E49E:  STR.W           R2, [R4,#0x630]
54E4A2:  STRH.W          R3, [R4,#0x634]
54E4A6:  STRB.W          R1, [R4,#0x64E]
54E4AA:  MOV             R1, #0x3FA0D97C
54E4B2:  STRH.W          R3, [R4,#0x64C]
54E4B6:  B               loc_54E4E6
54E4B8:  MOVW            R1, #0xFDB
54E4BC:  MOVS            R3, #0x10
54E4BE:  MOVT            R1, #0xBFC9
54E4C2:  STR             R1, [R2]
54E4C4:  MOVS            R1, #2
54E4C6:  MOVS            R2, #0
54E4C8:  STRB.W          R1, [R4,#0x636]
54E4CC:  STR.W           R2, [R4,#0x630]
54E4D0:  STRH.W          R3, [R4,#0x634]
54E4D4:  STRB.W          R1, [R4,#0x64E]
54E4D8:  MOVS            R1, #0x13
54E4DA:  STRH.W          R1, [R4,#0x64C]
54E4DE:  MOV             R1, #0x3FC90FDB
54E4E6:  STR.W           R1, [R4,#0x644]
54E4EA:  STR.W           R2, [R4,#0x648]
54E4EE:  LDR.W           R1, [R0,#0xCC]
54E4F2:  ADR.W           R2, dword_54EA28
54E4F6:  ANDS.W          R3, R1, #0x10
54E4FA:  MOV.W           R1, #0
54E4FE:  IT EQ
54E500:  ADDEQ           R2, #4
54E502:  CMP             R3, #0
54E504:  VLDR            S0, [R2]
54E508:  MOV.W           R2, #0x24 ; '$'
54E50C:  VSTR            S0, [R9]
54E510:  STRB.W          R1, [R4,#0x5D6]
54E514:  STR.W           R1, [R4,#0x5D0]
54E518:  IT EQ
54E51A:  MOVEQ           R2, #0x21 ; '!'
54E51C:  STRH.W          R2, [R4,#0x5D4]
54E520:  LDR.W           R2, [R0,#0xCC]
54E524:  TST.W           R2, #0x20
54E528:  BNE             loc_54E544
54E52A:  ANDS.W          R2, R2, #0x40 ; '@'
54E52E:  ADR.W           R3, dword_54EA30
54E532:  IT EQ
54E534:  ADDEQ           R3, #4
54E536:  MOVS            R6, #2
54E538:  EOR.W           R2, R6, R2,LSR#5
54E53C:  VLDR            S0, [R3]
54E540:  ADDS            R2, #0x12
54E542:  B               loc_54E54A
54E544:  VLDR            S0, =-1.2566
54E548:  MOVS            R2, #0x15
54E54A:  STRB.W          R1, [R4,#0x5EE]
54E54E:  ADD.W           R5, R4, #0x6C0
54E552:  STRH.W          R2, [R4,#0x5EC]
54E556:  STR.W           R1, [R4,#0x5E8]
54E55A:  ADDW            R1, R4, #0x5E4
54E55E:  VSTR            S0, [R1]
54E562:  LDRB.W          R0, [R0,#0xCD]
54E566:  LSLS            R0, R0, #0x1F
54E568:  BEQ             loc_54E592
54E56A:  MOV             R0, R10
54E56C:  MOVS            R1, #2
54E56E:  MOVS            R2, #4
54E570:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
54E574:  MOV             R0, R10
54E576:  MOVS            R1, #3
54E578:  MOVS            R2, #4
54E57A:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
54E57E:  MOV             R0, R10
54E580:  MOVS            R1, #4
54E582:  MOVS            R2, #4
54E584:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
54E588:  MOV             R0, R10
54E58A:  MOVS            R1, #5
54E58C:  MOVS            R2, #4
54E58E:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
54E592:  BLX             rand
54E596:  VMOV            S0, R0
54E59A:  VLDR            S16, =4.6566e-10
54E59E:  VLDR            S18, =0.3
54E5A2:  ADD.W           R0, R4, #0x8E0
54E5A6:  VCVT.F32.S32    S0, S0
54E5AA:  VLDR            S20, =-0.15
54E5AE:  VMUL.F32        S0, S0, S16
54E5B2:  VMUL.F32        S0, S0, S18
54E5B6:  VADD.F32        S0, S0, S20
54E5BA:  VSTR            S0, [R0]
54E5BE:  BLX             rand
54E5C2:  VMOV            S0, R0
54E5C6:  ADDW            R0, R4, #0x8E4
54E5CA:  VCVT.F32.S32    S0, S0
54E5CE:  VMUL.F32        S0, S0, S16
54E5D2:  VMUL.F32        S0, S0, S18
54E5D6:  VADD.F32        S0, S0, S20
54E5DA:  VSTR            S0, [R0]
54E5DE:  BLX             rand
54E5E2:  VMOV            S0, R0
54E5E6:  ADDW            R0, R4, #0x8E8
54E5EA:  VCVT.F32.S32    S0, S0
54E5EE:  VMUL.F32        S0, S0, S16
54E5F2:  VMUL.F32        S0, S0, S18
54E5F6:  VADD.F32        S0, S0, S20
54E5FA:  VSTR            S0, [R0]
54E5FE:  BLX             rand
54E602:  VMOV            S0, R0
54E606:  ADDW            R0, R4, #0x8EC
54E60A:  VCVT.F32.S32    S0, S0
54E60E:  VMUL.F32        S0, S0, S16
54E612:  VMUL.F32        S0, S0, S18
54E616:  VADD.F32        S0, S0, S20
54E61A:  VSTR            S0, [R0]
54E61E:  BLX             rand
54E622:  VMOV            S0, R0
54E626:  ADD.W           R0, R4, #0x8F0
54E62A:  VCVT.F32.S32    S0, S0
54E62E:  VMUL.F32        S0, S0, S16
54E632:  VMUL.F32        S0, S0, S18
54E636:  VADD.F32        S0, S0, S20
54E63A:  VSTR            S0, [R0]
54E63E:  BLX             rand
54E642:  VMOV            S0, R0
54E646:  ADDW            R1, R4, #0x8F4
54E64A:  VCVT.F32.S32    S0, S0
54E64E:  LDRH            R0, [R4,#0x26]
54E650:  VMUL.F32        S0, S0, S16
54E654:  VMUL.F32        S0, S0, S18
54E658:  VADD.F32        S0, S0, S20
54E65C:  VSTR            S0, [R1]
54E660:  MOVW            R1, #0x213
54E664:  CMP             R0, R1
54E666:  BEQ             loc_54E688
54E668:  MOVW            R1, #0x20D
54E66C:  CMP             R0, R1
54E66E:  BNE             loc_54E6A6
54E670:  LDR.W           R0, [R4,#0x6B0]
54E674:  CBZ             R0, loc_54E6A6
54E676:  LDRH            R0, [R5]
54E678:  MOVW            R1, #0xFFFF
54E67C:  CMP             R0, R1
54E67E:  BNE             loc_54E6A6
54E680:  MOV             R0, R5
54E682:  MOVS            R1, #0x15
54E684:  MOVS            R2, #2
54E686:  B               loc_54E69E
54E688:  LDR.W           R0, [R4,#0x6A0]
54E68C:  CBZ             R0, loc_54E6A6
54E68E:  LDRH            R0, [R5]
54E690:  MOVW            R1, #0xFFFF
54E694:  CMP             R0, R1
54E696:  BNE             loc_54E6A6
54E698:  MOV             R0, R5; this
54E69A:  MOVS            R1, #0x11; __int16
54E69C:  MOVS            R2, #1; __int16
54E69E:  MOV.W           R3, #0x3F800000; float
54E6A2:  BLX             j__ZN14CBouncingPanel8SetPanelEssf; CBouncingPanel::SetPanel(short,short,float)
54E6A6:  LDRB.W          R0, [R4,#0x393]
54E6AA:  ADDW            R1, R4, #0x978
54E6AE:  LSLS            R0, R0, #0x1B
54E6B0:  BMI             loc_54E6F0
54E6B2:  LDRH            R0, [R4,#0x26]
54E6B4:  CMP.W           R0, #0x220
54E6B8:  BNE             loc_54E74A
54E6BA:  LDR             R2, [SP,#0xD8+var_D0]
54E6BC:  MOV             R0, #0x3EA0D97C
54E6C4:  STR             R0, [R2]
54E6C6:  MOVW            R0, #0xD97C
54E6CA:  MOVW            R2, #0x184
54E6CE:  MOVT            R0, #0xBEA0
54E6D2:  MOVT            R2, #0x102
54E6D6:  STR.W           R0, [R4,#0x724]
54E6DA:  STR.W           R2, [R4,#0x728]
54E6DE:  B               loc_54E74A
54E6E0:  DCFS -1.2566
54E6E4:  DCFS 4.6566e-10
54E6E8:  DCFS 0.3
54E6EC:  DCFS -0.15
54E6F0:  LDRSH.W         R0, [R4,#0x26]
54E6F4:  MOVS            R2, #1
54E6F6:  STRB.W          R2, [R4,#0x72B]
54E6FA:  MOVW            R2, #0x1A3
54E6FE:  CMP             R0, R2
54E700:  VLDR            S0, =0.03
54E704:  ITT NE
54E706:  MOVWNE          R2, #0x256
54E70A:  CMPNE           R0, R2
54E70C:  BEQ             loc_54E720
54E70E:  UXTH            R0, R0
54E710:  MOVW            R3, #0x199
54E714:  ADR             R2, dword_54EA3C
54E716:  CMP             R0, R3
54E718:  IT EQ
54E71A:  ADDEQ           R2, #4
54E71C:  VLDR            S0, [R2]
54E720:  VLDR            S2, =3.1416
54E724:  VLDR            S4, =-3.1416
54E728:  VMUL.F32        S2, S0, S2
54E72C:  LDR             R0, [SP,#0xD8+var_D0]
54E72E:  VMUL.F32        S0, S0, S4
54E732:  VSTR            S2, [R0]
54E736:  MOVS            R0, #2
54E738:  STRB.W          R0, [R4,#0x72A]
54E73C:  ADDW            R0, R4, #0x724
54E740:  VSTR            S0, [R0]
54E744:  MOVS            R0, #0xC4
54E746:  STRH.W          R0, [R4,#0x728]
54E74A:  MOVS            R0, #0
54E74C:  VMOV.I32        Q8, #0
54E750:  STR.W           R0, [R4,#0x8D8]
54E754:  ADDW            R3, R4, #0x8C8
54E758:  STR.W           R0, [R4,#0x8DC]
54E75C:  LDR.W           R2, [R4,#0x388]
54E760:  VST1.32         {D16-D17}, [R3]
54E764:  LDR             R3, [R2,#4]
54E766:  STR.W           R3, [R4,#0x90]
54E76A:  LDR             R3, [R2,#0xC]
54E76C:  STR.W           R3, [R4,#0x94]
54E770:  LDR             R3, [R2,#0x1C]
54E772:  VLDR            D16, [R2,#0x14]
54E776:  STR.W           R3, [R4,#0xB0]
54E77A:  MOV             R3, #0x3D4CCCCD
54E782:  VLDR            S2, =0.01
54E786:  STR.W           R3, [R4,#0xA0]
54E78A:  VSTR            D16, [R4,#0xA8]
54E78E:  LDR             R3, [R2,#0x24]
54E790:  STR.W           R3, [R4,#0xA4]
54E794:  VLDR            S0, [R2,#0x10]
54E798:  VCMPE.F32       S0, S2
54E79C:  VMRS            APSR_nzcv, FPSCR
54E7A0:  BLE             loc_54E7B2
54E7A2:  VMOV.F32        S2, #0.5
54E7A6:  VMUL.F32        S0, S0, S2
54E7AA:  VLDR            S2, =1000.0
54E7AE:  VDIV.F32        S0, S0, S2
54E7B2:  ADR             R2, dword_54E9E0
54E7B4:  VSTR            S0, [R4,#0x9C]
54E7B8:  VLD1.64         {D16-D17}, [R2@128]
54E7BC:  ADDW            R2, R4, #0x8AC
54E7C0:  STR.W           R0, [R4,#0x498]
54E7C4:  STR.W           R0, [R4,#0x4A0]
54E7C8:  STR.W           R0, [R4,#0x4A4]
54E7CC:  STR.W           R0, [R4,#0x93C]
54E7D0:  STR             R0, [R1]
54E7D2:  MOV.W           R1, #0x3F800000
54E7D6:  STRB.W          R0, [R4,#0x528]
54E7DA:  STR.W           R0, [R4,#0x524]
54E7DE:  STR.W           R0, [R4,#0x8BC]
54E7E2:  STR.W           R0, [R4,#0x8C0]
54E7E6:  STR.W           R0, [R4,#0x8C4]
54E7EA:  STR.W           R0, [R4,#0x8FC]
54E7EE:  STR.W           R0, [R4,#0x90C]
54E7F2:  STR.W           R0, [R4,#0x910]
54E7F6:  STR.W           R0, [R4,#0x914]
54E7FA:  STR.W           R1, [R4,#0x7E8]
54E7FE:  STR.W           R1, [R4,#0x7F8]
54E802:  STR.W           R0, [R4,#0x808]
54E806:  STR.W           R0, [R4,#0x83C]
54E80A:  STR.W           R0, [R4,#0x85C]
54E80E:  STR.W           R0, [R4,#0x86C]
54E812:  STR.W           R0, [R4,#0x97C]
54E816:  STR.W           R0, [R4,#0x824]
54E81A:  STR.W           R0, [R4,#0x900]
54E81E:  STR.W           R0, [R4,#0x880]
54E822:  STR.W           R0, [R4,#0x884]
54E826:  STR.W           R0, [R4,#0x888]
54E82A:  STRB.W          R0, [R4,#0x834]
54E82E:  STR.W           R0, [R4,#0x918]
54E832:  STR.W           R1, [R4,#0x7EC]
54E836:  STR.W           R1, [R4,#0x7FC]
54E83A:  STR.W           R0, [R4,#0x80C]
54E83E:  STR.W           R0, [R4,#0x840]
54E842:  STR.W           R0, [R4,#0x860]
54E846:  STR.W           R0, [R4,#0x870]
54E84A:  STR.W           R0, [R4,#0x980]
54E84E:  STR.W           R0, [R4,#0x828]
54E852:  STRB.W          R0, [R4,#0x835]
54E856:  STR.W           R0, [R4,#0x904]
54E85A:  STR.W           R1, [R4,#0x7F0]
54E85E:  STR.W           R1, [R4,#0x800]
54E862:  STR.W           R0, [R4,#0x810]
54E866:  STR.W           R0, [R4,#0x844]
54E86A:  STR.W           R0, [R4,#0x864]
54E86E:  STR.W           R0, [R4,#0x874]
54E872:  STR.W           R0, [R4,#0x984]
54E876:  STR.W           R0, [R4,#0x82C]
54E87A:  STRB.W          R0, [R4,#0x836]
54E87E:  STR.W           R0, [R4,#0x908]
54E882:  STR.W           R0, [R4,#0x91C]
54E886:  STR.W           R0, [R4,#0x920]
54E88A:  STR.W           R0, [R4,#0x924]
54E88E:  STR.W           R0, [R4,#0x928]
54E892:  STR.W           R0, [R4,#0x92C]
54E896:  STR.W           R0, [R4,#0x930]
54E89A:  STR.W           R0, [R4,#0x934]
54E89E:  STR.W           R0, [R4,#0x938]
54E8A2:  VST1.32         {D16-D17}, [R2]
54E8A6:  STR.W           R1, [R4,#0x7F4]
54E8AA:  STR.W           R1, [R4,#0x804]
54E8AE:  STR.W           R0, [R4,#0x814]
54E8B2:  STR.W           R0, [R4,#0x848]
54E8B6:  STR.W           R0, [R4,#0x868]
54E8BA:  STR.W           R0, [R4,#0x878]
54E8BE:  STR.W           R0, [R4,#0x988]
54E8C2:  STR.W           R0, [R4,#0x830]
54E8C6:  STRB.W          R0, [R4,#0x837]
54E8CA:  STRB.W          R0, [R4,#0x976]
54E8CE:  STRH.W          R0, [R4,#0x974]
54E8D2:  LDR             R0, [SP,#0xD8+var_CC]
54E8D4:  CBZ             R0, loc_54E8E0
54E8D6:  LDR             R0, [R4]
54E8D8:  LDR.W           R1, [R0,#0xC4]
54E8DC:  MOV             R0, R4
54E8DE:  BLX             R1
54E8E0:  MOVS            R5, #0
54E8E2:  MOVS            R1, #2
54E8E4:  STRB.W          R5, [R4,#0x488]
54E8E8:  LDR.W           R2, [R4,#0x508]
54E8EC:  LDRB.W          R0, [R4,#0x3A]
54E8F0:  CMP             R2, #1
54E8F2:  BFI.W           R0, R1, #3, #0x1D
54E8F6:  STRB.W          R0, [R4,#0x3A]
54E8FA:  BNE             loc_54E90C
54E8FC:  MOV             R0, R4; this
54E8FE:  BLX             j__ZNK8CVehicle23IsLawEnforcementVehicleEv; CVehicle::IsLawEnforcementVehicle(void)
54E902:  CMP             R0, #0
54E904:  ITT NE
54E906:  MOVNE           R0, #5
54E908:  STRNE.W         R0, [R4,#0x508]
54E90C:  ADR             R0, dword_54E9F0
54E90E:  ADDW            R1, R4, #0x958
54E912:  VLD1.64         {D16-D17}, [R0@128]
54E916:  MOVS            R0, #0xBF800000
54E91C:  STR.W           R0, [R4,#0x968]
54E920:  STR.W           R5, [R4,#0x96C]
54E924:  STRB.W          R5, [R4,#0x994]
54E928:  LDRH            R0, [R4,#0x26]
54E92A:  VST1.32         {D16-D17}, [R1]
54E92E:  CMP.W           R0, #0x1B0
54E932:  BEQ             loc_54E9AC
54E934:  MOVW            R1, #0xFFFE
54E938:  CMP             R0, R1
54E93A:  BNE             loc_54E9B4
54E93C:  LDR.W           R0, [R4,#0x670]
54E940:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
54E944:  MOVS            R1, #0
54E946:  MOVW            R2, #0xFFFF
54E94A:  STRB            R1, [R0,#2]
54E94C:  SUBS            R2, #1
54E94E:  LDRH            R0, [R4,#0x26]
54E950:  UXTH            R2, R2
54E952:  CMP             R0, R2
54E954:  BNE             loc_54E9B4
54E956:  STRD.W          R1, R1, [SP,#0xD8+var_40]
54E95A:  ADD             R5, SP, #0xD8+var_80
54E95C:  LDR.W           R0, [R4,#0x664]
54E960:  MOVS            R2, #0
54E962:  ADD.W           R1, R0, #0x10
54E966:  MOV             R0, R5
54E968:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
54E96C:  LDR.W           R0, [R4,#0x670]
54E970:  ADD             R6, SP, #0xD8+var_C8
54E972:  MOVS            R2, #0
54E974:  ADD.W           R1, R0, #0x10
54E978:  MOV             R0, R6
54E97A:  BLX             j__ZN7CMatrixC2EP11RwMatrixTagb; CMatrix::CMatrix(RwMatrixTag *,bool)
54E97E:  VLDR            S0, =0.1
54E982:  MOV             R0, R5; this
54E984:  VLDR            S2, [SP,#0xD8+var_98]
54E988:  MOVS            R2, #0; float
54E98A:  LDR             R3, [SP,#0xD8+var_90]; float
54E98C:  VADD.F32        S0, S2, S0
54E990:  VMOV            R1, S0; float
54E994:  BLX             j__ZN7CMatrix12SetTranslateEfff; CMatrix::SetTranslate(float,float,float)
54E998:  MOV             R0, R5; this
54E99A:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
54E99E:  MOV             R0, R6; this
54E9A0:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
54E9A4:  MOV             R0, R5; this
54E9A6:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
54E9AA:  B               loc_54E9B4
54E9AC:  LDR             R0, [R4,#0x44]
54E9AE:  ORR.W           R0, R0, #0x840000
54E9B2:  STR             R0, [R4,#0x44]
54E9B4:  ADD.W           R0, R4, #0x13C; this
54E9B8:  MOVS            R5, #0
54E9BA:  MOV             R1, R4; CEntity *
54E9BC:  STR.W           R5, [R4,#0x98C]
54E9C0:  STR.W           R5, [R4,#0x990]
54E9C4:  BLX             j__ZN21CAEVehicleAudioEntity10InitialiseEP7CEntity; CAEVehicleAudioEntity::Initialise(CEntity *)
54E9C8:  STRB.W          R5, [R4,#0x995]
54E9CC:  MOV             R0, R4
54E9CE:  STR.W           R5, [R4,#0x998]
54E9D2:  ADD             SP, SP, #0xA0
54E9D4:  VPOP            {D8-D10}
54E9D8:  ADD             SP, SP, #4
54E9DA:  POP.W           {R8-R11}
54E9DE:  POP             {R4-R7,PC}
