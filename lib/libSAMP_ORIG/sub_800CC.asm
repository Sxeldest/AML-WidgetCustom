; =========================================================
; Game Engine Function: sub_800CC
; Address            : 0x800CC - 0x80200
; =========================================================

800CC:  PUSH            {R4,R6,R7,LR}
800CE:  ADD             R7, SP, #8
800D0:  SUB             SP, SP, #8
800D2:  LDR             R0, =(byte_1A49D0 - 0x800D8)
800D4:  ADD             R0, PC; byte_1A49D0
800D6:  LDRB            R0, [R0]
800D8:  DMB.W           ISH
800DC:  LSLS            R0, R0, #0x1F
800DE:  BEQ             loc_801DC
800E0:  LDR             R0, =(aSvDbgPlaybackB - 0x800E6); "[sv:dbg:playback:bassinithook] : module"... ...
800E2:  ADD             R0, PC; "[sv:dbg:playback:bassinithook] : module"...
800E4:  BL              sub_80664
800E8:  LDR             R0, =(off_114AA4 - 0x800EE)
800EA:  ADD             R0, PC; off_114AA4
800EC:  LDR             R4, [R0]; off_1ABEE4
800EE:  LDR             R2, [R4]
800F0:  MOVS            R0, #0x2A ; '*'
800F2:  MOVS            R1, #1
800F4:  BLX             R2
800F6:  LDR             R2, [R4]
800F8:  MOVS            R0, #0
800FA:  MOV.W           R1, #0x384
800FE:  BLX             R2
80100:  LDR             R2, [R4]
80102:  MOVS            R0, #1
80104:  MOVS            R1, #0xA
80106:  BLX             R2
80108:  LDR             R2, [R4]
8010A:  MOVS            R0, #0x18
8010C:  MOVS            R1, #4
8010E:  BLX             R2
80110:  LDR             R2, [R4]
80112:  MOVS            R0, #0xA
80114:  MOVS            R1, #3
80116:  BLX             R2
80118:  LDR             R0, =(aSvDbgPlaybackB_0 - 0x8011E); "[sv:dbg:playback:bassinithook] : callin"... ...
8011A:  ADD             R0, PC; "[sv:dbg:playback:bassinithook] : callin"...
8011C:  MOVW            R1, #0xBB80
80120:  MOVS            R2, #6
80122:  BL              sub_80664
80126:  LDR             R0, =(off_114A9C - 0x8012C)
80128:  ADD             R0, PC; off_114A9C
8012A:  LDR             R0, [R0]; off_1ABED8
8012C:  LDR             R3, [R0]
8012E:  MOV.W           R0, #0xFFFFFFFF
80132:  MOVW            R1, #0xBB80
80136:  MOVS            R2, #6
80138:  BLX             R3
8013A:  CBNZ            R0, loc_80150
8013C:  LDR             R0, =(off_114CB0 - 0x80142)
8013E:  ADD             R0, PC; off_114CB0
80140:  LDR             R0, [R0]; off_1ABF0C
80142:  LDR             R0, [R0]
80144:  BLX             R0
80146:  MOV             R1, R0
80148:  LDR             R0, =(aSvErrPlaybackB - 0x8014E); "[sv:err:playback:bassinithook] : failed"... ...
8014A:  ADD             R0, PC; "[sv:err:playback:bassinithook] : failed"...
8014C:  BL              sub_80664
80150:  LDR             R0, =(off_114CAC - 0x80156)
80152:  ADD             R0, PC; off_114CAC
80154:  LDR             R0, [R0]; off_1ABEF0
80156:  LDR             R4, [R0]
80158:  MOVS            R0, #0
8015A:  MOVS            R1, #0
8015C:  STR             R0, [SP,#0x10+var_10]
8015E:  MOVS            R0, #0
80160:  MOVS            R2, #0
80162:  MOV             R3, #0xFFFFFFFE
80166:  BLX             R4
80168:  MOV             R4, R0
8016A:  LDR             R0, =(dword_1A49BC - 0x80170)
8016C:  ADD             R0, PC; dword_1A49BC
8016E:  STR             R4, [R0]
80170:  CBZ             R4, loc_801BC
80172:  LDR             R0, =(off_114CF4 - 0x80178)
80174:  ADD             R0, PC; off_114CF4
80176:  LDR             R0, [R0]; off_1ABF10
80178:  LDR             R3, [R0]
8017A:  MOV.W           R0, #0x3F800000
8017E:  MOV.W           R1, #0x3F800000
80182:  MOVS            R2, #0
80184:  BLX             R3
80186:  LDR             R0, =(off_114CF8 - 0x8018C)
80188:  ADD             R0, PC; off_114CF8
8018A:  LDR             R0, [R0]; off_1ABF14
8018C:  LDR.W           R12, [R0]
80190:  LDR             R0, =(dword_1A49C4 - 0x80196)
80192:  ADD             R0, PC; dword_1A49C4
80194:  MOV             R1, R0
80196:  MOV             R2, R0
80198:  MOV             R3, R0
8019A:  BLX             R12
8019C:  LDR             R0, =(off_114CFC - 0x801A2)
8019E:  ADD             R0, PC; off_114CFC
801A0:  LDR             R0, [R0]; off_1ABF18
801A2:  LDR             R0, [R0]
801A4:  BLX             R0
801A6:  LDR             R0, =(aSvDbgPlaybackB_1 - 0x801AC); "[sv:dbg:playback:bassinithook] : module"... ...
801A8:  ADD             R0, PC; "[sv:dbg:playback:bassinithook] : module"...
801AA:  BL              sub_80664
801AE:  LDR             R0, =(byte_1A49B4 - 0x801B6)
801B0:  MOVS            R1, #1
801B2:  ADD             R0, PC; byte_1A49B4
801B4:  STRB            R1, [R0]
801B6:  BL              sub_805D4
801BA:  B               loc_801D0
801BC:  LDR             R0, =(off_114CB0 - 0x801C2)
801BE:  ADD             R0, PC; off_114CB0
801C0:  LDR             R0, [R0]; off_1ABF0C
801C2:  LDR             R0, [R0]
801C4:  BLX             R0
801C6:  MOV             R1, R0
801C8:  LDR             R0, =(aSvErrPlaybackI - 0x801CE); "[sv:err:playback:init] : failed to crea"... ...
801CA:  ADD             R0, PC; "[sv:err:playback:init] : failed to crea"...
801CC:  BL              sub_80664
801D0:  CMP             R4, #0
801D2:  IT NE
801D4:  MOVNE           R4, #1
801D6:  MOV             R0, R4
801D8:  ADD             SP, SP, #8
801DA:  POP             {R4,R6,R7,PC}
801DC:  LDR             R0, =(byte_1A49D0 - 0x801E2)
801DE:  ADD             R0, PC; byte_1A49D0 ; __guard *
801E0:  BLX             j___cxa_guard_acquire
801E4:  CMP             R0, #0
801E6:  BEQ.W           loc_800E0
801EA:  LDR             R1, =(dword_1A49C4 - 0x801F4)
801EC:  MOVS            R2, #0
801EE:  LDR             R0, =(byte_1A49D0 - 0x801F6)
801F0:  ADD             R1, PC; dword_1A49C4
801F2:  ADD             R0, PC; byte_1A49D0 ; __guard *
801F4:  STRD.W          R2, R2, [R1]
801F8:  STR             R2, [R1,#(dword_1A49CC - 0x1A49C4)]
801FA:  BLX             j___cxa_guard_release
801FE:  B               loc_800E0
