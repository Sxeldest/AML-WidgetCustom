; =========================================================
; Game Engine Function: _ZN18FurnitureManager_c13GetSubGroupIdEPc
; Address            : 0x475730 - 0x475B3C
; =========================================================

475730:  PUSH            {R4,R6,R7,LR}
475732:  ADD             R7, SP, #8
475734:  MOV             R4, R1
475736:  ADR.W           R1, aShopUnit1L; "SHOP_UNIT1_L"
47573A:  MOV             R0, R4; char *
47573C:  BLX             strcmp
475740:  CMP             R0, #0
475742:  BEQ.W           loc_475A74
475746:  ADR.W           R1, aShopUnit1R; "SHOP_UNIT1_R"
47574A:  MOV             R0, R4; char *
47574C:  BLX             strcmp
475750:  CMP             R0, #0
475752:  BEQ.W           loc_475A78
475756:  ADR.W           R1, aShopUnit1M; "SHOP_UNIT1_M"
47575A:  MOV             R0, R4; char *
47575C:  BLX             strcmp
475760:  CMP             R0, #0
475762:  BEQ.W           loc_475A7C
475766:  ADR.W           R1, aShopUnit2L; "SHOP_UNIT2_L"
47576A:  MOV             R0, R4; char *
47576C:  BLX             strcmp
475770:  CMP             R0, #0
475772:  BEQ.W           loc_475A80
475776:  ADR.W           R1, aShopUnit2R; "SHOP_UNIT2_R"
47577A:  MOV             R0, R4; char *
47577C:  BLX             strcmp
475780:  CMP             R0, #0
475782:  BEQ.W           loc_475A84
475786:  ADR.W           R1, aShopUnit2M; "SHOP_UNIT2_M"
47578A:  MOV             R0, R4; char *
47578C:  BLX             strcmp
475790:  CMP             R0, #0
475792:  BEQ.W           loc_475A88
475796:  ADR.W           R1, aShopUnit3L; "SHOP_UNIT3_L"
47579A:  MOV             R0, R4; char *
47579C:  BLX             strcmp
4757A0:  CMP             R0, #0
4757A2:  BEQ.W           loc_475A8C
4757A6:  ADR.W           R1, aShopUnit3R; "SHOP_UNIT3_R"
4757AA:  MOV             R0, R4; char *
4757AC:  BLX             strcmp
4757B0:  CMP             R0, #0
4757B2:  BEQ.W           loc_475A90
4757B6:  ADR.W           R1, aShopUnit3M; "SHOP_UNIT3_M"
4757BA:  MOV             R0, R4; char *
4757BC:  BLX             strcmp
4757C0:  CMP             R0, #0
4757C2:  BEQ.W           loc_475A94
4757C6:  ADR.W           R1, aShopUnit4L; "SHOP_UNIT4_L"
4757CA:  MOV             R0, R4; char *
4757CC:  BLX             strcmp
4757D0:  CMP             R0, #0
4757D2:  BEQ.W           loc_475A98
4757D6:  LDR.W           R1, =(aShopUnit4R - 0x4757E0); "SHOP_UNIT4_R"
4757DA:  MOV             R0, R4; char *
4757DC:  ADD             R1, PC; "SHOP_UNIT4_R"
4757DE:  BLX             strcmp
4757E2:  CMP             R0, #0
4757E4:  BEQ.W           loc_475A9C
4757E8:  LDR.W           R1, =(aShopUnit4M - 0x4757F2); "SHOP_UNIT4_M"
4757EC:  MOV             R0, R4; char *
4757EE:  ADD             R1, PC; "SHOP_UNIT4_M"
4757F0:  BLX             strcmp
4757F4:  CMP             R0, #0
4757F6:  BEQ.W           loc_475AA0
4757FA:  LDR.W           R1, =(aShopCheckouts - 0x475804); "SHOP_CHECKOUTS"
4757FE:  MOV             R0, R4; char *
475800:  ADD             R1, PC; "SHOP_CHECKOUTS"
475802:  BLX             strcmp
475806:  CMP             R0, #0
475808:  BEQ.W           loc_475AA4
47580C:  LDR.W           R1, =(aShopBaskets - 0x475816); "SHOP_BASKETS"
475810:  MOV             R0, R4; char *
475812:  ADD             R1, PC; "SHOP_BASKETS"
475814:  BLX             strcmp
475818:  CMP             R0, #0
47581A:  BEQ.W           loc_475AA8
47581E:  LDR.W           R1, =(aShopLights - 0x475828); "SHOP_LIGHTS"
475822:  MOV             R0, R4; char *
475824:  ADD             R1, PC; "SHOP_LIGHTS"
475826:  BLX             strcmp
47582A:  CMP             R0, #0
47582C:  BEQ.W           loc_475AAC
475830:  LDR.W           R1, =(aOfficeDesks - 0x47583A); "OFFICE_DESKS"
475834:  MOV             R0, R4; char *
475836:  ADD             R1, PC; "OFFICE_DESKS"
475838:  BLX             strcmp
47583C:  CMP             R0, #0
47583E:  BEQ.W           loc_475AB0
475842:  LDR.W           R1, =(aOfficeChairs - 0x47584C); "OFFICE_CHAIRS"
475846:  MOV             R0, R4; char *
475848:  ADD             R1, PC; "OFFICE_CHAIRS"
47584A:  BLX             strcmp
47584E:  CMP             R0, #0
475850:  BEQ.W           loc_475AB4
475854:  LDR             R1, =(aOfficeWatercoo - 0x47585C); "OFFICE_WATERCOOLERS"
475856:  MOV             R0, R4; char *
475858:  ADD             R1, PC; "OFFICE_WATERCOOLERS"
47585A:  BLX             strcmp
47585E:  CMP             R0, #0
475860:  BEQ.W           loc_475AB8
475864:  LDR             R1, =(aOfficeFilingca - 0x47586C); "OFFICE_FILINGCABS"
475866:  MOV             R0, R4; char *
475868:  ADD             R1, PC; "OFFICE_FILINGCABS"
47586A:  BLX             strcmp
47586E:  CMP             R0, #0
475870:  BEQ.W           loc_475ABC
475874:  LDR             R1, =(aLoungeSofas - 0x47587C); "LOUNGE_SOFAS"
475876:  MOV             R0, R4; char *
475878:  ADD             R1, PC; "LOUNGE_SOFAS"
47587A:  BLX             strcmp
47587E:  CMP             R0, #0
475880:  BEQ.W           loc_475AC0
475884:  LDR             R1, =(aLoungeChairs - 0x47588C); "LOUNGE_CHAIRS"
475886:  MOV             R0, R4; char *
475888:  ADD             R1, PC; "LOUNGE_CHAIRS"
47588A:  BLX             strcmp
47588E:  CMP             R0, #0
475890:  BEQ.W           loc_475AC4
475894:  LDR             R1, =(aLoungeTvstands - 0x47589C); "LOUNGE_TVSTANDS"
475896:  MOV             R0, R4; char *
475898:  ADD             R1, PC; "LOUNGE_TVSTANDS"
47589A:  BLX             strcmp
47589E:  CMP             R0, #0
4758A0:  BEQ.W           loc_475AC8
4758A4:  LDR             R1, =(aLoungeTvs - 0x4758AC); "LOUNGE_TVS"
4758A6:  MOV             R0, R4; char *
4758A8:  ADD             R1, PC; "LOUNGE_TVS"
4758AA:  BLX             strcmp
4758AE:  CMP             R0, #0
4758B0:  BEQ.W           loc_475ACC
4758B4:  LDR             R1, =(aLoungeTables - 0x4758BC); "LOUNGE_TABLES"
4758B6:  MOV             R0, R4; char *
4758B8:  ADD             R1, PC; "LOUNGE_TABLES"
4758BA:  BLX             strcmp
4758BE:  CMP             R0, #0
4758C0:  BEQ.W           loc_475AD0
4758C4:  LDR             R1, =(aLoungeLamps - 0x4758CC); "LOUNGE_LAMPS"
4758C6:  MOV             R0, R4; char *
4758C8:  ADD             R1, PC; "LOUNGE_LAMPS"
4758CA:  BLX             strcmp
4758CE:  CMP             R0, #0
4758D0:  BEQ.W           loc_475AD4
4758D4:  LDR             R1, =(aLoungeHifiTabl - 0x4758DC); "LOUNGE_HIFI_TABLES"
4758D6:  MOV             R0, R4; char *
4758D8:  ADD             R1, PC; "LOUNGE_HIFI_TABLES"
4758DA:  BLX             strcmp
4758DE:  CMP             R0, #0
4758E0:  BEQ.W           loc_475AD8
4758E4:  LDR             R1, =(aLoungeVideos - 0x4758EC); "LOUNGE_VIDEOS"
4758E6:  MOV             R0, R4; char *
4758E8:  ADD             R1, PC; "LOUNGE_VIDEOS"
4758EA:  BLX             strcmp
4758EE:  CMP             R0, #0
4758F0:  BEQ.W           loc_475ADC
4758F4:  LDR             R1, =(aLoungeHifis - 0x4758FC); "LOUNGE_HIFIS"
4758F6:  MOV             R0, R4; char *
4758F8:  ADD             R1, PC; "LOUNGE_HIFIS"
4758FA:  BLX             strcmp
4758FE:  CMP             R0, #0
475900:  BEQ.W           loc_475AE0
475904:  LDR             R1, =(aLoungeConsoles - 0x47590C); "LOUNGE_CONSOLES"
475906:  MOV             R0, R4; char *
475908:  ADD             R1, PC; "LOUNGE_CONSOLES"
47590A:  BLX             strcmp
47590E:  CMP             R0, #0
475910:  BEQ.W           loc_475AE4
475914:  LDR             R1, =(aBedroomBeds - 0x47591C); "BEDROOM_BEDS"
475916:  MOV             R0, R4; char *
475918:  ADD             R1, PC; "BEDROOM_BEDS"
47591A:  BLX             strcmp
47591E:  CMP             R0, #0
475920:  BEQ.W           loc_475AE8
475924:  LDR             R1, =(aBedroomTables - 0x47592C); "BEDROOM_TABLES"
475926:  MOV             R0, R4; char *
475928:  ADD             R1, PC; "BEDROOM_TABLES"
47592A:  BLX             strcmp
47592E:  CMP             R0, #0
475930:  BEQ.W           loc_475AEC
475934:  LDR             R1, =(aBedroomDrawers - 0x47593C); "BEDROOM_DRAWERS"
475936:  MOV             R0, R4; char *
475938:  ADD             R1, PC; "BEDROOM_DRAWERS"
47593A:  BLX             strcmp
47593E:  CMP             R0, #0
475940:  BEQ.W           loc_475AF0
475944:  LDR             R1, =(aBedroomWardrob - 0x47594C); "BEDROOM_WARDROBES"
475946:  MOV             R0, R4; char *
475948:  ADD             R1, PC; "BEDROOM_WARDROBES"
47594A:  BLX             strcmp
47594E:  CMP             R0, #0
475950:  BEQ.W           loc_475AF4
475954:  LDR             R1, =(aKitchenUnitL - 0x47595C); "KITCHEN_UNIT_L"
475956:  MOV             R0, R4; char *
475958:  ADD             R1, PC; "KITCHEN_UNIT_L"
47595A:  BLX             strcmp
47595E:  CMP             R0, #0
475960:  BEQ.W           loc_475AF8
475964:  LDR             R1, =(aKitchenUnitM - 0x47596C); "KITCHEN_UNIT_M"
475966:  MOV             R0, R4; char *
475968:  ADD             R1, PC; "KITCHEN_UNIT_M"
47596A:  BLX             strcmp
47596E:  CMP             R0, #0
475970:  BEQ.W           loc_475AFC
475974:  LDR             R1, =(aKitchenUnitR - 0x47597C); "KITCHEN_UNIT_R"
475976:  MOV             R0, R4; char *
475978:  ADD             R1, PC; "KITCHEN_UNIT_R"
47597A:  BLX             strcmp
47597E:  CMP             R0, #0
475980:  BEQ.W           loc_475B00
475984:  LDR             R1, =(aKitchenUnitSin - 0x47598C); "KITCHEN_UNIT_SINKS"
475986:  MOV             R0, R4; char *
475988:  ADD             R1, PC; "KITCHEN_UNIT_SINKS"
47598A:  BLX             strcmp
47598E:  CMP             R0, #0
475990:  BEQ.W           loc_475B04
475994:  LDR             R1, =(aKitchenUnitFri - 0x47599C); "KITCHEN_UNIT_FRIDGES"
475996:  MOV             R0, R4; char *
475998:  ADD             R1, PC; "KITCHEN_UNIT_FRIDGES"
47599A:  BLX             strcmp
47599E:  CMP             R0, #0
4759A0:  BEQ.W           loc_475B08
4759A4:  LDR             R1, =(aKitchenUnitOve - 0x4759AC); "KITCHEN_UNIT_OVENS"
4759A6:  MOV             R0, R4; char *
4759A8:  ADD             R1, PC; "KITCHEN_UNIT_OVENS"
4759AA:  BLX             strcmp
4759AE:  CMP             R0, #0
4759B0:  BEQ.W           loc_475B0C
4759B4:  LDR             R1, =(aKitchenUnitWas - 0x4759BC); "KITCHEN_UNIT_WASHERS"
4759B6:  MOV             R0, R4; char *
4759B8:  ADD             R1, PC; "KITCHEN_UNIT_WASHERS"
4759BA:  BLX             strcmp
4759BE:  CMP             R0, #0
4759C0:  BEQ.W           loc_475B10
4759C4:  LDR             R1, =(aKitchenUnitCor - 0x4759CC); "KITCHEN_UNIT_CORNERS"
4759C6:  MOV             R0, R4; char *
4759C8:  ADD             R1, PC; "KITCHEN_UNIT_CORNERS"
4759CA:  BLX             strcmp
4759CE:  CMP             R0, #0
4759D0:  BEQ.W           loc_475B14
4759D4:  LDR             R1, =(aKitchenMicrowa - 0x4759DC); "KITCHEN_MICROWAVES"
4759D6:  MOV             R0, R4; char *
4759D8:  ADD             R1, PC; "KITCHEN_MICROWAVES"
4759DA:  BLX             strcmp
4759DE:  CMP             R0, #0
4759E0:  BEQ.W           loc_475B18
4759E4:  LDR             R1, =(aKitchenToaster - 0x4759EC); "KITCHEN_TOASTERS"
4759E6:  MOV             R0, R4; char *
4759E8:  ADD             R1, PC; "KITCHEN_TOASTERS"
4759EA:  BLX             strcmp
4759EE:  CMP             R0, #0
4759F0:  BEQ.W           loc_475B1C
4759F4:  LDR             R1, =(aKitchenTvs - 0x4759FC); "KITCHEN_TVS"
4759F6:  MOV             R0, R4; char *
4759F8:  ADD             R1, PC; "KITCHEN_TVS"
4759FA:  BLX             strcmp
4759FE:  CMP             R0, #0
475A00:  BEQ.W           loc_475B20
475A04:  LDR             R1, =(aMiscPlants - 0x475A0C); "MISC_PLANTS"
475A06:  MOV             R0, R4; char *
475A08:  ADD             R1, PC; "MISC_PLANTS"
475A0A:  BLX             strcmp
475A0E:  CMP             R0, #0
475A10:  BEQ.W           loc_475B24
475A14:  LDR             R1, =(aMiscLights - 0x475A1C); "MISC_LIGHTS"
475A16:  MOV             R0, R4; char *
475A18:  ADD             R1, PC; "MISC_LIGHTS"
475A1A:  BLX             strcmp
475A1E:  CMP             R0, #0
475A20:  BEQ.W           loc_475B28
475A24:  LDR             R1, =(aMiscRugs - 0x475A2C); "MISC_RUGS"
475A26:  MOV             R0, R4; char *
475A28:  ADD             R1, PC; "MISC_RUGS"
475A2A:  BLX             strcmp
475A2E:  CMP             R0, #0
475A30:  BEQ             loc_475B2C
475A32:  LDR             R1, =(aMiscPlates - 0x475A3A); "MISC_PLATES"
475A34:  MOV             R0, R4; char *
475A36:  ADD             R1, PC; "MISC_PLATES"
475A38:  BLX             strcmp
475A3C:  CMP             R0, #0
475A3E:  BEQ             loc_475B30
475A40:  LDR             R1, =(aMiscFood - 0x475A48); "MISC_FOOD"
475A42:  MOV             R0, R4; char *
475A44:  ADD             R1, PC; "MISC_FOOD"
475A46:  BLX             strcmp
475A4A:  CMP             R0, #0
475A4C:  BEQ             loc_475B34
475A4E:  LDR             R1, =(aMiscMagazines - 0x475A56); "MISC_MAGAZINES"
475A50:  MOV             R0, R4; char *
475A52:  ADD             R1, PC; "MISC_MAGAZINES"
475A54:  BLX             strcmp
475A58:  CMP             R0, #0
475A5A:  BEQ             loc_475B38
475A5C:  LDR             R1, =(aMiscClothes - 0x475A64); "MISC_CLOTHES"
475A5E:  MOV             R0, R4; char *
475A60:  ADD             R1, PC; "MISC_CLOTHES"
475A62:  BLX             strcmp
475A66:  MOV             R1, R0
475A68:  MOV.W           R0, #0xFFFFFFFF
475A6C:  CMP             R1, #0
475A6E:  IT EQ
475A70:  MOVEQ           R0, #6
475A72:  POP             {R4,R6,R7,PC}
475A74:  MOVS            R0, #0
475A76:  POP             {R4,R6,R7,PC}
475A78:  MOVS            R0, #1
475A7A:  POP             {R4,R6,R7,PC}
475A7C:  MOVS            R0, #2
475A7E:  POP             {R4,R6,R7,PC}
475A80:  MOVS            R0, #3
475A82:  POP             {R4,R6,R7,PC}
475A84:  MOVS            R0, #4
475A86:  POP             {R4,R6,R7,PC}
475A88:  MOVS            R0, #5
475A8A:  POP             {R4,R6,R7,PC}
475A8C:  MOVS            R0, #6
475A8E:  POP             {R4,R6,R7,PC}
475A90:  MOVS            R0, #7
475A92:  POP             {R4,R6,R7,PC}
475A94:  MOVS            R0, #8
475A96:  POP             {R4,R6,R7,PC}
475A98:  MOVS            R0, #9
475A9A:  POP             {R4,R6,R7,PC}
475A9C:  MOVS            R0, #0xA
475A9E:  POP             {R4,R6,R7,PC}
475AA0:  MOVS            R0, #0xB
475AA2:  POP             {R4,R6,R7,PC}
475AA4:  MOVS            R0, #0xC
475AA6:  POP             {R4,R6,R7,PC}
475AA8:  MOVS            R0, #0xD
475AAA:  POP             {R4,R6,R7,PC}
475AAC:  MOVS            R0, #0xE
475AAE:  POP             {R4,R6,R7,PC}
475AB0:  MOVS            R0, #0
475AB2:  POP             {R4,R6,R7,PC}
475AB4:  MOVS            R0, #1
475AB6:  POP             {R4,R6,R7,PC}
475AB8:  MOVS            R0, #2
475ABA:  POP             {R4,R6,R7,PC}
475ABC:  MOVS            R0, #3
475ABE:  POP             {R4,R6,R7,PC}
475AC0:  MOVS            R0, #0
475AC2:  POP             {R4,R6,R7,PC}
475AC4:  MOVS            R0, #1
475AC6:  POP             {R4,R6,R7,PC}
475AC8:  MOVS            R0, #2
475ACA:  POP             {R4,R6,R7,PC}
475ACC:  MOVS            R0, #3
475ACE:  POP             {R4,R6,R7,PC}
475AD0:  MOVS            R0, #4
475AD2:  POP             {R4,R6,R7,PC}
475AD4:  MOVS            R0, #5
475AD6:  POP             {R4,R6,R7,PC}
475AD8:  MOVS            R0, #6
475ADA:  POP             {R4,R6,R7,PC}
475ADC:  MOVS            R0, #7
475ADE:  POP             {R4,R6,R7,PC}
475AE0:  MOVS            R0, #8
475AE2:  POP             {R4,R6,R7,PC}
475AE4:  MOVS            R0, #9
475AE6:  POP             {R4,R6,R7,PC}
475AE8:  MOVS            R0, #0
475AEA:  POP             {R4,R6,R7,PC}
475AEC:  MOVS            R0, #1
475AEE:  POP             {R4,R6,R7,PC}
475AF0:  MOVS            R0, #2
475AF2:  POP             {R4,R6,R7,PC}
475AF4:  MOVS            R0, #3
475AF6:  POP             {R4,R6,R7,PC}
475AF8:  MOVS            R0, #0
475AFA:  POP             {R4,R6,R7,PC}
475AFC:  MOVS            R0, #1
475AFE:  POP             {R4,R6,R7,PC}
475B00:  MOVS            R0, #2
475B02:  POP             {R4,R6,R7,PC}
475B04:  MOVS            R0, #3
475B06:  POP             {R4,R6,R7,PC}
475B08:  MOVS            R0, #4
475B0A:  POP             {R4,R6,R7,PC}
475B0C:  MOVS            R0, #5
475B0E:  POP             {R4,R6,R7,PC}
475B10:  MOVS            R0, #6
475B12:  POP             {R4,R6,R7,PC}
475B14:  MOVS            R0, #7
475B16:  POP             {R4,R6,R7,PC}
475B18:  MOVS            R0, #8
475B1A:  POP             {R4,R6,R7,PC}
475B1C:  MOVS            R0, #9
475B1E:  POP             {R4,R6,R7,PC}
475B20:  MOVS            R0, #0xA
475B22:  POP             {R4,R6,R7,PC}
475B24:  MOVS            R0, #0
475B26:  POP             {R4,R6,R7,PC}
475B28:  MOVS            R0, #1
475B2A:  POP             {R4,R6,R7,PC}
475B2C:  MOVS            R0, #2
475B2E:  POP             {R4,R6,R7,PC}
475B30:  MOVS            R0, #3
475B32:  POP             {R4,R6,R7,PC}
475B34:  MOVS            R0, #4
475B36:  POP             {R4,R6,R7,PC}
475B38:  MOVS            R0, #5
475B3A:  POP             {R4,R6,R7,PC}
