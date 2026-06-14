; =========================================================
; Game Engine Function: _ZN8CGarages4SaveEv
; Address            : 0x48AFA8 - 0x48B34E
; =========================================================

48AFA8:  PUSH            {R4-R7,LR}
48AFAA:  ADD             R7, SP, #0xC
48AFAC:  PUSH.W          {R8-R11}
48AFB0:  SUB             SP, SP, #0x5C
48AFB2:  LDR             R0, =(__stack_chk_guard_ptr - 0x48AFB8)
48AFB4:  ADD             R0, PC; __stack_chk_guard_ptr
48AFB6:  LDR             R0, [R0]; __stack_chk_guard
48AFB8:  LDR             R0, [R0]; this
48AFBA:  STR             R0, [SP,#0x78+var_20]
48AFBC:  BLX             j__ZN8CGarages29CloseHideOutGaragesBeforeSaveEv; CGarages::CloseHideOutGaragesBeforeSave(void)
48AFC0:  MOVS            R0, #4; byte_count
48AFC2:  BLX             malloc
48AFC6:  MOV             R4, R0
48AFC8:  LDR             R0, =(_ZN8CGarages10NumGaragesE_ptr - 0x48AFD0)
48AFCA:  MOVS            R1, #byte_4; void *
48AFCC:  ADD             R0, PC; _ZN8CGarages10NumGaragesE_ptr
48AFCE:  LDR             R0, [R0]; CGarages::NumGarages ...
48AFD0:  LDR             R0, [R0]; CGarages::NumGarages
48AFD2:  STR             R0, [R4]
48AFD4:  MOV             R0, R4; this
48AFD6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48AFDA:  MOV             R0, R4; p
48AFDC:  BLX             free
48AFE0:  LDR             R0, =(_ZN8CGarages12BombsAreFreeE_ptr - 0x48AFE8)
48AFE2:  MOVS            R1, #(stderr+1); void *
48AFE4:  ADD             R0, PC; _ZN8CGarages12BombsAreFreeE_ptr
48AFE6:  LDR             R0, [R0]; this
48AFE8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48AFEC:  LDR             R0, =(_ZN8CGarages15RespraysAreFreeE_ptr - 0x48AFF4)
48AFEE:  MOVS            R1, #(stderr+1); void *
48AFF0:  ADD             R0, PC; _ZN8CGarages15RespraysAreFreeE_ptr
48AFF2:  LDR             R0, [R0]; this
48AFF4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48AFF8:  LDR             R0, =(_ZN8CGarages10NoRespraysE_ptr - 0x48B000)
48AFFA:  MOVS            R1, #(stderr+1); void *
48AFFC:  ADD             R0, PC; _ZN8CGarages10NoRespraysE_ptr
48AFFE:  LDR             R0, [R0]; this
48B000:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B004:  MOVS            R0, #4; byte_count
48B006:  BLX             malloc
48B00A:  MOV             R4, R0
48B00C:  LDR             R0, =(_ZN8CGarages13CarsCollectedE_ptr - 0x48B014)
48B00E:  MOVS            R1, #byte_4; void *
48B010:  ADD             R0, PC; _ZN8CGarages13CarsCollectedE_ptr
48B012:  LDR             R0, [R0]; CGarages::CarsCollected ...
48B014:  LDR             R0, [R0]; CGarages::CarsCollected
48B016:  STR             R0, [R4]
48B018:  MOV             R0, R4; this
48B01A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B01E:  MOV             R0, R4; p
48B020:  BLX             free
48B024:  MOVS            R0, #4; byte_count
48B026:  BLX             malloc
48B02A:  MOV             R4, R0
48B02C:  LDR             R0, =(_ZN8CGarages17BankVansCollectedE_ptr - 0x48B034)
48B02E:  MOVS            R1, #byte_4; void *
48B030:  ADD             R0, PC; _ZN8CGarages17BankVansCollectedE_ptr
48B032:  LDR             R0, [R0]; CGarages::BankVansCollected ...
48B034:  LDR             R0, [R0]; CGarages::BankVansCollected
48B036:  STR             R0, [R4]
48B038:  MOV             R0, R4; this
48B03A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B03E:  MOV             R0, R4; p
48B040:  BLX             free
48B044:  MOVS            R0, #4; byte_count
48B046:  BLX             malloc
48B04A:  MOV             R4, R0
48B04C:  LDR             R0, =(_ZN8CGarages19PoliceCarsCollectedE_ptr - 0x48B054)
48B04E:  MOVS            R1, #byte_4; void *
48B050:  ADD             R0, PC; _ZN8CGarages19PoliceCarsCollectedE_ptr
48B052:  LDR             R0, [R0]; CGarages::PoliceCarsCollected ...
48B054:  LDR             R0, [R0]; CGarages::PoliceCarsCollected
48B056:  STR             R0, [R4]
48B058:  MOV             R0, R4; this
48B05A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B05E:  MOV             R0, R4; p
48B060:  BLX             free
48B064:  MOVS            R0, #4; byte_count
48B066:  BLX             malloc
48B06A:  MOV             R4, R0
48B06C:  LDR             R0, =(_ZN8CGarages17CarTypesCollectedE_ptr - 0x48B074)
48B06E:  MOVS            R1, #byte_4; void *
48B070:  ADD             R0, PC; _ZN8CGarages17CarTypesCollectedE_ptr
48B072:  LDR             R5, [R0]; CGarages::CarTypesCollected ...
48B074:  LDR             R0, [R5]; CGarages::CarTypesCollected
48B076:  STR             R0, [R4]
48B078:  MOV             R0, R4; this
48B07A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B07E:  MOV             R0, R4; p
48B080:  BLX             free
48B084:  MOVS            R0, #4; byte_count
48B086:  BLX             malloc
48B08A:  MOV             R4, R0
48B08C:  LDR             R0, [R5,#(dword_7A4DC4 - 0x7A4DC0)]
48B08E:  STR             R0, [R4]
48B090:  MOV             R0, R4; this
48B092:  MOVS            R1, #byte_4; void *
48B094:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B098:  MOV             R0, R4; p
48B09A:  BLX             free
48B09E:  MOVS            R0, #4; byte_count
48B0A0:  BLX             malloc
48B0A4:  MOV             R4, R0
48B0A6:  LDR             R0, [R5,#(dword_7A4DC8 - 0x7A4DC0)]
48B0A8:  STR             R0, [R4]
48B0AA:  MOV             R0, R4; this
48B0AC:  MOVS            R1, #byte_4; void *
48B0AE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B0B2:  MOV             R0, R4; p
48B0B4:  BLX             free
48B0B8:  MOVS            R0, #4; byte_count
48B0BA:  BLX             malloc
48B0BE:  MOV             R4, R0
48B0C0:  LDR             R0, [R5,#(dword_7A4DCC - 0x7A4DC0)]
48B0C2:  STR             R0, [R4]
48B0C4:  MOV             R0, R4; this
48B0C6:  MOVS            R1, #byte_4; void *
48B0C8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B0CC:  MOV             R0, R4; p
48B0CE:  BLX             free
48B0D2:  MOVS            R0, #4; byte_count
48B0D4:  BLX             malloc
48B0D8:  MOV             R4, R0
48B0DA:  LDR             R0, =(_ZN8CGarages19LastTimeHelpMessageE_ptr - 0x48B0E2)
48B0DC:  MOVS            R1, #byte_4; void *
48B0DE:  ADD             R0, PC; _ZN8CGarages19LastTimeHelpMessageE_ptr
48B0E0:  LDR             R0, [R0]; CGarages::LastTimeHelpMessage ...
48B0E2:  LDR             R0, [R0]; CGarages::LastTimeHelpMessage
48B0E4:  STR             R0, [R4]
48B0E6:  MOV             R0, R4; this
48B0E8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B0EC:  MOV             R0, R4; p
48B0EE:  BLX             free
48B0F2:  LDR             R0, =(_ZN8CGarages16aCarsInSafeHouseE_ptr - 0x48B0FA)
48B0F4:  MOVS            R5, #0
48B0F6:  ADD             R0, PC; _ZN8CGarages16aCarsInSafeHouseE_ptr
48B0F8:  LDR.W           R8, [R0]; CGarages::aCarsInSafeHouse ...
48B0FC:  MOVS            R0, #0x40 ; '@'; byte_count
48B0FE:  ADD.W           R6, R8, R5
48B102:  BLX             malloc
48B106:  MOV             R4, R0
48B108:  MOV             R0, R6
48B10A:  VLD1.8          {D16-D17}, [R0]!
48B10E:  ADD.W           R1, R6, #0x20 ; ' '
48B112:  VLD1.8          {D20-D21}, [R0]
48B116:  ADD.W           R0, R6, #0x30 ; '0'
48B11A:  VLD1.8          {D22-D23}, [R0]
48B11E:  ADD.W           R0, R4, #0x30 ; '0'
48B122:  VLD1.8          {D18-D19}, [R1]
48B126:  MOVS            R1, #dword_40; void *
48B128:  VST1.8          {D22-D23}, [R0]
48B12C:  ADD.W           R0, R4, #0x20 ; ' '
48B130:  VST1.8          {D18-D19}, [R0]
48B134:  MOV             R0, R4
48B136:  VST1.8          {D16-D17}, [R0]!
48B13A:  VST1.8          {D20-D21}, [R0]
48B13E:  MOV             R0, R4; this
48B140:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B144:  MOV             R0, R4; p
48B146:  BLX             free
48B14A:  ADD.W           R5, R5, #0x100
48B14E:  CMP.W           R5, #0x1400
48B152:  BNE             loc_48B0FC
48B154:  LDR             R0, =(_ZN8CGarages16aCarsInSafeHouseE_ptr - 0x48B15C)
48B156:  MOVS            R5, #0x40 ; '@'
48B158:  ADD             R0, PC; _ZN8CGarages16aCarsInSafeHouseE_ptr
48B15A:  LDR.W           R8, [R0]; CGarages::aCarsInSafeHouse ...
48B15E:  MOVS            R0, #0x40 ; '@'; byte_count
48B160:  ADD.W           R6, R8, R5
48B164:  BLX             malloc
48B168:  MOV             R4, R0
48B16A:  MOV             R0, R6
48B16C:  VLD1.8          {D16-D17}, [R0]!
48B170:  ADD.W           R1, R6, #0x20 ; ' '
48B174:  VLD1.8          {D20-D21}, [R0]
48B178:  ADD.W           R0, R6, #0x30 ; '0'
48B17C:  VLD1.8          {D22-D23}, [R0]
48B180:  ADD.W           R0, R4, #0x30 ; '0'
48B184:  VLD1.8          {D18-D19}, [R1]
48B188:  MOVS            R1, #dword_40; void *
48B18A:  VST1.8          {D22-D23}, [R0]
48B18E:  ADD.W           R0, R4, #0x20 ; ' '
48B192:  VST1.8          {D18-D19}, [R0]
48B196:  MOV             R0, R4
48B198:  VST1.8          {D16-D17}, [R0]!
48B19C:  VST1.8          {D20-D21}, [R0]
48B1A0:  MOV             R0, R4; this
48B1A2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B1A6:  MOV             R0, R4; p
48B1A8:  BLX             free
48B1AC:  ADD.W           R5, R5, #0x100
48B1B0:  CMP.W           R5, #0x1440
48B1B4:  BNE             loc_48B15E
48B1B6:  LDR             R0, =(_ZN8CGarages16aCarsInSafeHouseE_ptr - 0x48B1BE)
48B1B8:  MOVS            R5, #0x80
48B1BA:  ADD             R0, PC; _ZN8CGarages16aCarsInSafeHouseE_ptr
48B1BC:  LDR.W           R8, [R0]; CGarages::aCarsInSafeHouse ...
48B1C0:  MOVS            R0, #0x40 ; '@'; byte_count
48B1C2:  ADD.W           R6, R8, R5
48B1C6:  BLX             malloc
48B1CA:  MOV             R4, R0
48B1CC:  MOV             R0, R6
48B1CE:  VLD1.8          {D16-D17}, [R0]!
48B1D2:  ADD.W           R1, R6, #0x20 ; ' '
48B1D6:  VLD1.8          {D20-D21}, [R0]
48B1DA:  ADD.W           R0, R6, #0x30 ; '0'
48B1DE:  VLD1.8          {D22-D23}, [R0]
48B1E2:  ADD.W           R0, R4, #0x30 ; '0'
48B1E6:  VLD1.8          {D18-D19}, [R1]
48B1EA:  MOVS            R1, #dword_40; void *
48B1EC:  VST1.8          {D22-D23}, [R0]
48B1F0:  ADD.W           R0, R4, #0x20 ; ' '
48B1F4:  VST1.8          {D18-D19}, [R0]
48B1F8:  MOV             R0, R4
48B1FA:  VST1.8          {D16-D17}, [R0]!
48B1FE:  VST1.8          {D20-D21}, [R0]
48B202:  MOV             R0, R4; this
48B204:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B208:  MOV             R0, R4; p
48B20A:  BLX             free
48B20E:  ADD.W           R5, R5, #0x100
48B212:  CMP.W           R5, #0x1480
48B216:  BNE             loc_48B1C0
48B218:  LDR             R0, =(_ZN8CGarages16aCarsInSafeHouseE_ptr - 0x48B220)
48B21A:  MOVS            R5, #0xC0
48B21C:  ADD             R0, PC; _ZN8CGarages16aCarsInSafeHouseE_ptr
48B21E:  LDR.W           R8, [R0]; CGarages::aCarsInSafeHouse ...
48B222:  MOVS            R0, #0x40 ; '@'; byte_count
48B224:  ADD.W           R6, R8, R5
48B228:  BLX             malloc
48B22C:  MOV             R4, R0
48B22E:  MOV             R0, R6
48B230:  VLD1.8          {D16-D17}, [R0]!
48B234:  ADD.W           R1, R6, #0x20 ; ' '
48B238:  VLD1.8          {D20-D21}, [R0]
48B23C:  ADD.W           R0, R6, #0x30 ; '0'
48B240:  VLD1.8          {D22-D23}, [R0]
48B244:  ADD.W           R0, R4, #0x30 ; '0'
48B248:  VLD1.8          {D18-D19}, [R1]
48B24C:  MOVS            R1, #dword_40; void *
48B24E:  VST1.8          {D22-D23}, [R0]
48B252:  ADD.W           R0, R4, #0x20 ; ' '
48B256:  VST1.8          {D18-D19}, [R0]
48B25A:  MOV             R0, R4
48B25C:  VST1.8          {D16-D17}, [R0]!
48B260:  VST1.8          {D20-D21}, [R0]
48B264:  MOV             R0, R4; this
48B266:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B26A:  MOV             R0, R4; p
48B26C:  BLX             free
48B270:  ADD.W           R5, R5, #0x100
48B274:  CMP.W           R5, #0x14C0
48B278:  BNE             loc_48B222
48B27A:  LDR             R0, =(_ZN8CGarages10NumGaragesE_ptr - 0x48B280)
48B27C:  ADD             R0, PC; _ZN8CGarages10NumGaragesE_ptr
48B27E:  LDR             R0, [R0]; CGarages::NumGarages ...
48B280:  LDR             R0, [R0]; CGarages::NumGarages
48B282:  CMP             R0, #0
48B284:  BEQ             loc_48B332
48B286:  LDR             R0, =(_ZN8CGarages8aGaragesE_ptr - 0x48B296)
48B288:  ADD             R1, SP, #0x78+var_70
48B28A:  ADD.W           R10, R1, #0x44 ; 'D'
48B28E:  ADD.W           R11, R1, #0x14
48B292:  ADD             R0, PC; _ZN8CGarages8aGaragesE_ptr
48B294:  ORR.W           R5, R1, #4
48B298:  MOV.W           R8, #0
48B29C:  ADD.W           R2, R1, #0x24 ; '$'
48B2A0:  LDR             R4, [R0]; CGarages::aGarages ...
48B2A2:  LDR             R0, =(_ZN8CGarages10NumGaragesE_ptr - 0x48B2AA)
48B2A4:  STR             R2, [SP,#0x78+var_74]
48B2A6:  ADD             R0, PC; _ZN8CGarages10NumGaragesE_ptr
48B2A8:  LDR.W           R9, [R0]; CGarages::NumGarages ...
48B2AC:  LDRB.W          R0, [R4,#0x4C]
48B2B0:  ADD.W           R1, R4, #0x44 ; 'D'; char *
48B2B4:  STRB.W          R0, [SP,#0x78+var_70]
48B2B8:  LDRB.W          R0, [R4,#0x4D]
48B2BC:  STRB.W          R0, [SP,#0x78+var_6F]
48B2C0:  LDRB.W          R0, [R4,#0x4E]
48B2C4:  STRB.W          R0, [SP,#0x78+var_6E]
48B2C8:  MOV             R0, R4
48B2CA:  VLD1.32         {D16-D17}, [R0]!
48B2CE:  VST1.32         {D16-D17}, [R5]
48B2D2:  VLD1.32         {D16-D17}, [R0]
48B2D6:  ADD.W           R0, R4, #0x20 ; ' '
48B2DA:  VST1.32         {D16-D17}, [R11]
48B2DE:  VLD1.32         {D16-D17}, [R0]
48B2E2:  LDR             R0, [SP,#0x78+var_74]
48B2E4:  VST1.32         {D16-D17}, [R0]
48B2E8:  LDR             R0, [R4,#0x30]
48B2EA:  STR             R0, [SP,#0x78+var_3C]
48B2EC:  LDR             R0, [R4,#0x34]
48B2EE:  STR             R0, [SP,#0x78+var_38]
48B2F0:  LDR             R0, [R4,#0x38]
48B2F2:  STR             R0, [SP,#0x78+var_34]
48B2F4:  LDR             R0, [R4,#0x3C]
48B2F6:  STR             R0, [SP,#0x78+var_30]
48B2F8:  MOV             R0, R10; char *
48B2FA:  BLX             strcpy
48B2FE:  LDRB.W          R0, [R4,#0x4F]
48B302:  STRB.W          R0, [SP,#0x78+var_24]
48B306:  MOVS            R0, #0x50 ; 'P'; byte_count
48B308:  BLX             malloc
48B30C:  ADD             R1, SP, #0x78+var_70; void *
48B30E:  MOVS            R2, #0x50 ; 'P'; size_t
48B310:  MOV             R6, R0
48B312:  BLX             memcpy_1
48B316:  MOV             R0, R6; this
48B318:  MOVS            R1, #dword_50; void *
48B31A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B31E:  MOV             R0, R6; p
48B320:  BLX             free
48B324:  LDR.W           R0, [R9]; CGarages::NumGarages
48B328:  ADD.W           R8, R8, #1
48B32C:  ADDS            R4, #0xD8
48B32E:  CMP             R8, R0
48B330:  BCC             loc_48B2AC
48B332:  LDR             R0, =(__stack_chk_guard_ptr - 0x48B33A)
48B334:  LDR             R1, [SP,#0x78+var_20]
48B336:  ADD             R0, PC; __stack_chk_guard_ptr
48B338:  LDR             R0, [R0]; __stack_chk_guard
48B33A:  LDR             R0, [R0]
48B33C:  SUBS            R0, R0, R1
48B33E:  ITTTT EQ
48B340:  MOVEQ           R0, #1
48B342:  ADDEQ           SP, SP, #0x5C ; '\'
48B344:  POPEQ.W         {R8-R11}
48B348:  POPEQ           {R4-R7,PC}
48B34A:  BLX             __stack_chk_fail
