; =========================================================
; Game Engine Function: _ZN6CWorld14SetWorldOnFireEffffP7CEntity
; Address            : 0x42ADB4 - 0x42AE30
; =========================================================

42ADB4:  PUSH            {R7,LR}
42ADB6:  MOV             R7, SP
42ADB8:  SUB             SP, SP, #0x28
42ADBA:  ADD.W           R12, SP, #0x30+var_14
42ADBE:  MOV.W           LR, #1
42ADC2:  STM.W           R12, {R0-R2}
42ADC6:  MOV.W           R12, #0
42ADCA:  STRD.W          R12, LR, [SP,#0x30+var_30]
42ADCE:  STRD.W          R12, R12, [SP,#0x30+var_28]
42ADD2:  STRD.W          LR, R12, [SP,#0x30+var_20]
42ADD6:  STR.W           R12, [SP,#0x30+var_18]
42ADDA:  BLX             j__ZN6CWorld22TestSphereAgainstWorldE7CVectorfP7CEntitybbbbbb; CWorld::TestSphereAgainstWorld(CVector,float,CEntity *,bool,bool,bool,bool,bool,bool)
42ADDE:  CBZ             R0, loc_42ADF2
42ADE0:  LDR             R0, =(gFireManager_ptr - 0x42ADEC)
42ADE2:  ADD             R1, SP, #0x30+var_14; CVector *
42ADE4:  MOV.W           R2, #0x40000000; float
42ADE8:  ADD             R0, PC; gFireManager_ptr
42ADEA:  LDR             R0, [R0]; gFireManager ; this
42ADEC:  BLX             j__ZN12CFireManager18GetNumFiresInRangeEP7CVectorf; CFireManager::GetNumFiresInRange(CVector *,float)
42ADF0:  CBZ             R0, loc_42ADF6
42ADF2:  ADD             SP, SP, #0x28 ; '('
42ADF4:  POP             {R7,PC}
42ADF6:  ADD             R3, SP, #0x30+var_14
42ADF8:  LDR.W           R12, =(gFireManager_ptr - 0x42AE08)
42ADFC:  MOV.W           LR, #1
42AE00:  MOVS            R0, #0x64 ; 'd'
42AE02:  LDM             R3, {R1-R3}
42AE04:  ADD             R12, PC; gFireManager_ptr
42AE06:  STR.W           LR, [SP,#0x30+var_1C]
42AE0A:  STR             R0, [SP,#0x30+var_20]
42AE0C:  MOVW            R0, #0x1B58
42AE10:  STR             R0, [SP,#0x30+var_24]
42AE12:  MOVS            R0, #0
42AE14:  STRD.W          LR, R0, [SP,#0x30+var_2C]
42AE18:  LDR.W           R0, [R12]; gFireManager
42AE1C:  MOV             R12, #0x3F4CCCCD
42AE24:  STR.W           R12, [SP,#0x30+var_30]
42AE28:  BLX             j__ZN12CFireManager9StartFireE7CVectorfhP7CEntityjah; CFireManager::StartFire(CVector,float,uchar,CEntity *,uint,signed char,uchar)
42AE2C:  ADD             SP, SP, #0x28 ; '('
42AE2E:  POP             {R7,PC}
