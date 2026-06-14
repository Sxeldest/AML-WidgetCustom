; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c20GetSurfaceIdFromNameEPc
; Address            : 0x41CB68 - 0x41DAB8
; =========================================================

41CB68:  PUSH            {R4,R6,R7,LR}
41CB6A:  ADD             R7, SP, #8
41CB6C:  MOV             R4, R1
41CB6E:  LDR.W           R1, =(aDefault_2 - 0x41CB78); "DEFAULT"
41CB72:  MOV             R0, R4; char *
41CB74:  ADD             R1, PC; "DEFAULT"
41CB76:  BLX             strcmp
41CB7A:  CMP             R0, #0
41CB7C:  BEQ.W           loc_41D7F0
41CB80:  ADR.W           R1, aTarmac; "TARMAC"
41CB84:  MOV             R0, R4; char *
41CB86:  BLX             strcmp
41CB8A:  CMP             R0, #0
41CB8C:  BEQ.W           loc_41D7F4
41CB90:  ADR.W           R1, aTarmacFucked; "TARMAC_FUCKED"
41CB94:  MOV             R0, R4; char *
41CB96:  BLX             strcmp
41CB9A:  CMP             R0, #0
41CB9C:  BEQ.W           loc_41D7F8
41CBA0:  ADR.W           R1, aTarmacReallyfu; "TARMAC_REALLYFUCKED"
41CBA4:  MOV             R0, R4; char *
41CBA6:  BLX             strcmp
41CBAA:  CMP             R0, #0
41CBAC:  BEQ.W           loc_41D7FC
41CBB0:  ADR.W           R1, aPavement; "PAVEMENT"
41CBB4:  MOV             R0, R4; char *
41CBB6:  BLX             strcmp
41CBBA:  CMP             R0, #0
41CBBC:  BEQ.W           loc_41D800
41CBC0:  ADR.W           R1, aPavementFucked; "PAVEMENT_FUCKED"
41CBC4:  MOV             R0, R4; char *
41CBC6:  BLX             strcmp
41CBCA:  CMP             R0, #0
41CBCC:  BEQ.W           loc_41D804
41CBD0:  ADR.W           R1, aGravel; "GRAVEL"
41CBD4:  MOV             R0, R4; char *
41CBD6:  BLX             strcmp
41CBDA:  CMP             R0, #0
41CBDC:  BEQ.W           loc_41D808
41CBE0:  ADR.W           R1, aFuckedConcrete; "FUCKED_CONCRETE"
41CBE4:  MOV             R0, R4; char *
41CBE6:  BLX             strcmp
41CBEA:  CMP             R0, #0
41CBEC:  BEQ.W           loc_41D80C
41CBF0:  ADR.W           R1, aPaintedGround; "PAINTED_GROUND"
41CBF4:  MOV             R0, R4; char *
41CBF6:  BLX             strcmp
41CBFA:  CMP             R0, #0
41CBFC:  BEQ.W           loc_41D810
41CC00:  ADR.W           R1, aGrassShortLush; "GRASS_SHORT_LUSH"
41CC04:  MOV             R0, R4; char *
41CC06:  BLX             strcmp
41CC0A:  CMP             R0, #0
41CC0C:  BEQ.W           loc_41D814
41CC10:  ADR.W           R1, aGrassMediumLus; "GRASS_MEDIUM_LUSH"
41CC14:  MOV             R0, R4; char *
41CC16:  BLX             strcmp
41CC1A:  CMP             R0, #0
41CC1C:  BEQ.W           loc_41D818
41CC20:  ADR.W           R1, aGrassLongLush; "GRASS_LONG_LUSH"
41CC24:  MOV             R0, R4; char *
41CC26:  BLX             strcmp
41CC2A:  CMP             R0, #0
41CC2C:  BEQ.W           loc_41D81C
41CC30:  LDR.W           R1, =(aGrassShortDry - 0x41CC3A); "GRASS_SHORT_DRY"
41CC34:  MOV             R0, R4; char *
41CC36:  ADD             R1, PC; "GRASS_SHORT_DRY"
41CC38:  BLX             strcmp
41CC3C:  CMP             R0, #0
41CC3E:  BEQ.W           loc_41D820
41CC42:  LDR.W           R1, =(aGrassMediumDry - 0x41CC4C); "GRASS_MEDIUM_DRY"
41CC46:  MOV             R0, R4; char *
41CC48:  ADD             R1, PC; "GRASS_MEDIUM_DRY"
41CC4A:  BLX             strcmp
41CC4E:  CMP             R0, #0
41CC50:  BEQ.W           loc_41D824
41CC54:  LDR.W           R1, =(aGrassLongDry - 0x41CC5E); "GRASS_LONG_DRY"
41CC58:  MOV             R0, R4; char *
41CC5A:  ADD             R1, PC; "GRASS_LONG_DRY"
41CC5C:  BLX             strcmp
41CC60:  CMP             R0, #0
41CC62:  BEQ.W           loc_41D828
41CC66:  LDR.W           R1, =(aGolfgrassRough - 0x41CC70); "GOLFGRASS_ROUGH"
41CC6A:  MOV             R0, R4; char *
41CC6C:  ADD             R1, PC; "GOLFGRASS_ROUGH"
41CC6E:  BLX             strcmp
41CC72:  CMP             R0, #0
41CC74:  BEQ.W           loc_41D82C
41CC78:  LDR.W           R1, =(aGolfgrassSmoot - 0x41CC82); "GOLFGRASS_SMOOTH"
41CC7C:  MOV             R0, R4; char *
41CC7E:  ADD             R1, PC; "GOLFGRASS_SMOOTH"
41CC80:  BLX             strcmp
41CC84:  CMP             R0, #0
41CC86:  BEQ.W           loc_41D830
41CC8A:  LDR.W           R1, =(aSteepSlidygras - 0x41CC94); "STEEP_SLIDYGRASS"
41CC8E:  MOV             R0, R4; char *
41CC90:  ADD             R1, PC; "STEEP_SLIDYGRASS"
41CC92:  BLX             strcmp
41CC96:  CMP             R0, #0
41CC98:  BEQ.W           loc_41D834
41CC9C:  LDR.W           R1, =(aSteepCliff - 0x41CCA6); "STEEP_CLIFF"
41CCA0:  MOV             R0, R4; char *
41CCA2:  ADD             R1, PC; "STEEP_CLIFF"
41CCA4:  BLX             strcmp
41CCA8:  CMP             R0, #0
41CCAA:  BEQ.W           loc_41D838
41CCAE:  LDR.W           R1, =(aPFlowerbed+2 - 0x41CCB8); "FLOWERBED"
41CCB2:  MOV             R0, R4; char *
41CCB4:  ADD             R1, PC; char *
41CCB6:  BLX             strcmp
41CCBA:  CMP             R0, #0
41CCBC:  BEQ.W           loc_41D83C
41CCC0:  LDR.W           R1, =(aPGrassMeadow+8 - 0x41CCCA); "MEADOW"
41CCC4:  MOV             R0, R4; char *
41CCC6:  ADD             R1, PC; char *
41CCC8:  BLX             strcmp
41CCCC:  CMP             R0, #0
41CCCE:  BEQ.W           loc_41D840
41CCD2:  LDR.W           R1, =(aPWasteground+2 - 0x41CCDC); "WASTEGROUND"
41CCD6:  MOV             R0, R4; char *
41CCD8:  ADD             R1, PC; char *
41CCDA:  BLX             strcmp
41CCDE:  CMP             R0, #0
41CCE0:  BEQ.W           loc_41D844
41CCE4:  LDR.W           R1, =(aWoodlandground - 0x41CCEE); "WOODLANDGROUND"
41CCE8:  MOV             R0, R4; char *
41CCEA:  ADD             R1, PC; "WOODLANDGROUND"
41CCEC:  BLX             strcmp
41CCF0:  CMP             R0, #0
41CCF2:  BEQ.W           loc_41D848
41CCF6:  LDR.W           R1, =(aVegetation - 0x41CD00); "VEGETATION"
41CCFA:  MOV             R0, R4; char *
41CCFC:  ADD             R1, PC; "VEGETATION"
41CCFE:  BLX             strcmp
41CD02:  CMP             R0, #0
41CD04:  BEQ.W           loc_41D84C
41CD08:  LDR.W           R1, =(aMudWet - 0x41CD12); "MUD_WET"
41CD0C:  MOV             R0, R4; char *
41CD0E:  ADD             R1, PC; "MUD_WET"
41CD10:  BLX             strcmp
41CD14:  CMP             R0, #0
41CD16:  BEQ.W           loc_41D850
41CD1A:  LDR.W           R1, =(aMudDry - 0x41CD24); "MUD_DRY"
41CD1E:  MOV             R0, R4; char *
41CD20:  ADD             R1, PC; "MUD_DRY"
41CD22:  BLX             strcmp
41CD26:  CMP             R0, #0
41CD28:  BEQ.W           loc_41D854
41CD2C:  LDR.W           R1, =(aDirt - 0x41CD36); "DIRT"
41CD30:  MOV             R0, R4; char *
41CD32:  ADD             R1, PC; "DIRT"
41CD34:  BLX             strcmp
41CD38:  CMP             R0, #0
41CD3A:  BEQ.W           loc_41D858
41CD3E:  LDR.W           R1, =(aDirttrack - 0x41CD48); "DIRTTRACK"
41CD42:  MOV             R0, R4; char *
41CD44:  ADD             R1, PC; "DIRTTRACK"
41CD46:  BLX             strcmp
41CD4A:  CMP             R0, #0
41CD4C:  BEQ.W           loc_41D85C
41CD50:  LDR.W           R1, =(aSandDeep - 0x41CD5A); "SAND_DEEP"
41CD54:  MOV             R0, R4; char *
41CD56:  ADD             R1, PC; "SAND_DEEP"
41CD58:  BLX             strcmp
41CD5C:  CMP             R0, #0
41CD5E:  BEQ.W           loc_41D860
41CD62:  LDR.W           R1, =(aSandMedium - 0x41CD6C); "SAND_MEDIUM"
41CD66:  MOV             R0, R4; char *
41CD68:  ADD             R1, PC; "SAND_MEDIUM"
41CD6A:  BLX             strcmp
41CD6E:  CMP             R0, #0
41CD70:  BEQ.W           loc_41D864
41CD74:  LDR.W           R1, =(aPSandCompact+2 - 0x41CD7E); "SAND_COMPACT"
41CD78:  MOV             R0, R4; char *
41CD7A:  ADD             R1, PC; char *
41CD7C:  BLX             strcmp
41CD80:  CMP             R0, #0
41CD82:  BEQ.W           loc_41D868
41CD86:  LDR.W           R1, =(aPSandArid+2 - 0x41CD90); "SAND_ARID"
41CD8A:  MOV             R0, R4; char *
41CD8C:  ADD             R1, PC; char *
41CD8E:  BLX             strcmp
41CD92:  CMP             R0, #0
41CD94:  BEQ.W           loc_41D86C
41CD98:  LDR.W           R1, =(aSandMore - 0x41CDA2); "SAND_MORE"
41CD9C:  MOV             R0, R4; char *
41CD9E:  ADD             R1, PC; "SAND_MORE"
41CDA0:  BLX             strcmp
41CDA4:  CMP             R0, #0
41CDA6:  BEQ.W           loc_41D870
41CDAA:  LDR.W           R1, =(aSandBeach - 0x41CDB4); "SAND_BEACH"
41CDAE:  MOV             R0, R4; char *
41CDB0:  ADD             R1, PC; "SAND_BEACH"
41CDB2:  BLX             strcmp
41CDB6:  CMP             R0, #0
41CDB8:  BEQ.W           loc_41D874
41CDBC:  LDR.W           R1, =(aConcreteBeach - 0x41CDC6); "CONCRETE_BEACH"
41CDC0:  MOV             R0, R4; char *
41CDC2:  ADD             R1, PC; "CONCRETE_BEACH"
41CDC4:  BLX             strcmp
41CDC8:  CMP             R0, #0
41CDCA:  BEQ.W           loc_41D878
41CDCE:  LDR.W           R1, =(aRockDry - 0x41CDD8); "ROCK_DRY"
41CDD2:  MOV             R0, R4; char *
41CDD4:  ADD             R1, PC; "ROCK_DRY"
41CDD6:  BLX             strcmp
41CDDA:  CMP             R0, #0
41CDDC:  BEQ.W           loc_41D87C
41CDE0:  LDR.W           R1, =(aRockWet - 0x41CDEA); "ROCK_WET"
41CDE4:  MOV             R0, R4; char *
41CDE6:  ADD             R1, PC; "ROCK_WET"
41CDE8:  BLX             strcmp
41CDEC:  CMP             R0, #0
41CDEE:  BEQ.W           loc_41D880
41CDF2:  LDR.W           R1, =(aRockCliff - 0x41CDFC); "ROCK_CLIFF"
41CDF6:  MOV             R0, R4; char *
41CDF8:  ADD             R1, PC; "ROCK_CLIFF"
41CDFA:  BLX             strcmp
41CDFE:  CMP             R0, #0
41CE00:  BEQ.W           loc_41D884
41CE04:  LDR.W           R1, =(aWaterRiverbed - 0x41CE0E); "WATER_RIVERBED"
41CE08:  MOV             R0, R4; char *
41CE0A:  ADD             R1, PC; "WATER_RIVERBED"
41CE0C:  BLX             strcmp
41CE10:  CMP             R0, #0
41CE12:  BEQ.W           loc_41D888
41CE16:  LDR.W           R1, =(aWaterShallow - 0x41CE20); "WATER_SHALLOW"
41CE1A:  MOV             R0, R4; char *
41CE1C:  ADD             R1, PC; "WATER_SHALLOW"
41CE1E:  BLX             strcmp
41CE22:  CMP             R0, #0
41CE24:  BEQ.W           loc_41D88C
41CE28:  LDR.W           R1, =(aPCornfield+2 - 0x41CE32); "CORNFIELD"
41CE2C:  MOV             R0, R4; char *
41CE2E:  ADD             R1, PC; char *
41CE30:  BLX             strcmp
41CE34:  CMP             R0, #0
41CE36:  BEQ.W           loc_41D890
41CE3A:  LDR.W           R1, =(aHedge - 0x41CE44); "HEDGE"
41CE3E:  MOV             R0, R4; char *
41CE40:  ADD             R1, PC; "HEDGE"
41CE42:  BLX             strcmp
41CE46:  CMP             R0, #0
41CE48:  BEQ.W           loc_41D894
41CE4C:  LDR.W           R1, =(aWoodCrates - 0x41CE56); "WOOD_CRATES"
41CE50:  MOV             R0, R4; char *
41CE52:  ADD             R1, PC; "WOOD_CRATES"
41CE54:  BLX             strcmp
41CE58:  CMP             R0, #0
41CE5A:  BEQ.W           loc_41D898
41CE5E:  LDR.W           R1, =(aWoodSolid - 0x41CE68); "WOOD_SOLID"
41CE62:  MOV             R0, R4; char *
41CE64:  ADD             R1, PC; "WOOD_SOLID"
41CE66:  BLX             strcmp
41CE6A:  CMP             R0, #0
41CE6C:  BEQ.W           loc_41D89C
41CE70:  LDR.W           R1, =(aWoodThin - 0x41CE7A); "WOOD_THIN"
41CE74:  MOV             R0, R4; char *
41CE76:  ADD             R1, PC; "WOOD_THIN"
41CE78:  BLX             strcmp
41CE7C:  CMP             R0, #0
41CE7E:  BEQ.W           loc_41D8A0
41CE82:  LDR.W           R1, =(aUnbreakableGla+0xC - 0x41CE8C); "GLASS"
41CE86:  MOV             R0, R4; char *
41CE88:  ADD             R1, PC; char *
41CE8A:  BLX             strcmp
41CE8E:  CMP             R0, #0
41CE90:  BEQ.W           loc_41D8A4
41CE94:  LDR.W           R1, =(aGlassWindowsLa - 0x41CE9E); "GLASS_WINDOWS_LARGE"
41CE98:  MOV             R0, R4; char *
41CE9A:  ADD             R1, PC; "GLASS_WINDOWS_LARGE"
41CE9C:  BLX             strcmp
41CEA0:  CMP             R0, #0
41CEA2:  BEQ.W           loc_41D8A8
41CEA6:  LDR.W           R1, =(aGlassWindowsSm - 0x41CEB0); "GLASS_WINDOWS_SMALL"
41CEAA:  MOV             R0, R4; char *
41CEAC:  ADD             R1, PC; "GLASS_WINDOWS_SMALL"
41CEAE:  BLX             strcmp
41CEB2:  CMP             R0, #0
41CEB4:  BEQ.W           loc_41D8AC
41CEB8:  LDR.W           R1, =(aEmpty1 - 0x41CEC2); "EMPTY1"
41CEBC:  MOV             R0, R4; char *
41CEBE:  ADD             R1, PC; "EMPTY1"
41CEC0:  BLX             strcmp
41CEC4:  CMP             R0, #0
41CEC6:  BEQ.W           loc_41D8B0
41CECA:  LDR.W           R1, =(aEmpty2 - 0x41CED4); "EMPTY2"
41CECE:  MOV             R0, R4; char *
41CED0:  ADD             R1, PC; "EMPTY2"
41CED2:  BLX             strcmp
41CED6:  CMP             R0, #0
41CED8:  BEQ.W           loc_41D8B4
41CEDC:  LDR.W           R1, =(aGarageDoor - 0x41CEE6); "GARAGE_DOOR"
41CEE0:  MOV             R0, R4; char *
41CEE2:  ADD             R1, PC; "GARAGE_DOOR"
41CEE4:  BLX             strcmp
41CEE8:  CMP             R0, #0
41CEEA:  BEQ.W           loc_41D8B8
41CEEE:  LDR.W           R1, =(aThickMetalPlat - 0x41CEF8); "THICK_METAL_PLATE"
41CEF2:  MOV             R0, R4; char *
41CEF4:  ADD             R1, PC; "THICK_METAL_PLATE"
41CEF6:  BLX             strcmp
41CEFA:  CMP             R0, #0
41CEFC:  BEQ.W           loc_41D8BC
41CF00:  LDR.W           R1, =(aScaffoldPole - 0x41CF0A); "SCAFFOLD_POLE"
41CF04:  MOV             R0, R4; char *
41CF06:  ADD             R1, PC; "SCAFFOLD_POLE"
41CF08:  BLX             strcmp
41CF0C:  CMP             R0, #0
41CF0E:  BEQ.W           loc_41D8C0
41CF12:  LDR.W           R1, =(aLampPost - 0x41CF1C); "LAMP_POST"
41CF16:  MOV             R0, R4; char *
41CF18:  ADD             R1, PC; "LAMP_POST"
41CF1A:  BLX             strcmp
41CF1E:  CMP             R0, #0
41CF20:  BEQ.W           loc_41D8C4
41CF24:  LDR.W           R1, =(aMetalGate - 0x41CF2E); "METAL_GATE"
41CF28:  MOV             R0, R4; char *
41CF2A:  ADD             R1, PC; "METAL_GATE"
41CF2C:  BLX             strcmp
41CF30:  CMP             R0, #0
41CF32:  BEQ.W           loc_41D8C8
41CF36:  LDR.W           R1, =(aMetalChainFenc - 0x41CF40); "METAL_CHAIN_FENCE"
41CF3A:  MOV             R0, R4; char *
41CF3C:  ADD             R1, PC; "METAL_CHAIN_FENCE"
41CF3E:  BLX             strcmp
41CF42:  CMP             R0, #0
41CF44:  BEQ.W           loc_41D8CC
41CF48:  LDR.W           R1, =(aGirder - 0x41CF52); "GIRDER"
41CF4C:  MOV             R0, R4; char *
41CF4E:  ADD             R1, PC; "GIRDER"
41CF50:  BLX             strcmp
41CF54:  CMP             R0, #0
41CF56:  BEQ.W           loc_41D8D0
41CF5A:  LDR.W           R1, =(aFireHydrant - 0x41CF64); "FIRE_HYDRANT"
41CF5E:  MOV             R0, R4; char *
41CF60:  ADD             R1, PC; "FIRE_HYDRANT"
41CF62:  BLX             strcmp
41CF66:  CMP             R0, #0
41CF68:  BEQ.W           loc_41D8D4
41CF6C:  LDR.W           R1, =(aContainer - 0x41CF76); "CONTAINER"
41CF70:  MOV             R0, R4; char *
41CF72:  ADD             R1, PC; "CONTAINER"
41CF74:  BLX             strcmp
41CF78:  CMP             R0, #0
41CF7A:  BEQ.W           loc_41D8D8
41CF7E:  LDR.W           R1, =(aNewsVendor - 0x41CF88); "NEWS_VENDOR"
41CF82:  MOV             R0, R4; char *
41CF84:  ADD             R1, PC; "NEWS_VENDOR"
41CF86:  BLX             strcmp
41CF8A:  CMP             R0, #0
41CF8C:  BEQ.W           loc_41D8DC
41CF90:  LDR.W           R1, =(aWheelbase - 0x41CF9A); "WHEELBASE"
41CF94:  MOV             R0, R4; char *
41CF96:  ADD             R1, PC; "WHEELBASE"
41CF98:  BLX             strcmp
41CF9C:  CMP             R0, #0
41CF9E:  BEQ.W           loc_41D8E0
41CFA2:  LDR.W           R1, =(aCardboardbox - 0x41CFAC); "CARDBOARDBOX"
41CFA6:  MOV             R0, R4; char *
41CFA8:  ADD             R1, PC; "CARDBOARDBOX"
41CFAA:  BLX             strcmp
41CFAE:  CMP             R0, #0
41CFB0:  BEQ.W           loc_41D8E4
41CFB4:  ADR.W           R1, off_41DC2C; char *
41CFB8:  MOV             R0, R4; char *
41CFBA:  BLX             strcmp
41CFBE:  CMP             R0, #0
41CFC0:  BEQ.W           loc_41D8E8
41CFC4:  ADR.W           R1, dword_41DC30; char *
41CFC8:  MOV             R0, R4; char *
41CFCA:  BLX             strcmp
41CFCE:  CMP             R0, #0
41CFD0:  BEQ.W           loc_41D8EC
41CFD4:  LDR.W           R1, =(aCarPanel - 0x41CFDE); "CAR_PANEL"
41CFD8:  MOV             R0, R4; char *
41CFDA:  ADD             R1, PC; "CAR_PANEL"
41CFDC:  BLX             strcmp
41CFE0:  CMP             R0, #0
41CFE2:  BEQ.W           loc_41D8F0
41CFE6:  LDR.W           R1, =(aCarMovingcompo - 0x41CFF0); "CAR_MOVINGCOMPONENT"
41CFEA:  MOV             R0, R4; char *
41CFEC:  ADD             R1, PC; "CAR_MOVINGCOMPONENT"
41CFEE:  BLX             strcmp
41CFF2:  CMP             R0, #0
41CFF4:  BEQ.W           loc_41D8F4
41CFF8:  LDR.W           R1, =(aTransparentClo - 0x41D002); "TRANSPARENT_CLOTH"
41CFFC:  MOV             R0, R4; char *
41CFFE:  ADD             R1, PC; "TRANSPARENT_CLOTH"
41D000:  BLX             strcmp
41D004:  CMP             R0, #0
41D006:  BEQ.W           loc_41D8F8
41D00A:  LDR.W           R1, =(aRubber - 0x41D014); "RUBBER"
41D00E:  MOV             R0, R4; char *
41D010:  ADD             R1, PC; "RUBBER"
41D012:  BLX             strcmp
41D016:  CMP             R0, #0
41D018:  BEQ.W           loc_41D8FC
41D01C:  LDR.W           R1, =(aPlastic - 0x41D026); "PLASTIC"
41D020:  MOV             R0, R4; char *
41D022:  ADD             R1, PC; "PLASTIC"
41D024:  BLX             strcmp
41D028:  CMP             R0, #0
41D02A:  BEQ.W           loc_41D900
41D02E:  LDR.W           R1, =(aTransparentSto - 0x41D038); "TRANSPARENT_STONE"
41D032:  MOV             R0, R4; char *
41D034:  ADD             R1, PC; "TRANSPARENT_STONE"
41D036:  BLX             strcmp
41D03A:  CMP             R0, #0
41D03C:  BEQ.W           loc_41D904
41D040:  LDR.W           R1, =(aWoodBench - 0x41D04A); "WOOD_BENCH"
41D044:  MOV             R0, R4; char *
41D046:  ADD             R1, PC; "WOOD_BENCH"
41D048:  BLX             strcmp
41D04C:  CMP             R0, #0
41D04E:  BEQ.W           loc_41D908
41D052:  LDR.W           R1, =(aStairscarpet+6 - 0x41D05C); "CARPET"
41D056:  MOV             R0, R4; char *
41D058:  ADD             R1, PC; char *
41D05A:  BLX             strcmp
41D05E:  CMP             R0, #0
41D060:  BEQ.W           loc_41D90C
41D064:  LDR.W           R1, =(aFloorboard - 0x41D06E); "FLOORBOARD"
41D068:  MOV             R0, R4; char *
41D06A:  ADD             R1, PC; "FLOORBOARD"
41D06C:  BLX             strcmp
41D070:  CMP             R0, #0
41D072:  BEQ.W           loc_41D910
41D076:  LDR.W           R1, =(aStairswood - 0x41D080); "STAIRSWOOD"
41D07A:  MOV             R0, R4; char *
41D07C:  ADD             R1, PC; "STAIRSWOOD"
41D07E:  BLX             strcmp
41D082:  CMP             R0, #0
41D084:  BEQ.W           loc_41D914
41D088:  LDR.W           R1, =(aPSand - 0x41D092); "P_SAND"
41D08C:  MOV             R0, R4; char *
41D08E:  ADD             R1, PC; "P_SAND"
41D090:  BLX             strcmp
41D094:  CMP             R0, #0
41D096:  BEQ.W           loc_41D918
41D09A:  LDR.W           R1, =(aPSandDense - 0x41D0A4); "P_SAND_DENSE"
41D09E:  MOV             R0, R4; char *
41D0A0:  ADD             R1, PC; "P_SAND_DENSE"
41D0A2:  BLX             strcmp
41D0A6:  CMP             R0, #0
41D0A8:  BEQ.W           loc_41D91C
41D0AC:  LDR.W           R1, =(aPSandArid - 0x41D0B6); "P_SAND_ARID"
41D0B0:  MOV             R0, R4; char *
41D0B2:  ADD             R1, PC; "P_SAND_ARID"
41D0B4:  BLX             strcmp
41D0B8:  CMP             R0, #0
41D0BA:  BEQ.W           loc_41D920
41D0BE:  LDR.W           R1, =(aPSandCompact - 0x41D0C8); "P_SAND_COMPACT"
41D0C2:  MOV             R0, R4; char *
41D0C4:  ADD             R1, PC; "P_SAND_COMPACT"
41D0C6:  BLX             strcmp
41D0CA:  CMP             R0, #0
41D0CC:  BEQ.W           loc_41D924
41D0D0:  LDR.W           R1, =(aPSandRocky - 0x41D0DA); "P_SAND_ROCKY"
41D0D4:  MOV             R0, R4; char *
41D0D6:  ADD             R1, PC; "P_SAND_ROCKY"
41D0D8:  BLX             strcmp
41D0DC:  CMP             R0, #0
41D0DE:  BEQ.W           loc_41D928
41D0E2:  LDR.W           R1, =(aPSandbeach - 0x41D0EC); "P_SANDBEACH"
41D0E6:  MOV             R0, R4; char *
41D0E8:  ADD             R1, PC; "P_SANDBEACH"
41D0EA:  BLX             strcmp
41D0EE:  CMP             R0, #0
41D0F0:  BEQ.W           loc_41D92C
41D0F4:  LDR.W           R1, =(aPGrassShort - 0x41D0FE); "P_GRASS_SHORT"
41D0F8:  MOV             R0, R4; char *
41D0FA:  ADD             R1, PC; "P_GRASS_SHORT"
41D0FC:  BLX             strcmp
41D100:  CMP             R0, #0
41D102:  BEQ.W           loc_41D930
41D106:  LDR.W           R1, =(aPGrassMeadow - 0x41D110); "P_GRASS_MEADOW"
41D10A:  MOV             R0, R4; char *
41D10C:  ADD             R1, PC; "P_GRASS_MEADOW"
41D10E:  BLX             strcmp
41D112:  CMP             R0, #0
41D114:  BEQ.W           loc_41D934
41D118:  LDR.W           R1, =(aPGrassDry - 0x41D122); "P_GRASS_DRY"
41D11C:  MOV             R0, R4; char *
41D11E:  ADD             R1, PC; "P_GRASS_DRY"
41D120:  BLX             strcmp
41D124:  CMP             R0, #0
41D126:  BEQ.W           loc_41D938
41D12A:  LDR.W           R1, =(aPWoodland - 0x41D134); "P_WOODLAND"
41D12E:  MOV             R0, R4; char *
41D130:  ADD             R1, PC; "P_WOODLAND"
41D132:  BLX             strcmp
41D136:  CMP             R0, #0
41D138:  BEQ.W           loc_41D93C
41D13C:  LDR.W           R1, =(aPWooddense - 0x41D146); "P_WOODDENSE"
41D140:  MOV             R0, R4; char *
41D142:  ADD             R1, PC; "P_WOODDENSE"
41D144:  BLX             strcmp
41D148:  CMP             R0, #0
41D14A:  BEQ.W           loc_41D940
41D14E:  LDR.W           R1, =(aPRoadside - 0x41D158); "P_ROADSIDE"
41D152:  MOV             R0, R4; char *
41D154:  ADD             R1, PC; "P_ROADSIDE"
41D156:  BLX             strcmp
41D15A:  CMP             R0, #0
41D15C:  BEQ.W           loc_41D944
41D160:  LDR.W           R1, =(aPRoadsidedes - 0x41D16A); "P_ROADSIDEDES"
41D164:  MOV             R0, R4; char *
41D166:  ADD             R1, PC; "P_ROADSIDEDES"
41D168:  BLX             strcmp
41D16C:  CMP             R0, #0
41D16E:  BEQ.W           loc_41D948
41D172:  LDR.W           R1, =(aPFlowerbed - 0x41D17C); "P_FLOWERBED"
41D176:  MOV             R0, R4; char *
41D178:  ADD             R1, PC; "P_FLOWERBED"
41D17A:  BLX             strcmp
41D17E:  CMP             R0, #0
41D180:  BEQ.W           loc_41D94C
41D184:  LDR.W           R1, =(aPWasteground - 0x41D18E); "P_WASTEGROUND"
41D188:  MOV             R0, R4; char *
41D18A:  ADD             R1, PC; "P_WASTEGROUND"
41D18C:  BLX             strcmp
41D190:  CMP             R0, #0
41D192:  BEQ.W           loc_41D950
41D196:  LDR.W           R1, =(aPConcrete - 0x41D1A0); "P_CONCRETE"
41D19A:  MOV             R0, R4; char *
41D19C:  ADD             R1, PC; "P_CONCRETE"
41D19E:  BLX             strcmp
41D1A2:  CMP             R0, #0
41D1A4:  BEQ.W           loc_41D954
41D1A8:  LDR.W           R1, =(aPOfficedesk - 0x41D1B2); "P_OFFICEDESK"
41D1AC:  MOV             R0, R4; char *
41D1AE:  ADD             R1, PC; "P_OFFICEDESK"
41D1B0:  BLX             strcmp
41D1B4:  CMP             R0, #0
41D1B6:  BEQ.W           loc_41D958
41D1BA:  LDR.W           R1, =(aP711shelf1 - 0x41D1C4); "P_711SHELF1"
41D1BE:  MOV             R0, R4; char *
41D1C0:  ADD             R1, PC; "P_711SHELF1"
41D1C2:  BLX             strcmp
41D1C6:  CMP             R0, #0
41D1C8:  BEQ.W           loc_41D95C
41D1CC:  LDR.W           R1, =(aP711shelf2 - 0x41D1D6); "P_711SHELF2"
41D1D0:  MOV             R0, R4; char *
41D1D2:  ADD             R1, PC; "P_711SHELF2"
41D1D4:  BLX             strcmp
41D1D8:  CMP             R0, #0
41D1DA:  BEQ.W           loc_41D960
41D1DE:  LDR.W           R1, =(aP711shelf3 - 0x41D1E8); "P_711SHELF3"
41D1E2:  MOV             R0, R4; char *
41D1E4:  ADD             R1, PC; "P_711SHELF3"
41D1E6:  BLX             strcmp
41D1EA:  CMP             R0, #0
41D1EC:  BEQ.W           loc_41D964
41D1F0:  LDR.W           R1, =(aPRestuaranttab - 0x41D1FA); "P_RESTUARANTTABLE"
41D1F4:  MOV             R0, R4; char *
41D1F6:  ADD             R1, PC; "P_RESTUARANTTABLE"
41D1F8:  BLX             strcmp
41D1FC:  CMP             R0, #0
41D1FE:  BEQ.W           loc_41D968
41D202:  LDR.W           R1, =(aPBartable - 0x41D20C); "P_BARTABLE"
41D206:  MOV             R0, R4; char *
41D208:  ADD             R1, PC; "P_BARTABLE"
41D20A:  BLX             strcmp
41D20E:  CMP             R0, #0
41D210:  BEQ.W           loc_41D96C
41D214:  LDR.W           R1, =(aPUnderwaterlus - 0x41D21E); "P_UNDERWATERLUSH"
41D218:  MOV             R0, R4; char *
41D21A:  ADD             R1, PC; "P_UNDERWATERLUSH"
41D21C:  BLX             strcmp
41D220:  CMP             R0, #0
41D222:  BEQ.W           loc_41D970
41D226:  LDR.W           R1, =(aPUnderwaterbar - 0x41D230); "P_UNDERWATERBARREN"
41D22A:  MOV             R0, R4; char *
41D22C:  ADD             R1, PC; "P_UNDERWATERBARREN"
41D22E:  BLX             strcmp
41D232:  CMP             R0, #0
41D234:  BEQ.W           loc_41D974
41D238:  LDR.W           R1, =(aPUnderwatercor - 0x41D242); "P_UNDERWATERCORAL"
41D23C:  MOV             R0, R4; char *
41D23E:  ADD             R1, PC; "P_UNDERWATERCORAL"
41D240:  BLX             strcmp
41D244:  CMP             R0, #0
41D246:  BEQ.W           loc_41D978
41D24A:  LDR.W           R1, =(aPUnderwaterdee - 0x41D254); "P_UNDERWATERDEEP"
41D24E:  MOV             R0, R4; char *
41D250:  ADD             R1, PC; "P_UNDERWATERDEEP"
41D252:  BLX             strcmp
41D256:  CMP             R0, #0
41D258:  BEQ.W           loc_41D97C
41D25C:  LDR.W           R1, =(aPRiverbed - 0x41D266); "P_RIVERBED"
41D260:  MOV             R0, R4; char *
41D262:  ADD             R1, PC; "P_RIVERBED"
41D264:  BLX             strcmp
41D268:  CMP             R0, #0
41D26A:  BEQ.W           loc_41D980
41D26E:  LDR.W           R1, =(aPRubble - 0x41D278); "P_RUBBLE"
41D272:  MOV             R0, R4; char *
41D274:  ADD             R1, PC; "P_RUBBLE"
41D276:  BLX             strcmp
41D27A:  CMP             R0, #0
41D27C:  BEQ.W           loc_41D984
41D280:  LDR.W           R1, =(aPBedroomfloor - 0x41D28A); "P_BEDROOMFLOOR"
41D284:  MOV             R0, R4; char *
41D286:  ADD             R1, PC; "P_BEDROOMFLOOR"
41D288:  BLX             strcmp
41D28C:  CMP             R0, #0
41D28E:  BEQ.W           loc_41D988
41D292:  LDR.W           R1, =(aPKirchenfloor - 0x41D29C); "P_KIRCHENFLOOR"
41D296:  MOV             R0, R4; char *
41D298:  ADD             R1, PC; "P_KIRCHENFLOOR"
41D29A:  BLX             strcmp
41D29E:  CMP             R0, #0
41D2A0:  BEQ.W           loc_41D98C
41D2A4:  LDR.W           R1, =(aPLivingrmfloor - 0x41D2AE); "P_LIVINGRMFLOOR"
41D2A8:  MOV             R0, R4; char *
41D2AA:  ADD             R1, PC; "P_LIVINGRMFLOOR"
41D2AC:  BLX             strcmp
41D2B0:  CMP             R0, #0
41D2B2:  BEQ.W           loc_41D990
41D2B6:  LDR.W           R1, =(aPCorridorfloor - 0x41D2C0); "P_CORRIDORFLOOR"
41D2BA:  MOV             R0, R4; char *
41D2BC:  ADD             R1, PC; "P_CORRIDORFLOOR"
41D2BE:  BLX             strcmp
41D2C2:  CMP             R0, #0
41D2C4:  BEQ.W           loc_41D994
41D2C8:  LDR.W           R1, =(aP711floor - 0x41D2D2); "P_711FLOOR"
41D2CC:  MOV             R0, R4; char *
41D2CE:  ADD             R1, PC; "P_711FLOOR"
41D2D0:  BLX             strcmp
41D2D4:  CMP             R0, #0
41D2D6:  BEQ.W           loc_41D998
41D2DA:  LDR.W           R1, =(aPFastfoodfloor - 0x41D2E4); "P_FASTFOODFLOOR"
41D2DE:  MOV             R0, R4; char *
41D2E0:  ADD             R1, PC; "P_FASTFOODFLOOR"
41D2E2:  BLX             strcmp
41D2E6:  CMP             R0, #0
41D2E8:  BEQ.W           loc_41D99C
41D2EC:  LDR.W           R1, =(aPSkankyfloor - 0x41D2F6); "P_SKANKYFLOOR"
41D2F0:  MOV             R0, R4; char *
41D2F2:  ADD             R1, PC; "P_SKANKYFLOOR"
41D2F4:  BLX             strcmp
41D2F8:  CMP             R0, #0
41D2FA:  BEQ.W           loc_41D9A0
41D2FE:  LDR.W           R1, =(aPMountain - 0x41D308); "P_MOUNTAIN"
41D302:  MOV             R0, R4; char *
41D304:  ADD             R1, PC; "P_MOUNTAIN"
41D306:  BLX             strcmp
41D30A:  CMP             R0, #0
41D30C:  BEQ.W           loc_41D9A4
41D310:  LDR.W           R1, =(aPMarsh - 0x41D31A); "P_MARSH"
41D314:  MOV             R0, R4; char *
41D316:  ADD             R1, PC; "P_MARSH"
41D318:  BLX             strcmp
41D31C:  CMP             R0, #0
41D31E:  BEQ.W           loc_41D9A8
41D322:  LDR.W           R1, =(aPBushy - 0x41D32C); "P_BUSHY"
41D326:  MOV             R0, R4; char *
41D328:  ADD             R1, PC; "P_BUSHY"
41D32A:  BLX             strcmp
41D32E:  CMP             R0, #0
41D330:  BEQ.W           loc_41D9AC
41D334:  LDR.W           R1, =(aPBushymix - 0x41D33E); "P_BUSHYMIX"
41D338:  MOV             R0, R4; char *
41D33A:  ADD             R1, PC; "P_BUSHYMIX"
41D33C:  BLX             strcmp
41D340:  CMP             R0, #0
41D342:  BEQ.W           loc_41D9B0
41D346:  LDR.W           R1, =(aPBushydry - 0x41D350); "P_BUSHYDRY"
41D34A:  MOV             R0, R4; char *
41D34C:  ADD             R1, PC; "P_BUSHYDRY"
41D34E:  BLX             strcmp
41D352:  CMP             R0, #0
41D354:  BEQ.W           loc_41D9B4
41D358:  LDR.W           R1, =(aPBushymid - 0x41D362); "P_BUSHYMID"
41D35C:  MOV             R0, R4; char *
41D35E:  ADD             R1, PC; "P_BUSHYMID"
41D360:  BLX             strcmp
41D364:  CMP             R0, #0
41D366:  BEQ.W           loc_41D9B8
41D36A:  LDR.W           R1, =(aPGrassweeflowe - 0x41D374); "P_GRASSWEEFLOWERS"
41D36E:  MOV             R0, R4; char *
41D370:  ADD             R1, PC; "P_GRASSWEEFLOWERS"
41D372:  BLX             strcmp
41D376:  CMP             R0, #0
41D378:  BEQ.W           loc_41D9BC
41D37C:  LDR.W           R1, =(aPGrassdrytall - 0x41D386); "P_GRASSDRYTALL"
41D380:  MOV             R0, R4; char *
41D382:  ADD             R1, PC; "P_GRASSDRYTALL"
41D384:  BLX             strcmp
41D388:  CMP             R0, #0
41D38A:  BEQ.W           loc_41D9C0
41D38E:  LDR.W           R1, =(aPGrasslushtall - 0x41D398); "P_GRASSLUSHTALL"
41D392:  MOV             R0, R4; char *
41D394:  ADD             R1, PC; "P_GRASSLUSHTALL"
41D396:  BLX             strcmp
41D39A:  CMP             R0, #0
41D39C:  BEQ.W           loc_41D9C4
41D3A0:  LDR.W           R1, =(aPGrassgrnmix - 0x41D3AA); "P_GRASSGRNMIX"
41D3A4:  MOV             R0, R4; char *
41D3A6:  ADD             R1, PC; "P_GRASSGRNMIX"
41D3A8:  BLX             strcmp
41D3AC:  CMP             R0, #0
41D3AE:  BEQ.W           loc_41D9C8
41D3B2:  LDR.W           R1, =(aPGrassbrnmix - 0x41D3BC); "P_GRASSBRNMIX"
41D3B6:  MOV             R0, R4; char *
41D3B8:  ADD             R1, PC; "P_GRASSBRNMIX"
41D3BA:  BLX             strcmp
41D3BE:  CMP             R0, #0
41D3C0:  BEQ.W           loc_41D9CC
41D3C4:  LDR.W           R1, =(aPGrasslow - 0x41D3CE); "P_GRASSLOW"
41D3C8:  MOV             R0, R4; char *
41D3CA:  ADD             R1, PC; "P_GRASSLOW"
41D3CC:  BLX             strcmp
41D3D0:  CMP             R0, #0
41D3D2:  BEQ.W           loc_41D9D0
41D3D6:  LDR.W           R1, =(aPGrassrocky - 0x41D3E0); "P_GRASSROCKY"
41D3DA:  MOV             R0, R4; char *
41D3DC:  ADD             R1, PC; "P_GRASSROCKY"
41D3DE:  BLX             strcmp
41D3E2:  CMP             R0, #0
41D3E4:  BEQ.W           loc_41D9D4
41D3E8:  LDR.W           R1, =(aPGrasssmalltre - 0x41D3F2); "P_GRASSSMALLTREES"
41D3EC:  MOV             R0, R4; char *
41D3EE:  ADD             R1, PC; "P_GRASSSMALLTREES"
41D3F0:  BLX             strcmp
41D3F4:  CMP             R0, #0
41D3F6:  BEQ.W           loc_41D9D8
41D3FA:  LDR.W           R1, =(aPDirtrocky - 0x41D404); "P_DIRTROCKY"
41D3FE:  MOV             R0, R4; char *
41D400:  ADD             R1, PC; "P_DIRTROCKY"
41D402:  BLX             strcmp
41D406:  CMP             R0, #0
41D408:  BEQ.W           loc_41D9DC
41D40C:  LDR.W           R1, =(aPDirtweeds - 0x41D416); "P_DIRTWEEDS"
41D410:  MOV             R0, R4; char *
41D412:  ADD             R1, PC; "P_DIRTWEEDS"
41D414:  BLX             strcmp
41D418:  CMP             R0, #0
41D41A:  BEQ.W           loc_41D9E0
41D41E:  LDR.W           R1, =(aPGrassweeds - 0x41D428); "P_GRASSWEEDS"
41D422:  MOV             R0, R4; char *
41D424:  ADD             R1, PC; "P_GRASSWEEDS"
41D426:  BLX             strcmp
41D42A:  CMP             R0, #0
41D42C:  BEQ.W           loc_41D9E4
41D430:  LDR.W           R1, =(aPRiveredge - 0x41D43A); "P_RIVEREDGE"
41D434:  MOV             R0, R4; char *
41D436:  ADD             R1, PC; "P_RIVEREDGE"
41D438:  BLX             strcmp
41D43C:  CMP             R0, #0
41D43E:  BEQ.W           loc_41D9E8
41D442:  LDR.W           R1, =(aPPoolside - 0x41D44C); "P_POOLSIDE"
41D446:  MOV             R0, R4; char *
41D448:  ADD             R1, PC; "P_POOLSIDE"
41D44A:  BLX             strcmp
41D44E:  CMP             R0, #0
41D450:  BEQ.W           loc_41D9EC
41D454:  LDR.W           R1, =(aPForeststumps - 0x41D45E); "P_FORESTSTUMPS"
41D458:  MOV             R0, R4; char *
41D45A:  ADD             R1, PC; "P_FORESTSTUMPS"
41D45C:  BLX             strcmp
41D460:  CMP             R0, #0
41D462:  BEQ.W           loc_41D9F0
41D466:  LDR.W           R1, =(aPForeststicks - 0x41D470); "P_FORESTSTICKS"
41D46A:  MOV             R0, R4; char *
41D46C:  ADD             R1, PC; "P_FORESTSTICKS"
41D46E:  BLX             strcmp
41D472:  CMP             R0, #0
41D474:  BEQ.W           loc_41D9F4
41D478:  LDR.W           R1, =(aPForrestleaves - 0x41D482); "P_FORRESTLEAVES"
41D47C:  MOV             R0, R4; char *
41D47E:  ADD             R1, PC; "P_FORRESTLEAVES"
41D480:  BLX             strcmp
41D484:  CMP             R0, #0
41D486:  BEQ.W           loc_41D9F8
41D48A:  LDR.W           R1, =(aPDesertrocks - 0x41D494); "P_DESERTROCKS"
41D48E:  MOV             R0, R4; char *
41D490:  ADD             R1, PC; "P_DESERTROCKS"
41D492:  BLX             strcmp
41D496:  CMP             R0, #0
41D498:  BEQ.W           loc_41D9FC
41D49C:  LDR.W           R1, =(aPForrestdry - 0x41D4A6); "P_FORRESTDRY"
41D4A0:  MOV             R0, R4; char *
41D4A2:  ADD             R1, PC; "P_FORRESTDRY"
41D4A4:  BLX             strcmp
41D4A8:  CMP             R0, #0
41D4AA:  BEQ.W           loc_41DA00
41D4AE:  LDR.W           R1, =(aPSparseflowers - 0x41D4B8); "P_SPARSEFLOWERS"
41D4B2:  MOV             R0, R4; char *
41D4B4:  ADD             R1, PC; "P_SPARSEFLOWERS"
41D4B6:  BLX             strcmp
41D4BA:  CMP             R0, #0
41D4BC:  BEQ.W           loc_41DA04
41D4C0:  LDR.W           R1, =(aPBuildingsite - 0x41D4CA); "P_BUILDINGSITE"
41D4C4:  MOV             R0, R4; char *
41D4C6:  ADD             R1, PC; "P_BUILDINGSITE"
41D4C8:  BLX             strcmp
41D4CC:  CMP             R0, #0
41D4CE:  BEQ.W           loc_41DA08
41D4D2:  LDR.W           R1, =(aPDocklands - 0x41D4DC); "P_DOCKLANDS"
41D4D6:  MOV             R0, R4; char *
41D4D8:  ADD             R1, PC; "P_DOCKLANDS"
41D4DA:  BLX             strcmp
41D4DE:  CMP             R0, #0
41D4E0:  BEQ.W           loc_41DA0C
41D4E4:  LDR.W           R1, =(aPIndustrial - 0x41D4EE); "P_INDUSTRIAL"
41D4E8:  MOV             R0, R4; char *
41D4EA:  ADD             R1, PC; "P_INDUSTRIAL"
41D4EC:  BLX             strcmp
41D4F0:  CMP             R0, #0
41D4F2:  BEQ.W           loc_41DA10
41D4F6:  LDR.W           R1, =(aPIndustjetty - 0x41D500); "P_INDUSTJETTY"
41D4FA:  MOV             R0, R4; char *
41D4FC:  ADD             R1, PC; "P_INDUSTJETTY"
41D4FE:  BLX             strcmp
41D502:  CMP             R0, #0
41D504:  BEQ.W           loc_41DA14
41D508:  LDR.W           R1, =(aPConcretelitte - 0x41D512); "P_CONCRETELITTER"
41D50C:  MOV             R0, R4; char *
41D50E:  ADD             R1, PC; "P_CONCRETELITTER"
41D510:  BLX             strcmp
41D514:  CMP             R0, #0
41D516:  BEQ.W           loc_41DA18
41D51A:  LDR.W           R1, =(aPAlleyrubish - 0x41D524); "P_ALLEYRUBISH"
41D51E:  MOV             R0, R4; char *
41D520:  ADD             R1, PC; "P_ALLEYRUBISH"
41D522:  BLX             strcmp
41D526:  CMP             R0, #0
41D528:  BEQ.W           loc_41DA1C
41D52C:  LDR.W           R1, =(aPJunkyardpiles - 0x41D536); "P_JUNKYARDPILES"
41D530:  MOV             R0, R4; char *
41D532:  ADD             R1, PC; "P_JUNKYARDPILES"
41D534:  BLX             strcmp
41D538:  CMP             R0, #0
41D53A:  BEQ.W           loc_41DA20
41D53E:  LDR.W           R1, =(aPJunkyardgrnd - 0x41D548); "P_JUNKYARDGRND"
41D542:  MOV             R0, R4; char *
41D544:  ADD             R1, PC; "P_JUNKYARDGRND"
41D546:  BLX             strcmp
41D54A:  CMP             R0, #0
41D54C:  BEQ.W           loc_41DA24
41D550:  LDR.W           R1, =(aPDump - 0x41D55A); "P_DUMP"
41D554:  MOV             R0, R4; char *
41D556:  ADD             R1, PC; "P_DUMP"
41D558:  BLX             strcmp
41D55C:  CMP             R0, #0
41D55E:  BEQ.W           loc_41DA28
41D562:  LDR.W           R1, =(aPCactusdense - 0x41D56C); "P_CACTUSDENSE"
41D566:  MOV             R0, R4; char *
41D568:  ADD             R1, PC; "P_CACTUSDENSE"
41D56A:  BLX             strcmp
41D56E:  CMP             R0, #0
41D570:  BEQ.W           loc_41DA2C
41D574:  LDR.W           R1, =(aPAirportgrnd - 0x41D57E); "P_AIRPORTGRND"
41D578:  MOV             R0, R4; char *
41D57A:  ADD             R1, PC; "P_AIRPORTGRND"
41D57C:  BLX             strcmp
41D580:  CMP             R0, #0
41D582:  BEQ.W           loc_41DA30
41D586:  LDR.W           R1, =(aPCornfield - 0x41D590); "P_CORNFIELD"
41D58A:  MOV             R0, R4; char *
41D58C:  ADD             R1, PC; "P_CORNFIELD"
41D58E:  BLX             strcmp
41D592:  CMP             R0, #0
41D594:  BEQ.W           loc_41DA34
41D598:  LDR.W           R1, =(aPGrasslight - 0x41D5A2); "P_GRASSLIGHT"
41D59C:  MOV             R0, R4; char *
41D59E:  ADD             R1, PC; "P_GRASSLIGHT"
41D5A0:  BLX             strcmp
41D5A4:  CMP             R0, #0
41D5A6:  BEQ.W           loc_41DA38
41D5AA:  LDR.W           R1, =(aPGrasslighter - 0x41D5B4); "P_GRASSLIGHTER"
41D5AE:  MOV             R0, R4; char *
41D5B0:  ADD             R1, PC; "P_GRASSLIGHTER"
41D5B2:  BLX             strcmp
41D5B6:  CMP             R0, #0
41D5B8:  BEQ.W           loc_41DA3C
41D5BC:  LDR.W           R1, =(aPGrasslighter2 - 0x41D5C6); "P_GRASSLIGHTER2"
41D5C0:  MOV             R0, R4; char *
41D5C2:  ADD             R1, PC; "P_GRASSLIGHTER2"
41D5C4:  BLX             strcmp
41D5C8:  CMP             R0, #0
41D5CA:  BEQ.W           loc_41DA40
41D5CE:  LDR.W           R1, =(aPGrassmid1 - 0x41D5D8); "P_GRASSMID1"
41D5D2:  MOV             R0, R4; char *
41D5D4:  ADD             R1, PC; "P_GRASSMID1"
41D5D6:  BLX             strcmp
41D5DA:  CMP             R0, #0
41D5DC:  BEQ.W           loc_41DA44
41D5E0:  LDR.W           R1, =(aPGrassmid2 - 0x41D5EA); "P_GRASSMID2"
41D5E4:  MOV             R0, R4; char *
41D5E6:  ADD             R1, PC; "P_GRASSMID2"
41D5E8:  BLX             strcmp
41D5EC:  CMP             R0, #0
41D5EE:  BEQ.W           loc_41DA48
41D5F2:  LDR.W           R1, =(aPGrassdark - 0x41D5FC); "P_GRASSDARK"
41D5F6:  MOV             R0, R4; char *
41D5F8:  ADD             R1, PC; "P_GRASSDARK"
41D5FA:  BLX             strcmp
41D5FE:  CMP             R0, #0
41D600:  BEQ.W           loc_41DA4C
41D604:  LDR.W           R1, =(aPGrassdark2 - 0x41D60E); "P_GRASSDARK2"
41D608:  MOV             R0, R4; char *
41D60A:  ADD             R1, PC; "P_GRASSDARK2"
41D60C:  BLX             strcmp
41D610:  CMP             R0, #0
41D612:  BEQ.W           loc_41DA50
41D616:  LDR.W           R1, =(aPGrassdirtmix - 0x41D620); "P_GRASSDIRTMIX"
41D61A:  MOV             R0, R4; char *
41D61C:  ADD             R1, PC; "P_GRASSDIRTMIX"
41D61E:  BLX             strcmp
41D622:  CMP             R0, #0
41D624:  BEQ.W           loc_41DA54
41D628:  LDR.W           R1, =(aPRiverbedstone - 0x41D632); "P_RIVERBEDSTONE"
41D62C:  MOV             R0, R4; char *
41D62E:  ADD             R1, PC; "P_RIVERBEDSTONE"
41D630:  BLX             strcmp
41D634:  CMP             R0, #0
41D636:  BEQ.W           loc_41DA58
41D63A:  LDR.W           R1, =(aPRiverbedshall - 0x41D644); "P_RIVERBEDSHALLOW"
41D63E:  MOV             R0, R4; char *
41D640:  ADD             R1, PC; "P_RIVERBEDSHALLOW"
41D642:  BLX             strcmp
41D646:  CMP             R0, #0
41D648:  BEQ.W           loc_41DA5C
41D64C:  LDR.W           R1, =(aPRiverbedweeds - 0x41D656); "P_RIVERBEDWEEDS"
41D650:  MOV             R0, R4; char *
41D652:  ADD             R1, PC; "P_RIVERBEDWEEDS"
41D654:  BLX             strcmp
41D658:  CMP             R0, #0
41D65A:  BEQ.W           loc_41DA60
41D65E:  LDR.W           R1, =(aPSeaweed - 0x41D668); "P_SEAWEED"
41D662:  MOV             R0, R4; char *
41D664:  ADD             R1, PC; "P_SEAWEED"
41D666:  BLX             strcmp
41D66A:  CMP             R0, #0
41D66C:  BEQ.W           loc_41DA64
41D670:  LDR.W           R1, =(aGarageDoor+7 - 0x41D67A); "DOOR"
41D674:  MOV             R0, R4; char *
41D676:  ADD             R1, PC; "DOOR" ; char *
41D678:  BLX             strcmp
41D67C:  CMP             R0, #0
41D67E:  BEQ.W           loc_41DA68
41D682:  LDR.W           R1, =(aPlasticbarrier - 0x41D68C); "PLASTICBARRIER"
41D686:  MOV             R0, R4; char *
41D688:  ADD             R1, PC; "PLASTICBARRIER"
41D68A:  BLX             strcmp
41D68E:  CMP             R0, #0
41D690:  BEQ.W           loc_41DA6C
41D694:  LDR.W           R1, =(aParkgrass - 0x41D69E); "PARKGRASS"
41D698:  MOV             R0, R4; char *
41D69A:  ADD             R1, PC; "PARKGRASS"
41D69C:  BLX             strcmp
41D6A0:  CMP             R0, #0
41D6A2:  BEQ.W           loc_41DA70
41D6A6:  LDR.W           R1, =(aStairsstone - 0x41D6B0); "STAIRSSTONE"
41D6AA:  MOV             R0, R4; char *
41D6AC:  ADD             R1, PC; "STAIRSSTONE"
41D6AE:  BLX             strcmp
41D6B2:  CMP             R0, #0
41D6B4:  BEQ.W           loc_41DA74
41D6B8:  LDR.W           R1, =(aStairsmetal - 0x41D6C2); "STAIRSMETAL"
41D6BC:  MOV             R0, R4; char *
41D6BE:  ADD             R1, PC; "STAIRSMETAL"
41D6C0:  BLX             strcmp
41D6C4:  CMP             R0, #0
41D6C6:  BEQ.W           loc_41DA78
41D6CA:  LDR.W           R1, =(aStairscarpet - 0x41D6D4); "STAIRSCARPET"
41D6CE:  MOV             R0, R4; char *
41D6D0:  ADD             R1, PC; "STAIRSCARPET"
41D6D2:  BLX             strcmp
41D6D6:  CMP             R0, #0
41D6D8:  BEQ.W           loc_41DA7C
41D6DC:  LDR.W           R1, =(aFloormetal - 0x41D6E6); "FLOORMETAL"
41D6E0:  MOV             R0, R4; char *
41D6E2:  ADD             R1, PC; "FLOORMETAL"
41D6E4:  BLX             strcmp
41D6E8:  CMP             R0, #0
41D6EA:  BEQ.W           loc_41DA80
41D6EE:  LDR.W           R1, =(aFloorconcrete - 0x41D6F8); "FLOORCONCRETE"
41D6F2:  MOV             R0, R4; char *
41D6F4:  ADD             R1, PC; "FLOORCONCRETE"
41D6F6:  BLX             strcmp
41D6FA:  CMP             R0, #0
41D6FC:  BEQ.W           loc_41DA84
41D700:  LDR.W           R1, =(aBinBag - 0x41D70A); "BIN_BAG"
41D704:  MOV             R0, R4; char *
41D706:  ADD             R1, PC; "BIN_BAG"
41D708:  BLX             strcmp
41D70C:  CMP             R0, #0
41D70E:  BEQ.W           loc_41DA88
41D712:  LDR.W           R1, =(aThinMetalSheet - 0x41D71C); "THIN_METAL_SHEET"
41D716:  MOV             R0, R4; char *
41D718:  ADD             R1, PC; "THIN_METAL_SHEET"
41D71A:  BLX             strcmp
41D71E:  CMP             R0, #0
41D720:  BEQ.W           loc_41DA8C
41D724:  LDR.W           R1, =(aMetalBarrel - 0x41D72E); "METAL_BARREL"
41D728:  MOV             R0, R4; char *
41D72A:  ADD             R1, PC; "METAL_BARREL"
41D72C:  BLX             strcmp
41D730:  CMP             R0, #0
41D732:  BEQ.W           loc_41DA90
41D736:  LDR.W           R1, =(aPlasticCone - 0x41D740); "PLASTIC_CONE"
41D73A:  MOV             R0, R4; char *
41D73C:  ADD             R1, PC; "PLASTIC_CONE"
41D73E:  BLX             strcmp
41D742:  CMP             R0, #0
41D744:  BEQ.W           loc_41DA94
41D748:  LDR.W           R1, =(aPlasticDumpste - 0x41D752); "PLASTIC_DUMPSTER"
41D74C:  MOV             R0, R4; char *
41D74E:  ADD             R1, PC; "PLASTIC_DUMPSTER"
41D750:  BLX             strcmp
41D754:  CMP             R0, #0
41D756:  BEQ.W           loc_41DA98
41D75A:  LDR.W           R1, =(aMetalDumpster - 0x41D764); "METAL_DUMPSTER"
41D75E:  MOV             R0, R4; char *
41D760:  ADD             R1, PC; "METAL_DUMPSTER"
41D762:  BLX             strcmp
41D766:  CMP             R0, #0
41D768:  BEQ.W           loc_41DA9C
41D76C:  LDR.W           R1, =(aWoodPicketFenc - 0x41D776); "WOOD_PICKET_FENCE"
41D770:  MOV             R0, R4; char *
41D772:  ADD             R1, PC; "WOOD_PICKET_FENCE"
41D774:  BLX             strcmp
41D778:  CMP             R0, #0
41D77A:  BEQ.W           loc_41DAA0
41D77E:  LDR.W           R1, =(aWoodSlattedFen - 0x41D788); "WOOD_SLATTED_FENCE"
41D782:  MOV             R0, R4; char *
41D784:  ADD             R1, PC; "WOOD_SLATTED_FENCE"
41D786:  BLX             strcmp
41D78A:  CMP             R0, #0
41D78C:  BEQ.W           loc_41DAA4
41D790:  LDR.W           R1, =(aWoodRanchFence - 0x41D79A); "WOOD_RANCH_FENCE"
41D794:  MOV             R0, R4; char *
41D796:  ADD             R1, PC; "WOOD_RANCH_FENCE"
41D798:  BLX             strcmp
41D79C:  CMP             R0, #0
41D79E:  BEQ.W           loc_41DAA8
41D7A2:  LDR.W           R1, =(aUnbreakableGla - 0x41D7AC); "UNBREAKABLE_GLASS"
41D7A6:  MOV             R0, R4; char *
41D7A8:  ADD             R1, PC; "UNBREAKABLE_GLASS"
41D7AA:  BLX             strcmp
41D7AE:  CMP             R0, #0
41D7B0:  BEQ.W           loc_41DAAC
41D7B4:  LDR.W           R1, =(aHayBale - 0x41D7BE); "HAY_BALE"
41D7B8:  MOV             R0, R4; char *
41D7BA:  ADD             R1, PC; "HAY_BALE"
41D7BC:  BLX             strcmp
41D7C0:  CMP             R0, #0
41D7C2:  BEQ.W           loc_41DAB0
41D7C6:  LDR.W           R1, =(aGore - 0x41D7D0); "GORE"
41D7CA:  MOV             R0, R4; char *
41D7CC:  ADD             R1, PC; "GORE"
41D7CE:  BLX             strcmp
41D7D2:  CMP             R0, #0
41D7D4:  BEQ.W           loc_41DAB4
41D7D8:  LDR.W           R1, =(aRailtrack - 0x41D7E2); "RAILTRACK"
41D7DC:  MOV             R0, R4; char *
41D7DE:  ADD             R1, PC; "RAILTRACK"
41D7E0:  BLX             strcmp
41D7E4:  MOV             R1, R0
41D7E6:  MOVS            R0, #0
41D7E8:  CMP             R1, #0
41D7EA:  IT EQ
41D7EC:  MOVEQ           R0, #0xB2
41D7EE:  POP             {R4,R6,R7,PC}
41D7F0:  MOVS            R0, #0
41D7F2:  POP             {R4,R6,R7,PC}
41D7F4:  MOVS            R0, #1
41D7F6:  POP             {R4,R6,R7,PC}
41D7F8:  MOVS            R0, #2
41D7FA:  POP             {R4,R6,R7,PC}
41D7FC:  MOVS            R0, #3
41D7FE:  POP             {R4,R6,R7,PC}
41D800:  MOVS            R0, #4
41D802:  POP             {R4,R6,R7,PC}
41D804:  MOVS            R0, #5
41D806:  POP             {R4,R6,R7,PC}
41D808:  MOVS            R0, #6
41D80A:  POP             {R4,R6,R7,PC}
41D80C:  MOVS            R0, #7
41D80E:  POP             {R4,R6,R7,PC}
41D810:  MOVS            R0, #8
41D812:  POP             {R4,R6,R7,PC}
41D814:  MOVS            R0, #9
41D816:  POP             {R4,R6,R7,PC}
41D818:  MOVS            R0, #0xA
41D81A:  POP             {R4,R6,R7,PC}
41D81C:  MOVS            R0, #0xB
41D81E:  POP             {R4,R6,R7,PC}
41D820:  MOVS            R0, #0xC
41D822:  POP             {R4,R6,R7,PC}
41D824:  MOVS            R0, #0xD
41D826:  POP             {R4,R6,R7,PC}
41D828:  MOVS            R0, #0xE
41D82A:  POP             {R4,R6,R7,PC}
41D82C:  MOVS            R0, #0xF
41D82E:  POP             {R4,R6,R7,PC}
41D830:  MOVS            R0, #0x10
41D832:  POP             {R4,R6,R7,PC}
41D834:  MOVS            R0, #0x11
41D836:  POP             {R4,R6,R7,PC}
41D838:  MOVS            R0, #0x12
41D83A:  POP             {R4,R6,R7,PC}
41D83C:  MOVS            R0, #0x13
41D83E:  POP             {R4,R6,R7,PC}
41D840:  MOVS            R0, #0x14
41D842:  POP             {R4,R6,R7,PC}
41D844:  MOVS            R0, #0x15
41D846:  POP             {R4,R6,R7,PC}
41D848:  MOVS            R0, #0x16
41D84A:  POP             {R4,R6,R7,PC}
41D84C:  MOVS            R0, #0x17
41D84E:  POP             {R4,R6,R7,PC}
41D850:  MOVS            R0, #0x18
41D852:  POP             {R4,R6,R7,PC}
41D854:  MOVS            R0, #0x19
41D856:  POP             {R4,R6,R7,PC}
41D858:  MOVS            R0, #0x1A
41D85A:  POP             {R4,R6,R7,PC}
41D85C:  MOVS            R0, #0x1B
41D85E:  POP             {R4,R6,R7,PC}
41D860:  MOVS            R0, #0x1C
41D862:  POP             {R4,R6,R7,PC}
41D864:  MOVS            R0, #0x1D
41D866:  POP             {R4,R6,R7,PC}
41D868:  MOVS            R0, #0x1E
41D86A:  POP             {R4,R6,R7,PC}
41D86C:  MOVS            R0, #0x1F
41D86E:  POP             {R4,R6,R7,PC}
41D870:  MOVS            R0, #0x20 ; ' '
41D872:  POP             {R4,R6,R7,PC}
41D874:  MOVS            R0, #0x21 ; '!'
41D876:  POP             {R4,R6,R7,PC}
41D878:  MOVS            R0, #0x22 ; '"'
41D87A:  POP             {R4,R6,R7,PC}
41D87C:  MOVS            R0, #0x23 ; '#'
41D87E:  POP             {R4,R6,R7,PC}
41D880:  MOVS            R0, #0x24 ; '$'
41D882:  POP             {R4,R6,R7,PC}
41D884:  MOVS            R0, #0x25 ; '%'
41D886:  POP             {R4,R6,R7,PC}
41D888:  MOVS            R0, #0x26 ; '&'
41D88A:  POP             {R4,R6,R7,PC}
41D88C:  MOVS            R0, #0x27 ; '''
41D88E:  POP             {R4,R6,R7,PC}
41D890:  MOVS            R0, #0x28 ; '('
41D892:  POP             {R4,R6,R7,PC}
41D894:  MOVS            R0, #0x29 ; ')'
41D896:  POP             {R4,R6,R7,PC}
41D898:  MOVS            R0, #0x2A ; '*'
41D89A:  POP             {R4,R6,R7,PC}
41D89C:  MOVS            R0, #0x2B ; '+'
41D89E:  POP             {R4,R6,R7,PC}
41D8A0:  MOVS            R0, #0x2C ; ','
41D8A2:  POP             {R4,R6,R7,PC}
41D8A4:  MOVS            R0, #0x2D ; '-'
41D8A6:  POP             {R4,R6,R7,PC}
41D8A8:  MOVS            R0, #0x2E ; '.'
41D8AA:  POP             {R4,R6,R7,PC}
41D8AC:  MOVS            R0, #0x2F ; '/'
41D8AE:  POP             {R4,R6,R7,PC}
41D8B0:  MOVS            R0, #0x30 ; '0'
41D8B2:  POP             {R4,R6,R7,PC}
41D8B4:  MOVS            R0, #0x31 ; '1'
41D8B6:  POP             {R4,R6,R7,PC}
41D8B8:  MOVS            R0, #0x32 ; '2'
41D8BA:  POP             {R4,R6,R7,PC}
41D8BC:  MOVS            R0, #0x33 ; '3'
41D8BE:  POP             {R4,R6,R7,PC}
41D8C0:  MOVS            R0, #0x34 ; '4'
41D8C2:  POP             {R4,R6,R7,PC}
41D8C4:  MOVS            R0, #0x35 ; '5'
41D8C6:  POP             {R4,R6,R7,PC}
41D8C8:  MOVS            R0, #0x36 ; '6'
41D8CA:  POP             {R4,R6,R7,PC}
41D8CC:  MOVS            R0, #0x37 ; '7'
41D8CE:  POP             {R4,R6,R7,PC}
41D8D0:  MOVS            R0, #0x38 ; '8'
41D8D2:  POP             {R4,R6,R7,PC}
41D8D4:  MOVS            R0, #0x39 ; '9'
41D8D6:  POP             {R4,R6,R7,PC}
41D8D8:  MOVS            R0, #0x3A ; ':'
41D8DA:  POP             {R4,R6,R7,PC}
41D8DC:  MOVS            R0, #0x3B ; ';'
41D8DE:  POP             {R4,R6,R7,PC}
41D8E0:  MOVS            R0, #0x3C ; '<'
41D8E2:  POP             {R4,R6,R7,PC}
41D8E4:  MOVS            R0, #0x3D ; '='
41D8E6:  POP             {R4,R6,R7,PC}
41D8E8:  MOVS            R0, #0x3E ; '>'
41D8EA:  POP             {R4,R6,R7,PC}
41D8EC:  MOVS            R0, #0x3F ; '?'
41D8EE:  POP             {R4,R6,R7,PC}
41D8F0:  MOVS            R0, #0x40 ; '@'
41D8F2:  POP             {R4,R6,R7,PC}
41D8F4:  MOVS            R0, #0x41 ; 'A'
41D8F6:  POP             {R4,R6,R7,PC}
41D8F8:  MOVS            R0, #0x42 ; 'B'
41D8FA:  POP             {R4,R6,R7,PC}
41D8FC:  MOVS            R0, #0x43 ; 'C'
41D8FE:  POP             {R4,R6,R7,PC}
41D900:  MOVS            R0, #0x44 ; 'D'
41D902:  POP             {R4,R6,R7,PC}
41D904:  MOVS            R0, #0x45 ; 'E'
41D906:  POP             {R4,R6,R7,PC}
41D908:  MOVS            R0, #0x46 ; 'F'
41D90A:  POP             {R4,R6,R7,PC}
41D90C:  MOVS            R0, #0x47 ; 'G'
41D90E:  POP             {R4,R6,R7,PC}
41D910:  MOVS            R0, #0x48 ; 'H'
41D912:  POP             {R4,R6,R7,PC}
41D914:  MOVS            R0, #0x49 ; 'I'
41D916:  POP             {R4,R6,R7,PC}
41D918:  MOVS            R0, #0x4A ; 'J'
41D91A:  POP             {R4,R6,R7,PC}
41D91C:  MOVS            R0, #0x4B ; 'K'
41D91E:  POP             {R4,R6,R7,PC}
41D920:  MOVS            R0, #0x4C ; 'L'
41D922:  POP             {R4,R6,R7,PC}
41D924:  MOVS            R0, #0x4D ; 'M'
41D926:  POP             {R4,R6,R7,PC}
41D928:  MOVS            R0, #0x4E ; 'N'
41D92A:  POP             {R4,R6,R7,PC}
41D92C:  MOVS            R0, #0x4F ; 'O'
41D92E:  POP             {R4,R6,R7,PC}
41D930:  MOVS            R0, #0x50 ; 'P'
41D932:  POP             {R4,R6,R7,PC}
41D934:  MOVS            R0, #0x51 ; 'Q'
41D936:  POP             {R4,R6,R7,PC}
41D938:  MOVS            R0, #0x52 ; 'R'
41D93A:  POP             {R4,R6,R7,PC}
41D93C:  MOVS            R0, #0x53 ; 'S'
41D93E:  POP             {R4,R6,R7,PC}
41D940:  MOVS            R0, #0x54 ; 'T'
41D942:  POP             {R4,R6,R7,PC}
41D944:  MOVS            R0, #0x55 ; 'U'
41D946:  POP             {R4,R6,R7,PC}
41D948:  MOVS            R0, #0x56 ; 'V'
41D94A:  POP             {R4,R6,R7,PC}
41D94C:  MOVS            R0, #0x57 ; 'W'
41D94E:  POP             {R4,R6,R7,PC}
41D950:  MOVS            R0, #0x58 ; 'X'
41D952:  POP             {R4,R6,R7,PC}
41D954:  MOVS            R0, #0x59 ; 'Y'
41D956:  POP             {R4,R6,R7,PC}
41D958:  MOVS            R0, #0x5A ; 'Z'
41D95A:  POP             {R4,R6,R7,PC}
41D95C:  MOVS            R0, #0x5B ; '['
41D95E:  POP             {R4,R6,R7,PC}
41D960:  MOVS            R0, #0x5C ; '\'
41D962:  POP             {R4,R6,R7,PC}
41D964:  MOVS            R0, #0x5D ; ']'
41D966:  POP             {R4,R6,R7,PC}
41D968:  MOVS            R0, #0x5E ; '^'
41D96A:  POP             {R4,R6,R7,PC}
41D96C:  MOVS            R0, #0x5F ; '_'
41D96E:  POP             {R4,R6,R7,PC}
41D970:  MOVS            R0, #0x60 ; '`'
41D972:  POP             {R4,R6,R7,PC}
41D974:  MOVS            R0, #0x61 ; 'a'
41D976:  POP             {R4,R6,R7,PC}
41D978:  MOVS            R0, #0x62 ; 'b'
41D97A:  POP             {R4,R6,R7,PC}
41D97C:  MOVS            R0, #0x63 ; 'c'
41D97E:  POP             {R4,R6,R7,PC}
41D980:  MOVS            R0, #0x64 ; 'd'
41D982:  POP             {R4,R6,R7,PC}
41D984:  MOVS            R0, #0x65 ; 'e'
41D986:  POP             {R4,R6,R7,PC}
41D988:  MOVS            R0, #0x66 ; 'f'
41D98A:  POP             {R4,R6,R7,PC}
41D98C:  MOVS            R0, #0x67 ; 'g'
41D98E:  POP             {R4,R6,R7,PC}
41D990:  MOVS            R0, #0x68 ; 'h'
41D992:  POP             {R4,R6,R7,PC}
41D994:  MOVS            R0, #0x69 ; 'i'
41D996:  POP             {R4,R6,R7,PC}
41D998:  MOVS            R0, #0x6A ; 'j'
41D99A:  POP             {R4,R6,R7,PC}
41D99C:  MOVS            R0, #0x6B ; 'k'
41D99E:  POP             {R4,R6,R7,PC}
41D9A0:  MOVS            R0, #0x6C ; 'l'
41D9A2:  POP             {R4,R6,R7,PC}
41D9A4:  MOVS            R0, #0x6D ; 'm'
41D9A6:  POP             {R4,R6,R7,PC}
41D9A8:  MOVS            R0, #0x6E ; 'n'
41D9AA:  POP             {R4,R6,R7,PC}
41D9AC:  MOVS            R0, #0x6F ; 'o'
41D9AE:  POP             {R4,R6,R7,PC}
41D9B0:  MOVS            R0, #0x70 ; 'p'
41D9B2:  POP             {R4,R6,R7,PC}
41D9B4:  MOVS            R0, #0x71 ; 'q'
41D9B6:  POP             {R4,R6,R7,PC}
41D9B8:  MOVS            R0, #0x72 ; 'r'
41D9BA:  POP             {R4,R6,R7,PC}
41D9BC:  MOVS            R0, #0x73 ; 's'
41D9BE:  POP             {R4,R6,R7,PC}
41D9C0:  MOVS            R0, #0x74 ; 't'
41D9C2:  POP             {R4,R6,R7,PC}
41D9C4:  MOVS            R0, #0x75 ; 'u'
41D9C6:  POP             {R4,R6,R7,PC}
41D9C8:  MOVS            R0, #0x76 ; 'v'
41D9CA:  POP             {R4,R6,R7,PC}
41D9CC:  MOVS            R0, #0x77 ; 'w'
41D9CE:  POP             {R4,R6,R7,PC}
41D9D0:  MOVS            R0, #0x78 ; 'x'
41D9D2:  POP             {R4,R6,R7,PC}
41D9D4:  MOVS            R0, #0x79 ; 'y'
41D9D6:  POP             {R4,R6,R7,PC}
41D9D8:  MOVS            R0, #0x7A ; 'z'
41D9DA:  POP             {R4,R6,R7,PC}
41D9DC:  MOVS            R0, #0x7B ; '{'
41D9DE:  POP             {R4,R6,R7,PC}
41D9E0:  MOVS            R0, #0x7C ; '|'
41D9E2:  POP             {R4,R6,R7,PC}
41D9E4:  MOVS            R0, #0x7D ; '}'
41D9E6:  POP             {R4,R6,R7,PC}
41D9E8:  MOVS            R0, #0x7E ; '~'
41D9EA:  POP             {R4,R6,R7,PC}
41D9EC:  MOVS            R0, #0x7F
41D9EE:  POP             {R4,R6,R7,PC}
41D9F0:  MOVS            R0, #0x80
41D9F2:  POP             {R4,R6,R7,PC}
41D9F4:  MOVS            R0, #0x81
41D9F6:  POP             {R4,R6,R7,PC}
41D9F8:  MOVS            R0, #0x82
41D9FA:  POP             {R4,R6,R7,PC}
41D9FC:  MOVS            R0, #0x83
41D9FE:  POP             {R4,R6,R7,PC}
41DA00:  MOVS            R0, #0x84
41DA02:  POP             {R4,R6,R7,PC}
41DA04:  MOVS            R0, #0x85
41DA06:  POP             {R4,R6,R7,PC}
41DA08:  MOVS            R0, #0x86
41DA0A:  POP             {R4,R6,R7,PC}
41DA0C:  MOVS            R0, #0x87
41DA0E:  POP             {R4,R6,R7,PC}
41DA10:  MOVS            R0, #0x88
41DA12:  POP             {R4,R6,R7,PC}
41DA14:  MOVS            R0, #0x89
41DA16:  POP             {R4,R6,R7,PC}
41DA18:  MOVS            R0, #0x8A
41DA1A:  POP             {R4,R6,R7,PC}
41DA1C:  MOVS            R0, #0x8B
41DA1E:  POP             {R4,R6,R7,PC}
41DA20:  MOVS            R0, #0x8C
41DA22:  POP             {R4,R6,R7,PC}
41DA24:  MOVS            R0, #0x8D
41DA26:  POP             {R4,R6,R7,PC}
41DA28:  MOVS            R0, #0x8E
41DA2A:  POP             {R4,R6,R7,PC}
41DA2C:  MOVS            R0, #0x8F
41DA2E:  POP             {R4,R6,R7,PC}
41DA30:  MOVS            R0, #0x90
41DA32:  POP             {R4,R6,R7,PC}
41DA34:  MOVS            R0, #0x91
41DA36:  POP             {R4,R6,R7,PC}
41DA38:  MOVS            R0, #0x92
41DA3A:  POP             {R4,R6,R7,PC}
41DA3C:  MOVS            R0, #0x93
41DA3E:  POP             {R4,R6,R7,PC}
41DA40:  MOVS            R0, #0x94
41DA42:  POP             {R4,R6,R7,PC}
41DA44:  MOVS            R0, #0x95
41DA46:  POP             {R4,R6,R7,PC}
41DA48:  MOVS            R0, #0x96
41DA4A:  POP             {R4,R6,R7,PC}
41DA4C:  MOVS            R0, #0x97
41DA4E:  POP             {R4,R6,R7,PC}
41DA50:  MOVS            R0, #0x98
41DA52:  POP             {R4,R6,R7,PC}
41DA54:  MOVS            R0, #0x99
41DA56:  POP             {R4,R6,R7,PC}
41DA58:  MOVS            R0, #0x9A
41DA5A:  POP             {R4,R6,R7,PC}
41DA5C:  MOVS            R0, #0x9B
41DA5E:  POP             {R4,R6,R7,PC}
41DA60:  MOVS            R0, #0x9C
41DA62:  POP             {R4,R6,R7,PC}
41DA64:  MOVS            R0, #0x9D
41DA66:  POP             {R4,R6,R7,PC}
41DA68:  MOVS            R0, #0x9E
41DA6A:  POP             {R4,R6,R7,PC}
41DA6C:  MOVS            R0, #0x9F
41DA6E:  POP             {R4,R6,R7,PC}
41DA70:  MOVS            R0, #0xA0
41DA72:  POP             {R4,R6,R7,PC}
41DA74:  MOVS            R0, #0xA1
41DA76:  POP             {R4,R6,R7,PC}
41DA78:  MOVS            R0, #0xA2
41DA7A:  POP             {R4,R6,R7,PC}
41DA7C:  MOVS            R0, #0xA3
41DA7E:  POP             {R4,R6,R7,PC}
41DA80:  MOVS            R0, #0xA4
41DA82:  POP             {R4,R6,R7,PC}
41DA84:  MOVS            R0, #0xA5
41DA86:  POP             {R4,R6,R7,PC}
41DA88:  MOVS            R0, #0xA6
41DA8A:  POP             {R4,R6,R7,PC}
41DA8C:  MOVS            R0, #0xA7
41DA8E:  POP             {R4,R6,R7,PC}
41DA90:  MOVS            R0, #0xA8
41DA92:  POP             {R4,R6,R7,PC}
41DA94:  MOVS            R0, #0xA9
41DA96:  POP             {R4,R6,R7,PC}
41DA98:  MOVS            R0, #0xAA
41DA9A:  POP             {R4,R6,R7,PC}
41DA9C:  MOVS            R0, #0xAB
41DA9E:  POP             {R4,R6,R7,PC}
41DAA0:  MOVS            R0, #0xAC
41DAA2:  POP             {R4,R6,R7,PC}
41DAA4:  MOVS            R0, #0xAD
41DAA6:  POP             {R4,R6,R7,PC}
41DAA8:  MOVS            R0, #0xAE
41DAAA:  POP             {R4,R6,R7,PC}
41DAAC:  MOVS            R0, #0xAF
41DAAE:  POP             {R4,R6,R7,PC}
41DAB0:  MOVS            R0, #0xB0
41DAB2:  POP             {R4,R6,R7,PC}
41DAB4:  MOVS            R0, #0xB1
41DAB6:  POP             {R4,R6,R7,PC}
