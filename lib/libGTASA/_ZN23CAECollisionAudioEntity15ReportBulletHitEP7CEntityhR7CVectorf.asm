; =========================================================
; Game Engine Function: _ZN23CAECollisionAudioEntity15ReportBulletHitEP7CEntityhR7CVectorf
; Address            : 0x3943FC - 0x394456
; =========================================================

3943FC:  PUSH            {R4-R7,LR}
3943FE:  ADD             R7, SP, #0xC
394400:  PUSH.W          {R8}
394404:  MOV             R5, R0
394406:  LDR             R0, =(AEAudioHardware_ptr - 0x394410)
394408:  MOV             R6, R2
39440A:  MOV             R4, R1
39440C:  ADD             R0, PC; AEAudioHardware_ptr
39440E:  MOVS            R1, #0x1B; unsigned __int16
394410:  MOVS            R2, #3; __int16
394412:  MOV             R8, R3
394414:  LDR             R0, [R0]; AEAudioHardware ; this
394416:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
39441A:  CBZ             R0, loc_394450
39441C:  VLDR            S0, [R7,#arg_0]
394420:  CBZ             R4, loc_39443C
394422:  LDRB.W          R0, [R4,#0x3A]
394426:  AND.W           R0, R0, #7
39442A:  CMP             R0, #2
39442C:  BNE             loc_39443C
39442E:  LDR.W           R0, [R4,#0x5A4]
394432:  MOVS            R6, #0x3F ; '?'
394434:  CMP             R0, #0xA
394436:  IT EQ
394438:  MOVEQ           R6, #0xFFFFFFBC
39443C:  VMOV            R3, S0; float
394440:  UXTB            R1, R6; unsigned __int8
394442:  MOV             R0, R5; this
394444:  MOV             R2, R8; CVector *
394446:  POP.W           {R8}
39444A:  POP.W           {R4-R7,LR}
39444E:  B               _ZN23CAECollisionAudioEntity27PlayBulletHitCollisionSoundEhR7CVectorf; CAECollisionAudioEntity::PlayBulletHitCollisionSound(uchar,CVector &,float)
394450:  POP.W           {R8}
394454:  POP             {R4-R7,PC}
