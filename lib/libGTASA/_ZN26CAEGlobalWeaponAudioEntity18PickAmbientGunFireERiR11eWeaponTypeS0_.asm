; =========================================================
; Game Engine Function: _ZN26CAEGlobalWeaponAudioEntity18PickAmbientGunFireERiR11eWeaponTypeS0_
; Address            : 0x398200 - 0x398254
; =========================================================

398200:  PUSH            {R4-R7,LR}
398202:  ADD             R7, SP, #0xC
398204:  PUSH.W          {R11}
398208:  MOV             R6, R1
39820A:  MOVS            R0, #0; this
39820C:  MOVS            R1, #1; int
39820E:  MOV             R4, R3
398210:  MOV             R5, R2
398212:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
398216:  CMP             R0, #1
398218:  BEQ             loc_398232
39821A:  CBNZ            R0, loc_39824E
39821C:  MOVS            R0, #byte_4; this
39821E:  MOVS            R1, #0xE; int
398220:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
398224:  STR             R0, [R6]
398226:  MOVS            R0, #0x1E
398228:  STR             R0, [R5]
39822A:  MOVS            R0, #0x5A ; 'Z'
39822C:  MOV.W           R1, #0x15E
398230:  B               loc_398248
398232:  MOVS            R0, #(stderr+2); this
398234:  MOVS            R1, #4; int
398236:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
39823A:  STR             R0, [R6]
39823C:  MOVS            R0, #0x16
39823E:  STR             R0, [R5]
398240:  MOV.W           R0, #(elf_hash_bucket+0xF8); this
398244:  MOV.W           R1, #0x4B0; int
398248:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
39824C:  STR             R0, [R4]
39824E:  POP.W           {R11}
398252:  POP             {R4-R7,PC}
